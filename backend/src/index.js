const express = require("express");
const cors = require("cors");
const path = require("path");
const app = express();
require("dotenv").config();
require("./config/db"); // conecta ao MySQL

const cron = require("node-cron");
const limparTokensExpirados = require("./jobs/cleanupTokens");
cron.schedule("0 * * * *", () => {
  console.log("[CRON] Executando limpeza de tokens...");
  limparTokensExpirados();
});

// Se você tiver um arquivo routes/index.js que reúne diversas outras rotas
const routes = require("./routes");

// E, especificamente, as rotas de Configurações:
const configuracoesRouter = require("./routes/configuracoes");

// Torna público qualquer arquivo em backend/src/uploads
app.use('/uploads', express.static(path.join(__dirname, 'uploads')));

app.use(cors());
app.use(express.json());

// Roteamento geral (caso tenha outros endpoints em routes/index.js)
app.use("/api", routes);

// Roteamento específico de Configurações
app.use("/api/configuracoes", configuracoesRouter);

const PORT = process.env.PORT || 3001; // exemplo usando 3001
app.listen(PORT, () => {
  console.log(`Servidor Express rodando em http://localhost:${PORT}`);
});
const sistemasRouter = require("./routes/sistemas");
app.use("/api/sistemas", sistemasRouter);
