// backend/src/config/db.js
require("dotenv").config();
const mysql = require("mysql2/promise");

const pool = mysql.createPool({
  host:     process.env.DB_HOST   || "localhost",
  user:     process.env.DB_USER   || "root",
  password: process.env.DB_PASSWORD || "",
  database: process.env.DB_NAME   || "conversor",
  port:     process.env.DB_PORT   ? parseInt(process.env.DB_PORT, 10) : 3306,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

(async () => {
  try {
    const conn = await pool.getConnection();
    console.log("✅ Conectado ao MySQL (promise‐based) com sucesso!");
    conn.release();
  } catch (err) {
    console.error("❌ Erro ao conectar ao MySQL:", err);
    process.exit(1);
  }
})();

module.exports = pool;
