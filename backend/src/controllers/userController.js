const db = require('../config/db');
const bcrypt = require('bcryptjs');

// Listar todos os usuários
const getUsers = (req, res) => {
  db.query('SELECT id, name, email, role, ativo FROM users', (err, results) => {
    if (err) return res.status(500).json({ error: 'Erro ao buscar usuários' });
    res.json(results);
  });
};

// Criar novo usuário
const createUser = (req, res) => {
  const { name, email, password, role } = req.body;
  const hashed = bcrypt.hashSync(password, 10);

  const sql = 'INSERT INTO users (name, email, password, role) VALUES (?, ?, ?, ?)';
  db.query(sql, [name, email, hashed, role], (err) => {
    if (err) return res.status(500).json({ error: 'Erro ao criar usuário' });
    res.json({ message: 'Usuário criado com sucesso' });
  });
};

// Editar usuário
const updateUser = (req, res) => {
  const { name, role, ativo } = req.body;
  const { id } = req.params;

  const sql = 'UPDATE users SET name = ?, role = ?, ativo = ? WHERE id = ?';
  db.query(sql, [name, role, ativo, id], (err) => {
    if (err) return res.status(500).json({ error: 'Erro ao atualizar usuário' });
    res.json({ message: 'Usuário atualizado com sucesso' });
  });
};

// Remover (desativar) usuário
const deactivateUser = (req, res) => {
  const { id } = req.params;

  const sql = 'UPDATE users SET ativo = FALSE WHERE id = ?';
  db.query(sql, [id], (err) => {
    if (err) return res.status(500).json({ error: 'Erro ao desativar usuário' });
    res.json({ message: 'Usuário desativado' });
  });
};
const activateUser = (req, res) => {
    const { id } = req.params;
  
    const sql = 'UPDATE users SET ativo = TRUE WHERE id = ?';
    db.query(sql, [id], (err) => {
      if (err) return res.status(500).json({ error: 'Erro ao ativar usuário' });
      res.json({ message: 'Usuário ativado com sucesso' });
    });
  };

module.exports = {
    getUsers,
    createUser,
    updateUser,
    deactivateUser,
    activateUser, 
  };