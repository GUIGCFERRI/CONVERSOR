import React, { useEffect, useState } from "react";
import api from "../services/api";
import { Pencil, Ban, CheckCircle, Plus } from "lucide-react";

const Usuarios = () => {
  const [usuarios, setUsuarios] = useState([]);
  const [erro, setErro] = useState("");
  const [sucesso, setSucesso] = useState("");
  const [form, setForm] = useState({
    name: "",
    email: "",
    password: "",
    role: "funcionario",
  });
  const [editando, setEditando] = useState(false);
  const [editId, setEditId] = useState(null);
  const [modalAberto, setModalAberto] = useState(false);

  const [busca, setBusca] = useState("");
  const [filtroRole, setFiltroRole] = useState("");

  const [paginaAtual, setPaginaAtual] = useState(1);
  const porPagina = 7;

  const token = localStorage.getItem("authToken");

  const fetchUsuarios = async () => {
    try {
      const res = await api.get("/users", {
        headers: { Authorization: `Bearer ${token}` },
      });
      setUsuarios(res.data);
    } catch (err) {
      console.error("Erro ao buscar usuários:", err);
    }
  };

  useEffect(() => {
    fetchUsuarios();
  }, [token]);

  useEffect(() => {
    setPaginaAtual(1);
  }, [busca, filtroRole]);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setErro("");
    setSucesso("");

    try {
      const payload = {
        name: form.name,
        email: form.email,
        role: form.role,
        ativo: form.ativo,
      };
      if (form.password?.trim()) {
        payload.password = form.password;
      }

      if (editando) {
        await api.put(`/users/${editId}`, payload, {
          headers: { Authorization: `Bearer ${token}` },
        });
        setSucesso("Usuário atualizado com sucesso!");
      } else {
        await api.post("/users", { ...payload, password: form.password }, {
          headers: { Authorization: `Bearer ${token}` },
        });
        setSucesso("Usuário criado com sucesso!");
      }

      setForm({ name: "", email: "", password: "", role: "funcionario" });
      setEditando(false);
      setEditId(null);
      setModalAberto(false);
      fetchUsuarios();
    } catch (err) {
      console.error("Erro no envio:", err);
      setErro(err.response?.data?.error || "Erro ao salvar usuário.");
    }
  };

  const handleEditar = (user) => {
    setForm({
      name: user.name,
      email: user.email,
      password: "",
      role: user.role,
      ativo: user.ativo,
    });
    setEditando(true);
    setEditId(user.id);
    setModalAberto(true);
    setErro("");
    setSucesso("");
  };

  const cancelarEdicao = () => {
    setEditando(false);
    setEditId(null);
    setModalAberto(false);
    setForm({ name: "", email: "", password: "", role: "funcionario" });
    setErro("");
    setSucesso("");
  };

  const handleDesativar = async (id) => {
    if (!window.confirm("Deseja realmente desativar este usuário?")) return;
    try {
      await api.delete(`/users/${id}`, {
        headers: { Authorization: `Bearer ${token}` },
      });
      fetchUsuarios();
    } catch (err) {
      setErro("Erro ao desativar usuário.");
    }
  };

  const handleAtivar = async (id) => {
    try {
      await api.put(`/users/${id}/activate`, {}, {
        headers: { Authorization: `Bearer ${token}` },
      });
      fetchUsuarios();
    } catch (err) {
      setErro("Erro ao ativar usuário.");
    }
  };

  const usuariosFiltrados = usuarios.filter((user) => {
    const termo = busca.toLowerCase();
    const nomeOuEmailCombina =
      user.name.toLowerCase().includes(termo) ||
      user.email.toLowerCase().includes(termo);
    const perfilCombina = filtroRole === "" || user.role === filtroRole;
    return nomeOuEmailCombina && perfilCombina;
  });

  const totalPaginas = Math.ceil(usuariosFiltrados.length / porPagina);
  const inicio = (paginaAtual - 1) * porPagina;
  const fim = inicio + porPagina;
  const usuariosPaginados = usuariosFiltrados.slice(inicio, fim);

  return (
    <div className="max-w-5xl mx-auto p-6">
      <h2 className="text-3xl font-bold mb-6 text-blue-700 flex justify-between items-center">
        Gestão de Usuários
        <button
          onClick={() => {
            setModalAberto(true);
            setEditando(false);
            setForm({ name: "", email: "", password: "", role: "funcionario" });
          }}
          className="bg-blue-600 text-white px-3 py-1.5 text-sm rounded-md flex items-center gap-1 hover:bg-blue-700"
        >
          <Plus size={18} /> Novo Usuário
        </button>
      </h2>

      <div className="flex flex-col md:flex-row md:items-center md:justify-between mb-4 gap-4">
        <input
          type="text"
          placeholder="Buscar por nome ou e-mail"
          className="px-4 py-2 border rounded-md w-full md:w-1/2"
          value={busca}
          onChange={(e) => setBusca(e.target.value)}
        />
        <select
          className="px-4 py-2 border rounded-md w-full md:w-1/4"
          value={filtroRole}
          onChange={(e) => setFiltroRole(e.target.value)}
        >
          <option value="">Todos os perfis</option>
          <option value="admin">Administrador</option>
          <option value="funcionario">Funcionário</option>
          <option value="parceiro">Parceiro</option>
        </select>
      </div>

      <table className="w-full border rounded-lg overflow-hidden shadow-sm">
        <thead className="bg-blue-100 text-blue-900 text-left">
          <tr>
            <th className="px-4 py-2">Nome</th>
            <th className="px-4 py-2">E-mail</th>
            <th className="px-4 py-2">Perfil</th>
            <th className="px-4 py-2">Status</th>
            <th className="px-4 py-2">Ações</th>
          </tr>
        </thead>
        <tbody className="bg-white divide-y divide-gray-200">
          {usuariosPaginados.map((user) => (
            <tr key={user.id}>
              <td className="px-4 py-2">{user.name}</td>
              <td className="px-4 py-2">{user.email}</td>
              <td className="px-4 py-2 capitalize">{user.role}</td>
              <td className="px-4 py-2">
                <span className={`inline-block px-3 py-1 text-sm rounded-full font-medium ${user.ativo ? 'bg-green-100 text-green-800' : 'bg-gray-200 text-gray-600'}`}>
                  {user.ativo ? "Ativo" : "Inativo"}
                </span>
              </td>
              <td className="px-4 py-2 flex gap-2">
                <button
                  className="bg-yellow-400 hover:bg-yellow-500 text-white px-3 py-1 rounded flex items-center gap-1 text-sm"
                  onClick={() => handleEditar(user)}
                >
                  <Pencil size={16} /></button>
                {user.ativo ? (
                  <button
                    className="bg-red-600 hover:bg-red-700 text-white px-3 py-1 rounded flex items-center gap-1 text-sm"
                    onClick={() => handleDesativar(user.id)}
                  >
                    <Ban size={16} /></button>
                ) : (
                  <button
                    className="bg-green-600 hover:bg-green-700 text-white px-3 py-1 rounded flex items-center gap-1 text-sm"
                    onClick={() => handleAtivar(user.id)}
                  >
                    <CheckCircle size={16} /></button>
                )}
              </td>
            </tr>
          ))}
        </tbody>
      </table>

      <div className="flex justify-between items-center mt-4">
        <button
          onClick={() => setPaginaAtual((p) => Math.max(p - 1, 1))}
          disabled={paginaAtual === 1}
          className="bg-gray-300 px-4 py-2 rounded disabled:opacity-50"
        >
          Anterior
        </button>
        <span className="text-sm text-gray-700">
          Página {paginaAtual} de {totalPaginas}
        </span>
        <button
          onClick={() => setPaginaAtual((p) => Math.min(p + 1, totalPaginas))}
          disabled={paginaAtual === totalPaginas}
          className="bg-gray-300 px-4 py-2 rounded disabled:opacity-50"
        >
          Próxima
        </button>
      </div>

      {modalAberto && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white p-6 rounded-lg shadow-lg w-full max-w-lg relative">
            <button
              onClick={cancelarEdicao}
              className="absolute top-2 right-2 text-gray-500 hover:text-black"
            >
              ✕
            </button>

            <h3 className="text-xl font-semibold mb-4 text-gray-800">
              {editando ? "Editar Usuário" : "Novo Usuário"}
            </h3>

            <form onSubmit={handleSubmit} className="grid grid-cols-1 gap-4">
              <input
                type="text"
                placeholder="Nome"
                className="border border-gray-300 rounded-lg px-4 py-2"
                value={form.name}
                onChange={(e) => setForm({ ...form, name: e.target.value })}
                required
              />
              <input
                type="email"
                placeholder="E-mail"
                className="border border-gray-300 rounded-lg px-4 py-2"
                value={form.email}
                onChange={(e) => setForm({ ...form, email: e.target.value })}
                required
                disabled={editando}
              />
              <input
                type="password"
                placeholder="Senha"
                className="border border-gray-300 rounded-lg px-4 py-2"
                value={form.password}
                onChange={(e) => setForm({ ...form, password: e.target.value })}
                required={!editando}
              />
              <select
                className="border border-gray-300 rounded-lg px-4 py-2"
                value={form.role}
                onChange={(e) => setForm({ ...form, role: e.target.value })}
              >
                <option value="admin">Administrador</option>
                <option value="funcionario">Funcionário</option>
                <option value="parceiro">Parceiro</option>
              </select>

              <div className="flex justify-end gap-4">
                <button
                  type="submit"
                  className="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700"
                >
                  {editando ? "Atualizar" : "Cadastrar"}
                </button>
                <button
                  type="button"
                  onClick={cancelarEdicao}
                  className="bg-gray-400 text-white px-6 py-2 rounded-lg hover:bg-gray-500"
                >
                  Cancelar
                </button>
              </div>
            </form>

            {sucesso && <p className="text-green-600 mt-3">{sucesso}</p>}
            {erro && <p className="text-red-600 mt-3">{erro}</p>}
          </div>
        </div>
      )}
    </div>
  );
};

export default Usuarios;
