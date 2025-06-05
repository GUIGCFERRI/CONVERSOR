// backend/src/controllers/userController.js
const db = require('../config/db'); // db é um pool criado com mysql2/promise
const bcrypt = require('bcryptjs');

// Listar todos os usuários
const getUsers = async (req, res) => {
  try {
    // Quando usamos mysql2/promise, db.query retorna [rows, fields]
    const [results] = await db.query('SELECT id, name, email, role, ativo FROM users');
    return res.json(results);
  } catch (err) {
    console.error('Erro ao buscar usuários:', err);
    return res.status(500).json({ error: 'Erro ao buscar usuários' });
  }
};

// Criar novo usuário
const createUser = async (req, res) => {
  try {
    const { name, email, password, role } = req.body;
    const hashed = bcrypt.hashSync(password, 10);
    const sql = 'INSERT INTO users (name, email, password, role) VALUES (?, ?, ?, ?)';
    await db.query(sql, [name, email, hashed, role]);
    return res.json({ message: 'Usuário criado com sucesso' });
  } catch (err) {
    console.error('Erro ao criar usuário:', err);
    return res.status(500).json({ error: 'Erro ao criar usuário' });
  }
};

// Editar usuário
const updateUser = async (req, res) => {
  try {
    const { name, role, password, ativo } = req.body;
    const { id } = req.params;
    const ativoFinal = typeof ativo === 'boolean' ? ativo : true;

    if (password && password.trim() !== '') {
      const hashed = bcrypt.hashSync(password, 10);
      const sql = 'UPDATE users SET name = ?, role = ?, ativo = ?, password = ? WHERE id = ?';
      await db.query(sql, [name, role, ativoFinal, hashed, id]);
      return res.json({ message: 'Usuário atualizado com nova senha' });
    } else {
      const sql = 'UPDATE users SET name = ?, role = ?, ativo = ? WHERE id = ?';
      await db.query(sql, [name, role, ativoFinal, id]);
      return res.json({ message: 'Usuário atualizado com sucesso' });
    }
  } catch (err) {
    console.error('Erro ao atualizar usuário:', err);
    return res.status(500).json({ error: 'Erro ao atualizar usuário' });
  }
};

// Remover (desativar) usuário
const deactivateUser = async (req, res) => {
  try {
    const { id } = req.params;
    const sql = 'UPDATE users SET ativo = FALSE WHERE id = ?';
    await db.query(sql, [id]);
    return res.json({ message: 'Usuário desativado' });
  } catch (err) {
    console.error('Erro ao desativar usuário:', err);
    return res.status(500).json({ error: 'Erro ao desativar usuário' });
  }
};

// Reativar usuário
const activateUser = async (req, res) => {
  try {
    const { id } = req.params;
    const sql = 'UPDATE users SET ativo = TRUE WHERE id = ?';
    await db.query(sql, [id]);
    return res.json({ message: 'Usuário ativado com sucesso' });
  } catch (err) {
    console.error('Erro ao ativar usuário:', err);
    return res.status(500).json({ error: 'Erro ao ativar usuário' });
  }
};

module.exports = {
  getUsers,
  createUser,
  updateUser,
  deactivateUser,
  activateUser,
};
