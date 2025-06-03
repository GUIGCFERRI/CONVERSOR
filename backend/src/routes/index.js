const express = require('express');
const router = express.Router();
const authMiddleware = require('../middlewares/authMiddleware');
const requireRole = require('../middlewares/roleMiddleware');
const { forgotPassword, resetPassword } = require('../controllers/authController');
// Importa o controller de autenticação
const { login } = require('../controllers/authController');

// Rota de login
router.post('/login', login);

// Rota de teste (opcional)
router.get('/ping', (req, res) => {
  res.json({ message: 'pong' });
});
router.get('/secret', authMiddleware, (req, res) => {
    res.json({
      message: `Bem-vindo, ${req.user.email}`,
      perfil: req.user.role
    });
  });
  router.get('/admin-only', authMiddleware, requireRole('admin'), (req, res) => {
    res.json({ message: `Olá, Admin ${req.user.name}` });
  });
  router.post('/forgot-password', forgotPassword);
  router.post('/reset-password', resetPassword);


module.exports = router;
