const User = require('../models/user');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db = require('../config/db');
const { sendRecoveryEmail } = require('../services/emailService');

const login = async (req, res) => {
  const { email, password } = req.body;

  // Verifica se veio algo no body
  if (!email || !password) {
    return res.status(400).json({ error: 'Email e senha são obrigatórios' });
  }

  try {
    // Chama a versão async de findByEmail
    const user = await User.findByEmail(email);

    if (!user) {
      // usuário não existe
      return res.status(401).json({ error: 'Usuário não encontrado' });
    }

    // compara a senha criptografada
    const valid = bcrypt.compareSync(password, user.password);
    if (!valid) {
      return res.status(401).json({ error: 'Senha inválida' });
    }

    // gera o JWT normalmente
    const token = jwt.sign(
      {
        id: user.id,
        email: user.email,
        role: user.role,
        name: user.name
      },
      process.env.JWT_SECRET,
      { expiresIn: '1d' }
    );

    return res.json({
      message: 'Login realizado com sucesso',
      token,
      user: {
        id: user.id,
        name: user.name,
        email: user.email,
        role: user.role
      }
    });
  } catch (err) {
    console.error('[AuthController.login] erro no servidor:', err);
    return res.status(500).json({ error: 'Erro no servidor' });
  }
};

const crypto = require('crypto');

const forgotPassword = (req, res) => {
  const { email } = req.body;
  const token = crypto.randomBytes(32).toString('hex');
  const expiresAt = new Date(Date.now() + 3600000); // 1 hora

  const sql = `
    INSERT INTO password_resets (email, token, expires_at)
    VALUES (?, ?, ?)
  `;

  db.query(sql, [email, token, expiresAt], (err) => {
    if (err) return res.status(500).json({ error: 'Erro ao salvar token' });

    sendRecoveryEmail(email, token)
  .then(() => res.json({ message: 'E-mail de recuperação enviado com sucesso!' }))
  .catch(() => res.status(500).json({ error: 'Erro ao enviar o e-mail' }));

  });
};



const resetPassword = (req, res) => {
  const { token, newPassword } = req.body;

  const sql = `SELECT * FROM password_resets WHERE token = ? AND expires_at > NOW()`;

  db.query(sql, [token], (err, results) => {
    if (err || results.length === 0) {
      return res.status(400).json({ error: 'Token inválido ou expirado' });
    }

    const email = results[0].email;
    const hashed = bcrypt.hashSync(newPassword, 10);

    const updateUser = `UPDATE users SET password = ? WHERE email = ?`;
    db.query(updateUser, [hashed, email], (err2) => {
      if (err2) return res.status(500).json({ error: 'Erro ao atualizar senha' });

      const cleanup = `DELETE FROM password_resets WHERE email = ?`;
      db.query(cleanup, [email]);

      res.json({ message: 'Senha redefinida com sucesso' });
    });
  });
};

module.exports = {
  login,
  forgotPassword,
  resetPassword
};


