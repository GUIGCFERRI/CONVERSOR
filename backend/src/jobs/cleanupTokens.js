// backend/src/jobs/cleanupTokens.js
const db = require('../config/db');

const limparTokensExpirados = async () => {
  const sql = `DELETE FROM password_resets WHERE expires_at < NOW()`;

  try {
    // db.query retorna uma promise quando usamos mysql2/promise
    const [result] = await db.query(sql);
    console.log(`[CRON] Tokens expirados removidos: ${result.affectedRows}`);
  } catch (err) {
    console.error('[CRON] Erro ao limpar tokens expirados:', err);
  }
};

module.exports = limparTokensExpirados;
