// backend/src/services/configuracoesService.js
// Em vez de require("../database"), usamos require("../config/db")
const pool = require("../config/db");

/**
 * Parâmetros Gerais
 */
async function getParametrosPorModulo(modulo) {
  const sql = `SELECT chave, valor FROM parametros WHERE modulo = ? ORDER BY id ASC`;
  const [rows] = await pool.query(sql, [modulo]);
  const resultado = {};
  rows.forEach((row) => {
    resultado[row.chave] = row.valor;
  });
  return resultado;
}

async function upsertParametros(modulo, params) {
  const queries = [];

  for (const chave in params) {
    const valor = params[chave];
    // No MySQL: INSERT ... ON DUPLICATE KEY UPDATE ...
    const sql = `
      INSERT INTO parametros (modulo, chave, valor)
      VALUES (?, ?, ?)
      ON DUPLICATE KEY UPDATE valor = VALUES(valor), atualizado_em = NOW()
    `;
    queries.push(pool.query(sql, [modulo, chave, valor]));
  }

  await Promise.all(queries);
}

/**
 * Base de Destino
 */
async function getUltimaBaseDestino() {
  const sql = `
    SELECT id, versao_build, caminho_arquivo, carregado_em
      FROM base_destino
     ORDER BY id DESC
     LIMIT 1
  `;
  const [rows] = await pool.query(sql);
  return rows[0] || null;
}

async function insertBaseDestino(versao_build, caminho_arquivo) {
  const sql = `
    INSERT INTO base_destino (versao_build, caminho_arquivo)
    VALUES (?, ?)
  `;
  const [result] = await pool.query(sql, [versao_build, caminho_arquivo]);
  // Se quiser retornar o objeto completo, faça outro SELECT:
  const [rows] = await pool.query(
    `SELECT id, versao_build, caminho_arquivo, carregado_em FROM base_destino WHERE id = ?`,
    [result.insertId]
  );
  return rows[0];
}

module.exports = {
  getParametrosPorModulo,
  upsertParametros,
  getUltimaBaseDestino,
  insertBaseDestino,
};
