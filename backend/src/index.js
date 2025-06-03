const express = require('express');
const cors = require('cors');
const app = express();
require('dotenv').config();
require('./config/db'); // <- Aqui conecta com o MySQL


const cron = require('node-cron');
const limparTokensExpirados = require('./jobs/cleanupTokens');
// Executa a cada hora: minuto 0 de cada hora
cron.schedule('0 * * * *', () => {
    console.log('[CRON] Executando limpeza de tokens...');
    limparTokensExpirados();
  });

const routes = require('./routes');

app.use(cors());
app.use(express.json());
app.use('/api', routes);

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});

