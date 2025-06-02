const express = require('express');
const cors = require('cors');
const app = express();
require('dotenv').config();
require('./config/db'); // <- Aqui conecta com o MySQL

const routes = require('./routes');

app.use(cors());
app.use(express.json());
app.use('/api', routes);

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
