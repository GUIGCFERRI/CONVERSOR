const express = require("express");
const fs = require("fs");
const path = require("path");
const ini = require("ini");

const router = express.Router();

const BASE_SQL_DIR = path.join(__dirname, "../sql");

// GET /api/sistemas → lista nomes das subpastas
router.get("/", (req, res) => {
  try {
    const sistemas = fs
      .readdirSync(BASE_SQL_DIR, { withFileTypes: true })
      .filter((dirent) => dirent.isDirectory())
      .map((dirent) => dirent.name);
    res.json(sistemas);
  } catch (err) {
    console.error("Erro ao listar sistemas:", err);
    res.status(500).json({ error: "Erro ao listar sistemas." });
  }
});

// GET /api/sistemas/:nome → retorna arquivos .sql e Parametros.ini
router.get("/:nome", (req, res) => {
  const sistema = req.params.nome;
  const pastaSistema = path.join(BASE_SQL_DIR, sistema);

  if (!fs.existsSync(pastaSistema)) {
    return res.status(404).json({ error: "Sistema não encontrado." });
  }

  const arquivos = fs.readdirSync(pastaSistema);
  const resultado = {
    sql: {},
    parametros: {},
  };

  arquivos.forEach((arquivo) => {
    const filePath = path.join(pastaSistema, arquivo);
    const conteudo = fs.readFileSync(filePath, "utf8");

    if (arquivo.toLowerCase().endsWith(".sql")) {
      const nomeBase = path.basename(arquivo, ".sql");
      resultado.sql[nomeBase] = conteudo;
    }

    if (arquivo.toLowerCase() === "parametros.ini") {
      const iniObj = ini.parse(conteudo);
      resultado.parametros = iniObj.PARAMETROS || iniObj;
    }
  });

  res.json(resultado);
});
const multer = require("multer");
const upload = multer({ dest: "tmp/" });

router.post("/", upload.array("arquivos"), (req, res) => {
  const nomeSistema = req.body.nome;
  const pastaSistema = path.join(BASE_SQL_DIR, nomeSistema);

  if (!nomeSistema) {
    return res.status(400).json({ error: "Nome do sistema é obrigatório." });
  }

  if (fs.existsSync(pastaSistema)) {
    return res.status(409).json({ error: "Sistema já existe." });
  }

  fs.mkdirSync(pastaSistema, { recursive: true });

  req.files.forEach((file) => {
    const destino = path.join(pastaSistema, file.originalname);
    fs.renameSync(file.path, destino);
  });

  return res.json({ message: "Sistema criado com sucesso." });
});

router.put("/:nome/sql/:arquivo", express.text({ type: "*/*" }), (req, res) => {
    const nomeSistema = req.params.nome;
    const nomeArquivo = req.params.arquivo;
  
    const pastaSistema = path.join(BASE_SQL_DIR, nomeSistema);
    const caminhoArquivo = path.join(pastaSistema, `${nomeArquivo}.sql`);
  
    if (!fs.existsSync(caminhoArquivo)) {
      return res.status(404).json({ error: "Arquivo não encontrado." });
    }
  
    try {
      fs.writeFileSync(caminhoArquivo, req.body, "utf8");
      res.json({ message: "Arquivo SQL atualizado com sucesso." });
    } catch (err) {
      console.error("Erro ao salvar SQL:", err);
      res.status(500).json({ error: "Erro ao salvar o arquivo SQL." });
    }
  });
 

router.put("/:nome/ini", express.json(), (req, res) => {
  const nomeSistema = req.params.nome;
  const parametros = req.body;
  const pastaSistema = path.join(BASE_SQL_DIR, nomeSistema);
  const caminhoIni = path.join(pastaSistema, "Parametros.ini");

  if (!fs.existsSync(pastaSistema)) {
    return res.status(404).json({ error: "Sistema não encontrado." });
  }

  try {
    const iniData = ini.stringify({ PARAMETROS: parametros });
    fs.writeFileSync(caminhoIni, iniData, "utf8");
    res.json({ message: "Parametros.ini salvo com sucesso." });
  } catch (err) {
    console.error("Erro ao salvar .ini:", err);
    res.status(500).json({ error: "Erro ao salvar Parametros.ini" });
  }
});

module.exports = router;
