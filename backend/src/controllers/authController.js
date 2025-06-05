// backend/src/controllers/authController.js

const User = require('../models/user');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');
const db = require('../config/db');
const { sendRecoveryEmail } = require('../services/emailService');
const crypto = require('crypto');

const login = async (req, res) => {
  const { email, password } = req.body;

  // 1) Verifica se e-mail e senha vieram no body
  if (!email || !password) {
    return res.status(400).json({ error: 'Email e senha são obrigatórios' });
  }

  try {
    // 2) Busca o usuário pelo e-mail (findByEmail deve retornar o campo "ativo")
    const user = await User.findByEmail(email);

    // 3) Se não encontrou nenhum registro, retorna 401
    if (!user) {
      return res.status(401).json({ error: 'Usuário não encontrado' });
    }

    // Transformar o campo ativo numa flag booleana
    // Pode vir do MySQL como número 1/0 ou como string "1"/"0"
    const ativoNum = Number(user.ativo); // converte "0"/"1" ou 0/1 em número
    const estaAtivo = ativoNum === 1;

    // Se não estiver ativo, bloqueia
    if (!estaAtivo) {
      return res.status(403).json({
        error: 'Usuário inativo. Entre em contato com o administrador.'
      });
    }

    // 5) Compara a senha recebida com a senha criptografada no banco
    const senhaValida = bcrypt.compareSync(password, user.password);
    if (!senhaValida) {
      return res.status(401).json({ error: 'Senha inválida' });
    }

    // 6) Se chegou aqui, o usuário existe, está ativo e a senha bateu:
    //    gera o token JWT com payload mínimo
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

    // 7) Retorna o token e algumas informações do usuário (sem incluir senha)
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

const forgotPassword = (req, res) => {
  const { email } = req.body;
  const token = crypto.randomBytes(32).toString('hex');
  const expiresAt = new Date(Date.now() + 3600000); // expira em 1 hora

  const sql = `
    INSERT INTO password_resets (email, token, expires_at)
    VALUES (?, ?, ?)
  `;

  db.query(sql, [email, token, expiresAt], (err) => {
    if (err) {
      console.error('[AuthController.forgotPassword] erro ao salvar token:', err);
      return res.status(500).json({ error: 'Erro ao salvar token' });
    }

    sendRecoveryEmail(email, token)
      .then(() => res.json({ message: 'E-mail de recuperação enviado com sucesso!' }))
      .catch((emailErr) => {
        console.error('[AuthController.forgotPassword] erro ao enviar e-mail:', emailErr);
        return res.status(500).json({ error: 'Erro ao enviar o e-mail' });
      });
  });
};

const resetPassword = (req, res) => {
  const { token, newPassword } = req.body;

  // Verifica se o token ainda está válido
  const sql = `SELECT * FROM password_resets WHERE token = ? AND expires_at > NOW()`;

  db.query(sql, [token], (err, results) => {
    if (err) {
      console.error('[AuthController.resetPassword] erro ao buscar token:', err);
      return res.status(500).json({ error: 'Erro no servidor' });
    }
    if (results.length === 0) {
      return res.status(400).json({ error: 'Token inválido ou expirado' });
    }

    const email = results[0].email;
    const hashed = bcrypt.hashSync(newPassword, 10);

    // Atualiza a senha do usuário
    const updateUser = `UPDATE users SET password = ? WHERE email = ?`;
    db.query(updateUser, [hashed, email], (err2) => {
      if (err2) {
        console.error('[AuthController.resetPassword] erro ao atualizar senha:', err2);
        return res.status(500).json({ error: 'Erro ao atualizar senha' });
      }

      // Limpa todos os tokens de recuperação para este e-mail
      const cleanup = `DELETE FROM password_resets WHERE email = ?`;
      db.query(cleanup, [email], (cleanupErr) => {
        if (cleanupErr) {
          console.error('[AuthController.resetPassword] erro ao limpar tokens:', cleanupErr);
          // Não bloqueamos a resposta, já que a senha foi alterada. Informamos e seguimos.
        }
        return res.json({ message: 'Senha redefinida com sucesso' });
      });
    });
  });
};

module.exports = {
  login,
  forgotPassword,
  resetPassword
};
