// controllers/configuracoesController.js
const path = require("path");
const fs = require("fs");
const multer = require("multer");
const {
  getParametrosPorModulo,
  upsertParametros,
  getUltimaBaseDestino,
  insertBaseDestino,
} = require("../services/configuracoesService");

// CONFIGURAÇÃO DO MULTER PARA RECEBER O UPLOAD da base destino
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    // Aqui a pasta física onde iremos armazenar a base de destino
    // Você pode criar essa pasta manualmente (ex: /uploads/base_destino)
    // ou checar se existe e criar em tempo de execução:
    const dir = path.join(__dirname, "../uploads/base_destino");
    if (!fs.existsSync(dir)) {
      fs.mkdirSync(dir, { recursive: true });
    }
    cb(null, dir);
  },
  filename: function (req, file, cb) {
    // Vamos garantir um nome único (timestamp + nome original)
    const timestamp = Date.now();
    const ext = path.extname(file.originalname); // ex: ".gdb" ou ".sqlite"
    const basename = path.basename(file.originalname, ext).replace(/\s+/g, "_");
    cb(null, `${basename}_${timestamp}${ext}`);
  },
});

const upload = multer({ storage });

// ===============================
// 1) Rotas para Parâmetros “GERAL”
// ===============================

async function getParametrosGeral(req, res, next) {
  try {
    const dados = await getParametrosPorModulo("GERAL");
    // Se você ainda não tiver nenhum, devolve algum padrão:
    return res.json(dados);
  } catch (error) {
    next(error);
  }
}

async function salvarParametrosGeral(req, res, next) {
  try {
    // espera um JSON no corpo: { backup_path: "...", log_retention_days: "30", max_file_size_mb: "500" }
    const params = req.body || {};
    await upsertParametros("GERAL", params);
    return res.status(200).json({ message: "Parâmetros gerais salvos com sucesso." });
  } catch (error) {
    next(error);
  }
}

// ====================================
// 2) Rotas para Base de Destino (Upload)
// ====================================

// GET - obtém último registro de base_destino
async function getBaseDestino(req, res, next) {
  try {
    const registro = await getUltimaBaseDestino();
    if (!registro) {
      return res.status(404).json({ message: "Nenhuma base de destino encontrada." });
    }
    return res.json(registro);
  } catch (error) {
    next(error);
  }
}

// POST - faz upload do arquivo, salva na pasta e registra no banco
// A rota deve usar o middleware `upload.single("arquivo")`
// pois o campo de file input no front deverá ter name="arquivo"
async function uploadBaseDestino(req, res, next) {
  try {
    const { versao_build } = req.body;
    if (!versao_build) {
      return res.status(400).json({ message: "Campo 'versao_build' é obrigatório." });
    }
    if (!req.file) {
      return res.status(400).json({ message: "Arquivo de base de destino não enviado." });
    }
    // O multer já salvou o arquivo em uploads/base_destino/xxx.ext
    const caminhoFisico = req.file.path; // ex: 'backend/uploads/base_destino/alguma_coisa.gdb'
    const novoRegistro = await insertBaseDestino(versao_build, caminhoFisico);
    return res.status(201).json(novoRegistro);
  } catch (error) {
    next(error);
  }
}

module.exports = {
  getParametrosGeral,
  salvarParametrosGeral,
  getBaseDestino,
  uploadBaseDestino,
  upload, // exportando o multer configurado
};
