// backend/src/models/user.js
const db = require('../config/db'); // isso já é um pool promise‐based do mysql2

const User = {
  // NOTE: agora findByEmail retorna uma Promise que resolve em um objeto "user" ou undefined
  findByEmail: async (email) => {
    const sql = 'SELECT * FROM users WHERE email = ? LIMIT 1';
    try {
      const [rows /*, fields*/] = await db.query(sql, [email]);
      // se não achar, rows = []
      return rows[0] || null;
    } catch (err) {
      // relança o erro para o controller lidar
      throw err;
    }
  }
};

module.exports = User;
