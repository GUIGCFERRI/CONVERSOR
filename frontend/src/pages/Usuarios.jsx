import React, { useEffect, useState } from "react";
import api from "../services/api";

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

  const token = localStorage.getItem("token");

  const fetchUsuarios = async () => {
    try {
      const res = await api.get("/users", {
        headers: { Authorization: `Bearer ${token}` },
      });
      setUsuarios(res.data);
    } catch (err) {
      setErro("Erro ao buscar usuários.");
    }
  };

  useEffect(() => {
    fetchUsuarios();
  }, []);

  const handleSubmit = async (e) => {
    e.preventDefault();
    setErro("");
    setSucesso("");

    try {
      if (editando) {
        await api.put(`/users/${editId}`, form, {
          headers: { Authorization: `Bearer ${token}` },
        });
        setSucesso("Usuário atualizado com sucesso!");
      } else {
        await api.post("/users", form, {
          headers: { Authorization: `Bearer ${token}` },
        });
        setSucesso("Usuário criado com sucesso!");
      }

      setForm({ name: "", email: "", password: "", role: "funcionario" });
      setEditando(false);
      setEditId(null);
      fetchUsuarios();
    } catch (err) {
      setErro(err.response?.data?.error || "Erro ao salvar usuário.");
    }
  };

  const handleEditar = (user) => {
    setForm({
      name: user.name,
      email: user.email,
      password: "",
      role: user.role,
    });
    setEditando(true);
    setEditId(user.id);
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

  const cancelarEdicao = () => {
    setEditando(false);
    setEditId(null);
    setForm({ name: "", email: "", password: "", role: "funcionario" });
    setErro("");
    setSucesso("");
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
  return (
    <div className="p-6">
      <h2 className="text-2xl font-medium mb-4">Gestão de Usuários</h2>

      {/* Formulário */}
      <form onSubmit={handleSubmit} className="bg-white shadow p-4 rounded mb-6">
        <h3 className="text-lg font-semibold mb-2">
          {editando ? "Editar Usuário" : "Novo Usuário"}
        </h3>

        <div className="grid grid-cols-2 gap-4">
          <input
            type="text"
            placeholder="Nome"
            className="border p-2 rounded"
            value={form.name}
            onChange={(e) => setForm({ ...form, name: e.target.value })}
            required
          />
          <input
            type="email"
            placeholder="E-mail"
            className="border p-2 rounded"
            value={form.email}
            onChange={(e) => setForm({ ...form, email: e.target.value })}
            required
            disabled={editando}
          />
          <input
            type="password"
            placeholder="Senha"
            className="border p-2 rounded"
            value={form.password}
            onChange={(e) => setForm({ ...form, password: e.target.value })}
            required={!editando}
          />
          <select
            className="border p-2 rounded"
            value={form.role}
            onChange={(e) => setForm({ ...form, role: e.target.value })}
          >
            <option value="admin">Administrador</option>
            <option value="funcionario">Funcionário</option>
            <option value="parceiro">Parceiro</option>
          </select>
        </div>

        <div className="mt-4 flex gap-4">
          <button
            type="submit"
            className="bg-blue-600 text-white py-2 px-4 rounded hover:bg-blue-700"
          >
            {editando ? "Atualizar" : "Cadastrar"}
          </button>
          {editando && (
            <button
              type="button"
              className="bg-gray-500 text-white py-2 px-4 rounded hover:bg-gray-600"
              onClick={cancelarEdicao}
            >
              Cancelar
            </button>
          )}
        </div>

        {sucesso && <p className="text-green-600 mt-2">{sucesso}</p>}
        {erro && <p className="text-red-500 mt-2">{erro}</p>}
      </form>

      {/* Tabela */}
      <table className="min-w-full border border-gray-300">
        <thead className="bg-gray-100">
          <tr>
            <th className="border p-2">Nome</th>
            <th className="border p-2">E-mail</th>
            <th className="border p-2">Perfil</th>
            <th className="border p-2">Ativo</th>
            <th className="border p-2">Ações</th>
          </tr>
        </thead>
        <tbody>
          {usuarios.map((user) => (
            <tr key={user.id}>
              <td className="border p-2">{user.name}</td>
              <td className="border p-2">{user.email}</td>
              <td className="border p-2">{user.role}</td>
              <td className="border p-2">{user.ativo ? "Sim" : "Não"}</td>
              <td className="border p-2">
                <button
                  className="bg-yellow-400 px-2 py-1 text-sm text-white rounded mr-2 hover:bg-yellow-500"
                  onClick={() => handleEditar(user)}
                >
                  Editar
                </button>
                {user.ativo ? (
                  <button
                    className="bg-red-600 px-2 py-1 text-sm text-white rounded hover:bg-red-700"
                    onClick={() => handleDesativar(user.id)}
                  >
                    Desativar
                  </button>
                ) : (
                  <button
                    className="bg-green-600 px-2 py-1 text-sm text-white rounded hover:bg-green-700"
                    onClick={() => handleAtivar(user.id)}
                  >
                    Ativar
                  </button>
                )}

              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default Usuarios;
