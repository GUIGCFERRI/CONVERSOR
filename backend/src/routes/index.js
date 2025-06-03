const express = require('express');
const router = express.Router();
const authMiddleware = require('../middlewares/authMiddleware');
const requireRole = require('../middlewares/roleMiddleware');
const { forgotPassword, resetPassword } = require('../controllers/authController');
// Importa o controller de autenticação
const { login } = require('../controllers/authController');
const userController = require('../controllers/userController');



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

// Rotas de usuários (admin-only)
router.get('/users', authMiddleware, requireRole('admin'), userController.getUsers);
router.post('/users', authMiddleware, requireRole('admin'), userController.createUser);
router.put('/users/:id', authMiddleware, requireRole('admin'), userController.updateUser);
router.delete('/users/:id', authMiddleware, requireRole('admin'), userController.deactivateUser);
router.put('/users/:id/activate', authMiddleware, requireRole('admin'), userController.activateUser);

module.exports = router;
