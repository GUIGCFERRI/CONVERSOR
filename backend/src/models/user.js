const db = require('../config/db');

const User = {
  findByEmail: (email, callback) => {
    const sql = 'SELECT * FROM users WHERE email = ? LIMIT 1';
    db.query(sql, [email], (err, results) => {
      if (err) return callback(err, null);
      callback(null, results[0]);
    });
  }
};

module.exports = User;
