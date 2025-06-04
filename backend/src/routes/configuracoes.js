// routes/configuracoes.js
const express = require("express");
const router = express.Router();
const {
  getParametrosGeral,
  salvarParametrosGeral,
  getBaseDestino,
  uploadBaseDestino,
  upload,
} = require("../controllers/configuracoesController");

// --- Rotas de Parâmetros “Geral” ---
router.get("/geral", getParametrosGeral);
router.post("/geral", express.json(), salvarParametrosGeral);

// --- Rotas de Base de Destino ---
router.get("/base", getBaseDestino);
router.post("/base", upload.single("arquivo"), uploadBaseDestino);

// Se quiser separar autenticação, por exemplo:
// router.use(authMiddleware);
// antes de qualquer rota para garantir que usuário autenticado.

module.exports = router;
