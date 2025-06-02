const User = require('../models/user');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');


const login = (req, res) => {
  const { email, password } = req.body;

  User.findByEmail(email, (err, user) => {
    if (err) return res.status(500).json({ error: 'Erro no servidor' });
    if (!user) return res.status(401).json({ error: 'Usuário não encontrado' });

    const valid = bcrypt.compareSync(password, user.password);
    if (!valid) return res.status(401).json({ error: 'Senha inválida' });

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

    res.json({
      message: 'Login realizado com sucesso',
      token,
      user: {
        id: user.id,
        name: user.name,
        email: user.email,
        role: user.role      
      }
    });
  });
};

module.exports = { login };
