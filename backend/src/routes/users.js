// backend/src/routes/users.js
const express = require('express');
const router = express.Router();

const authMiddleware = require('../middlewares/authMiddleware');
const requireRole    = require('../middlewares/roleMiddleware');
const userController = require('../controllers/userController');

// LISTAR TODOS OS USUÁRIOS (GET /api/users)
router.get(
  '/', 
  authMiddleware, 
  requireRole('admin'), 
  userController.getUsers
);

// CRIAR NOVO USUÁRIO (POST /api/users)
router.post(
  '/', 
  authMiddleware, 
  requireRole('admin'), 
  userController.createUser
);

// ATUALIZAR USUÁRIO (PUT /api/users/:id)
router.put(
  '/:id', 
  authMiddleware, 
  requireRole('admin'), 
  userController.updateUser
);

// “Deletar” (na verdade desativar) USUÁRIO (DELETE /api/users/:id)
router.delete(
  '/:id', 
  authMiddleware, 
  requireRole('admin'), 
  userController.deactivateUser
);

// Reativar usuário (PUT /api/users/:id/activate)
router.put(
  '/:id/activate',
  authMiddleware,
  requireRole('admin'),
  userController.activateUser
);

module.exports = router;
