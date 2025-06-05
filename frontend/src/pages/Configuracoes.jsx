import React, { useState, useEffect } from "react";
import {
  fetchParametrosGeral,
  saveParametrosGeral,
  fetchBaseDestino,
  uploadBaseDestino,
} from "../services/configuracoes";
import api from "../services/api";

export default function Configuracoes() {
  const [aba, setAba] = useState("BASE");

  const [versaoBuild, setVersaoBuild] = useState("");
  const [arquivoBase, setArquivoBase] = useState(null);
  const [baseAtual, setBaseAtual] = useState(null);
  const [mensagemBase, setMensagemBase] = useState("");

  const [backupPath, setBackupPath] = useState("");
  const [logRetention, setLogRetention] = useState("");
  const [maxFileSize, setMaxFileSize] = useState("");
  const [mensagemGeral, setMensagemGeral] = useState("");

  const [sistemas, setSistemas] = useState([]);
  const [sistemaSelecionado, setSistemaSelecionado] = useState("");
  const [dadosSistema, setDadosSistema] = useState(null);
  const [abaInterna, setAbaInterna] = useState("SQL");
  const [sqlEditavel, setSqlEditavel] = useState({});
  const [msgSqlSalvo, setMsgSqlSalvo] = useState({});
  const [parametrosEditaveis, setParametrosEditaveis] = useState({});
  const [msgIniSalvo, setMsgIniSalvo] = useState("");

  const [novoNome, setNovoNome] = useState("");
  const [arquivosUpload, setArquivosUpload] = useState([]);
  const [msgNovoSistema, setMsgNovoSistema] = useState("");

  useEffect(() => {
    async function carregarConfiguracoes() {
      try {
        const resGeral = await fetchParametrosGeral();
        const dadosGeral = resGeral.data;
        setBackupPath(dadosGeral.backup_path || "");
        setLogRetention(dadosGeral.log_retention_days || "");
        setMaxFileSize(dadosGeral.max_file_size_mb || "");
      } catch {}

      try {
        const resBase = await fetchBaseDestino();
        const dadosBase = resBase.data;
        setBaseAtual(dadosBase);
        setVersaoBuild(dadosBase.versao_build || "");
      } catch {
        setBaseAtual(null);
      }

      try {
        const resSistemas = await api.get("/sistemas");
        setSistemas(resSistemas.data);
      } catch {}
    }

    carregarConfiguracoes();
  }, []);

  function onArquivoChange(e) {
    setArquivoBase(e.target.files[0]);
  }

  async function onSalvarBase(e) {
    e.preventDefault();
    setMensagemBase("");

    if (!versaoBuild.trim() || !arquivoBase) {
      setMensagemBase("Informe a versão e selecione um arquivo.");
      return;
    }

    const formData = new FormData();
    formData.append("versao_build", versaoBuild);
    formData.append("arquivo", arquivoBase);

    try {
      const res = await uploadBaseDestino(formData);
      setBaseAtual(res.data);
      setMensagemBase("Base de Destino salva com sucesso!");
      setArquivoBase(null);
    } catch {
      setMensagemBase("Erro ao salvar a Base de Destino.");
    }
  }

  async function onSalvarGeral(e) {
    e.preventDefault();
    setMensagemGeral("");

    if (!backupPath.trim() || !logRetention || !maxFileSize) {
      setMensagemGeral("Preencha todos os campos.");
      return;
    }

    const payload = {
      backup_path: backupPath,
      log_retention_days: logRetention,
      max_file_size_mb: maxFileSize,
    };

    try {
      await saveParametrosGeral(payload);
      setMensagemGeral("Parâmetros salvos com sucesso!");
    } catch {
      setMensagemGeral("Erro ao salvar parâmetros.");
    }
  }

  return (
    <div className="p-6">
      <h1 className="text-2xl font-bold mb-4">Configurações</h1>

      <div className="border-b border-gray-200 mb-6">
        <nav className="-mb-px flex space-x-8">
          {["BASE", "SISTEMA", "GERAL"].map((tab) => (
            <button
              key={tab}
              onClick={() => setAba(tab)}
              className={`py-4 px-1 border-b-2 font-medium text-sm ${
                aba === tab
                  ? "border-blue-500 text-blue-600"
                  : "border-transparent text-gray-500 hover:text-gray-700 hover:border-gray-300"
              }`}
            >
              {tab === "BASE"
                ? "Base de Destino"
                : tab.charAt(0) + tab.slice(1).toLowerCase()}
            </button>
          ))}
        </nav>
      </div>

      {aba === "BASE" && (
        <div className="space-y-8 max-w-xl mx-auto">
          {baseAtual && (() => {
            const absoluto = baseAtual.caminho_arquivo;
            const normalizado = absoluto.replace(/\\/g, "/");
            const idxUploads = normalizado.indexOf("uploads");
            const parteUploads = normalizado.substring(idxUploads);
            const urlPublica = `http://localhost:3001/${parteUploads}`;

            return (
              <div className="bg-white shadow-md rounded-2xl p-6">
                <p><strong>Versão atual:</strong> {baseAtual.versao_build}</p>
                <p><strong>Arquivo salvo:</strong>{" "}
                  <a href={urlPublica} download target="_blank" rel="noreferrer" className="text-blue-600 underline">
                    Baixar arquivo
                  </a>
                </p>
                <p><strong>Data de upload:</strong>{" "}
                  {new Date(baseAtual.carregado_em).toLocaleString()}
                </p>
              </div>
            );
          })()}

          <form onSubmit={onSalvarBase} className="bg-white shadow-md rounded-2xl p-6 space-y-6">
            <input
              type="text"
              value={versaoBuild}
              onChange={(e) => setVersaoBuild(e.target.value)}
              placeholder="Versão ex: 2025.2.6.0"
              className="w-full border px-4 py-2 rounded"
            />
            <input
              key={arquivoBase ? arquivoBase.name : "file-input"}
              type="file"
              accept=".gdb,.sqlite,.bak,.fdb"
              onChange={onArquivoChange}
              className="w-full text-gray-700"
            />
            {mensagemBase && <p className="text-sm text-red-500">{mensagemBase}</p>}
            <button type="submit" className="bg-blue-600 text-white px-6 py-2 rounded">Salvar</button>
          </form>
        </div>
      )}
      {aba === "SISTEMA" && (
        <div className="space-y-8 max-w-4xl mx-auto">
          {/* Formulário para cadastrar novo sistema */}
          <div className="bg-white border rounded-lg p-4 shadow space-y-4">
            <h3 className="font-semibold text-gray-800 text-base">Cadastrar Novo Sistema</h3>
            <input
              type="text"
              placeholder="Nome do sistema (ex: CLIPP)"
              value={novoNome}
              onChange={(e) => setNovoNome(e.target.value)}
              className="block w-full border rounded px-3 py-2 mb-2"
            />
            <input
              type="file"
              multiple
              onChange={(e) => setArquivosUpload(Array.from(e.target.files))}
              className="block w-full border px-3 py-2 mb-2"
            />
            <button
              onClick={async () => {
                if (!novoNome || arquivosUpload.length === 0) {
                  setMsgNovoSistema("Preencha o nome e selecione arquivos.");
                  return;
                }
                const formData = new FormData();
                formData.append("nome", novoNome);
                arquivosUpload.forEach((file) => formData.append("arquivos", file));
                try {
                  await api.post("/sistemas", formData);
                  setMsgNovoSistema("Sistema cadastrado com sucesso!");
                  setNovoNome("");
                  setArquivosUpload([]);
                  const resAtualizado = await api.get("/sistemas");
                  setSistemas(resAtualizado.data);
                } catch (err) {
                  setMsgNovoSistema(err.response?.data?.error || "Erro ao cadastrar.");
                }
              }}
              className="bg-blue-600 text-white px-6 py-2 rounded"
            >
              Salvar Sistema
            </button>
            {msgNovoSistema && <p className="text-sm text-gray-700">{msgNovoSistema}</p>}
          </div>

          {/* Busca e seleção de sistema */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-1">Pesquisar Sistema</label>
            <input
              type="text"
              placeholder="Digite o nome do sistema..."
              value={sistemaSelecionado}
              onChange={(e) => setSistemaSelecionado(e.target.value)}
              className="block w-full border rounded px-3 py-2 mb-2"
            />
            <div className="max-h-64 overflow-y-auto border rounded-lg bg-white">
              {sistemas
                .filter((nome) =>
                  nome.toLowerCase().includes(sistemaSelecionado.toLowerCase())
                )
                .map((nome) => (
                  <button
                    key={nome}
                    className="w-full text-left px-4 py-2 hover:bg-blue-100 border-b text-sm"
                    onClick={async () => {
                      setSistemaSelecionado(nome);
                      try {
                        const res = await api.get(`/sistemas/${nome}`);
                        setDadosSistema(res.data);
                        setSqlEditavel(res.data.sql);
                        setParametrosEditaveis(res.data.parametros || {});
                      } catch (err) {
                        console.error("Erro ao carregar sistema:", err);
                      }
                    }}
                  >
                    {nome}
                  </button>
                ))}
            </div>
          </div>

          {/* Exibição e edição dos arquivos */}
          {dadosSistema && (
            <div className="bg-gray-50 border rounded-lg p-4 shadow">
              <div className="flex space-x-4 mb-4">
                <button
                  onClick={() => setAbaInterna("SQL")}
                  className={`px-4 py-2 rounded ${
                    abaInterna === "SQL"
                      ? "bg-blue-600 text-white"
                      : "bg-white border text-gray-700"
                  }`}
                >
                  Arquivos SQL
                </button>
                <button
                  onClick={() => setAbaInterna("INI")}
                  className={`px-4 py-2 rounded ${
                    abaInterna === "INI"
                      ? "bg-blue-600 text-white"
                      : "bg-white border text-gray-700"
                  }`}
                >
                  Parâmetros da Base
                </button>
              </div>

              {/* Aba SQL */}
              {abaInterna === "SQL" && (
                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  {Object.entries(sqlEditavel).map(([nome, conteudo]) => (
                    <div key={nome} className="bg-white border rounded shadow p-3">
                      <h4 className="font-semibold text-sm text-gray-700 mb-2">
                        {nome}.sql
                      </h4>
                      <textarea
                        rows={12}
                        value={conteudo}
                        onChange={(e) =>
                          setSqlEditavel((prev) => ({ ...prev, [nome]: e.target.value }))
                        }
                        className="w-full border font-mono text-sm p-2 rounded bg-gray-100"
                      />
                      <div className="mt-2 flex justify-between items-center">
                        <button
                          className="bg-blue-600 text-white px-4 py-1 text-sm rounded"
                          onClick={async () => {
                            try {
                              await api.put(
                                `/sistemas/${sistemaSelecionado}/sql/${nome}`,
                                sqlEditavel[nome],
                                { headers: { "Content-Type": "text/plain" } }
                              );
                              setMsgSqlSalvo((prev) => ({
                                ...prev,
                                [nome]: "Salvo com sucesso!",
                              }));
                            } catch {
                              setMsgSqlSalvo((prev) => ({
                                ...prev,
                                [nome]: "Erro ao salvar.",
                              }));
                            }
                          }}
                        >
                          Salvar alterações
                        </button>
                        {msgSqlSalvo[nome] && (
                          <span className="text-xs text-gray-600">{msgSqlSalvo[nome]}</span>
                        )}
                      </div>
                    </div>
                  ))}
                </div>
              )}

              {/* Aba INI */}
              {abaInterna === "INI" && (
                <div className="space-y-4">
                  {Object.entries(parametrosEditaveis).map(([chave, valor]) => (
                    <div key={chave} className="flex gap-2 items-center">
                      <label className="w-48 font-medium text-sm">{chave}:</label>
                      <input
                        type="text"
                        value={valor}
                        onChange={(e) =>
                          setParametrosEditaveis((prev) => ({ ...prev, [chave]: e.target.value }))
                        }
                        className="flex-1 border px-3 py-1 text-sm rounded"
                      />
                    </div>
                  ))}
                  <button
                    onClick={async () => {
                      try {
                        await api.put(`/sistemas/${sistemaSelecionado}/ini`, parametrosEditaveis);
                        setMsgIniSalvo("Parâmetros salvos com sucesso.");
                      } catch {
                        setMsgIniSalvo("Erro ao salvar parâmetros.");
                      }
                    }}
                    className="mt-4 bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700"
                  >
                    Salvar alterações
                  </button>
                  {msgIniSalvo && <p className="text-sm text-gray-700 mt-2">{msgIniSalvo}</p>}
                </div>
              )}
            </div>
          )}
        </div>
      )}
      {aba === "GERAL" && (
        <div className="space-y-8 max-w-xl mx-auto">
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
                className="block w-full rounded-lg border border-gray-300 px-4 py-2"
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
                className="block w-full rounded-lg border border-gray-300 px-4 py-2"
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
                className="block w-full rounded-lg border border-gray-300 px-4 py-2"
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
