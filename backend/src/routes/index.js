// backend/src/routes/index.js
const express = require('express');
const router = express.Router();

const authMiddleware = require('../middlewares/authMiddleware');
const requireRole    = require('../middlewares/roleMiddleware');
const { login, forgotPassword, resetPassword } = require('../controllers/authController');

// Importa o arquivo users.js, que contém “/users”
const usersRouter = require('./users');

// Rotas de Auth / Login
router.post('/login', login);
router.post('/forgot-password', forgotPassword);
router.post('/reset-password', resetPassword);

// Rotas de teste (opcionais)
router.get('/ping', (req, res) => {
  res.json({ message: 'pong' });
});
router.get('/secret', authMiddleware, (req, res) => {
  res.json({ message: `Bem-vindo, ${req.user.email}`, perfil: req.user.role });
});
router.get('/admin-only', authMiddleware, requireRole('admin'), (req, res) => {
  res.json({ message: `Olá, Admin ${req.user.name}` });
});

// Monta o “usersRouter” em /api/users
router.use('/users', usersRouter);

module.exports = router;
