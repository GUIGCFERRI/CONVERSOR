// frontend/src/pages/Configuracoes.jsx
import React, { useState, useEffect } from "react";
import {
  fetchParametrosGeral,
  saveParametrosGeral,
  fetchBaseDestino,
  uploadBaseDestino,
} from "../services/configuracoes";

export default function Configuracoes() {
  // Controle das abas: "BASE" ou "GERAL"
  const [aba, setAba] = useState("BASE");

  // ESTADOS – Base de Destino
  const [versaoBuild, setVersaoBuild] = useState("");
  const [arquivoBase, setArquivoBase] = useState(null);
  const [baseAtual, setBaseAtual] = useState(null);

  // Mensagem de feedback para Base de Destino
  const [mensagemBase, setMensagemBase] = useState("");

  // ESTADOS – Geral
  const [backupPath, setBackupPath] = useState("");
  const [logRetention, setLogRetention] = useState("");
  const [maxFileSize, setMaxFileSize] = useState("");

  // Mensagem de feedback para Geral
  const [mensagemGeral, setMensagemGeral] = useState("");

  // Ao montar o componente, busca os valores atuais de ambas as abas
  useEffect(() => {
    async function carregarConfiguracoes() {
      // 1) BUSCA “GERAL”
      try {
        const resGeral = await fetchParametrosGeral();
        const dadosGeral = resGeral.data;
        // Os nomes das chaves são os mesmos que definimos no backend:
        //   backup_path, log_retention_days, max_file_size_mb
        setBackupPath(dadosGeral.backup_path || "");
        setLogRetention(dadosGeral.log_retention_days || "");
        setMaxFileSize(dadosGeral.max_file_size_mb || "");
      } catch (err) {
        // Se o backend retornar 404 ou não existir nada, ignora
        console.warn("Sem parâmetros ‘GERAL’ salvos ainda.", err);
      }

      // 2) BUSCA “BASE DE DESTINO”
      try {
        const resBase = await fetchBaseDestino();
        const dadosBase = resBase.data;
        setBaseAtual(dadosBase);
        setVersaoBuild(dadosBase.versao_build || "");
      } catch (err) {
        console.warn("Sem registro de ‘Base de Destino’ ainda.", err);
        setBaseAtual(null);
      }
    }

    carregarConfiguracoes();
  }, []);

  // ========== Handlers – BASE DE DESTINO ==========

  function onArquivoChange(event) {
    // Pega o arquivo selecionado
    setArquivoBase(event.target.files[0]);
  }

  async function onSalvarBase(e) {
    e.preventDefault();
    setMensagemBase("");

    // Validação mínima
    if (!versaoBuild.trim() || !arquivoBase) {
      setMensagemBase("Informe a versão e selecione um arquivo.");
      return;
    }

    const formData = new FormData();
    formData.append("versao_build", versaoBuild);
    formData.append("arquivo", arquivoBase);

    try {
      const res = await uploadBaseDestino(formData);
      // O backend retorna o objeto criado em base_destino
      setBaseAtual(res.data);
      setMensagemBase("Base de Destino salva com sucesso!");
      // Opcional: limpa o campo de input file para permitir novo upload (se precisar)
      setArquivoBase(null);
      // Se quiser limpar o input file na interface, você pode usar uma key dinâmica no <input type="file" />
    } catch (err) {
      console.error(err);
      setMensagemBase("Erro ao salvar a Base de Destino.");
    }
  }

  // ========== Handlers – GERAL ==========

  async function onSalvarGeral(e) {
    e.preventDefault();
    setMensagemGeral("");

    // Validação mínima
    if (!backupPath.trim() || !logRetention || !maxFileSize) {
      setMensagemGeral("Preencha todos os campos antes de salvar.");
      return;
    }

    const payload = {
      backup_path: backupPath,
      log_retention_days: logRetention,
      max_file_size_mb: maxFileSize,
    };

    try {
      await saveParametrosGeral(payload);
      setMensagemGeral("Parâmetros gerais salvos com sucesso!");
    } catch (err) {
      console.error(err);
      setMensagemGeral("Erro ao salvar parâmetros gerais.");
    }
  }

  return (
    <div className="p-6">
      {/* Título da página */}
      <h1 className="text-2xl font-bold mb-4">Configurações</h1>

      {/* Menu de abas */}
      <div className="border-b border-gray-200 mb-6">
        <nav className="-mb-px flex space-x-8">
          {/* Aba BASE DE DESTINO */}
          <button
            onClick={() => setAba("BASE")}
            className={`py-4 px-1 border-b-2 font-medium text-sm ${
              aba === "BASE"
                ? "border-blue-500 text-blue-600"
                : "border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300"
            }`}
          >
            Base de Destino
          </button>

          {/* Aba GERAL */}
          <button
            onClick={() => setAba("GERAL")}
            className={`py-4 px-1 border-b-2 font-medium text-sm ${
              aba === "GERAL"
                ? "border-blue-500 text-blue-600"
                : "border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300"
            }`}
          >
            Geral
          </button>
        </nav>
      </div>

      {/* ========== ABA “BASE DE DESTINO” ========== */}
      {aba === "BASE" && (
        <div className="space-y-8 max-w-xl mx-auto">
          {/* Card de informações da base atual */}
          {baseAtual && (() => {
            // Dentro do seu componente React:
            const absoluto     = baseAtual.caminho_arquivo;
            // Normaliza “\” para “/”
            const normalizado  = absoluto.replace(/\\/g, '/');
            // Captura a substring a partir de “uploads”
            const idxUploads   = normalizado.indexOf('uploads');
            const parteUploads = normalizado.substring(idxUploads); // e.g. "uploads/base_destino/branco_....FDB"

            // Monta a URL completa do backend (Express na porta 3001)
            const urlPublica = `http://localhost:3001/${parteUploads}`;

              return (
                <div className="bg-white shadow-md rounded-2xl p-6">
                  <h2 className="text-lg font-semibold text-gray-800 mb-4">
                    Detalhes da Base Atual
                  </h2>
                  <div className="space-y-2 text-gray-700">
                    <p>
                      <span className="font-medium">Versão atual:</span>{" "}
                      {baseAtual.versao_build}
                    </p>
                    <p className="flex items-center">
                      <span className="font-medium">Arquivo salvo:</span>
                      <a
                        href={urlPublica}
                        download
                        target="_blank"
                        rel="noopener noreferrer"
                        className="ml-2 text-blue-600 hover:underline"
                      >
                        Baixar arquivo
                      </a>
                    </p>
                    <p>
                      <span className="font-medium">Data de upload:</span>{" "}
                      {new Date(baseAtual.carregado_em).toLocaleString()}
                    </p>
                  </div>
                </div>
              );
            })
          ()}

          {/* Formulário para novo upload */}
          <form
            onSubmit={onSalvarBase}
            className="bg-white shadow-md rounded-2xl p-6 space-y-6"
          >
            <h2 className="text-lg font-semibold text-gray-800">Nova Base de Destino</h2>

            <div>
              <label className="block text-sm font-medium text-gray-600 mb-1">
                Versão de Build
              </label>
              <input
                type="text"
                value={versaoBuild}
                onChange={(e) => setVersaoBuild(e.target.value)}
                placeholder="Ex: 2025.2.6.0"
                className="block w-full rounded-lg border border-gray-300 px-4 py-2 text-gray-800 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-600 mb-1">
                Arquivo da Base de Destino
              </label>
              <input
                key={arquivoBase ? arquivoBase.name : "file-input"}
                type="file"
                accept=".gdb,.sqlite,.bak,.fdb"
                onChange={onArquivoChange}
                className="block w-full text-gray-700"
              />
            </div>

            {mensagemBase && (
              <p className="text-sm text-red-500">{mensagemBase}</p>
            )}

            <button
              type="submit"
              className="w-full inline-flex justify-center items-center rounded-lg bg-blue-600 px-6 py-3 text-white font-semibold hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 transition"
            >
              Salvar Base de Destino
            </button>
          </form>
        </div>
      )}

      {aba === "GERAL" && (
        <div className="space-y-8 max-w-xl mx-auto">
          {/* Formulário de configurações gerais */}
          <form
            onSubmit={onSalvarGeral}
            className="bg-white shadow-md rounded-2xl p-6 space-y-6"
          >
            <h2 className="text-lg font-semibold text-gray-800 mb-4">
              Configurações Gerais
            </h2>

            <div>
              <label className="block text-sm font-medium text-gray-600 mb-1">
                Caminho de Backup
              </label>
              <input
                type="text"
                value={backupPath}
                onChange={(e) => setBackupPath(e.target.value)}
                placeholder="/var/backups/conversions/"
                className="block w-full rounded-lg border border-gray-300 px-4 py-2 text-gray-800 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-600 mb-1">
                Retenção de Logs (dias)
              </label>
              <input
                type="number"
                value={logRetention}
                onChange={(e) => setLogRetention(e.target.value)}
                placeholder="30"
                className="block w-full rounded-lg border border-gray-300 px-4 py-2 text-gray-800 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-600 mb-1">
                Tamanho Máximo de Arquivo (MB)
              </label>
              <input
                type="number"
                value={maxFileSize}
                onChange={(e) => setMaxFileSize(e.target.value)}
                placeholder="500"
                className="block w-full rounded-lg border border-gray-300 px-4 py-2 text-gray-800 placeholder-gray-400 focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
            </div>

            {mensagemGeral && (
              <p className="text-sm text-green-600">{mensagemGeral}</p>
            )}

            <button
              type="submit"
              className="w-full inline-flex justify-center items-center rounded-lg bg-blue-600 px-6 py-3 text-white font-semibold hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 transition"
            >
              Salvar Configurações
            </button>
          </form>
        </div>
      )}
    </div>
  );
}
