const db = require('../config/db');

const limparTokensExpirados = () => {
  const sql = `DELETE FROM password_resets WHERE expires_at < NOW()`;

  db.query(sql, (err, result) => {
    if (err) {
      console.error('[CRON] Erro ao limpar tokens expirados:', err);
    } else {
      console.log(`[CRON] Tokens expirados removidos: ${result.affectedRows}`);
    }
  });
};

module.exports = limparTokensExpirados;
