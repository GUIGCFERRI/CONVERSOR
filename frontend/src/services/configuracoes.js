// frontend/src/services/configuracoes.js
import axios from "axios";

//
// 1) PARÂMETROS “GERAL”
//

// Busca todos os parâmetros do módulo "GERAL"
export function fetchParametrosGeral() {
  return axios.get("/api/configuracoes/geral");
}

// Salva (insere/atualiza) parâmetros do módulo "GERAL"
// payload esperado: { backup_path: string, log_retention_days: string|number, max_file_size_mb: string|number }
export function saveParametrosGeral(payload) {
  return axios.post("/api/configuracoes/geral", payload, {
    headers: { "Content-Type": "application/json" },
  });
}

//
// 2) BASE DE DESTINO
//

// Busca o último registro de Base de Destino
export function fetchBaseDestino() {
  return axios.get("/api/configuracoes/base");
}

// Faz upload da Base de Destino (multipart/form-data)
// formData deve conter:
//   - versao_build: string
//   - arquivo: file
export function uploadBaseDestino(formData) {
  return axios.post("/api/configuracoes/base", formData, {
    headers: { "Content-Type": "multipart/form-data" },
  });
}
