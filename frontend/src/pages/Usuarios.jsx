import React, { useEffect, useState } from "react";
import api from "../services/api";
import { Pencil, Ban, CheckCircle } from "lucide-react";

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
    <div className="max-w-5xl mx-auto p-6">
      <h2 className="text-3xl font-bold mb-6 text-blue-700">Gestão de Usuários</h2>
  
      {/* FORMULÁRIO */}
      <div className="bg-white rounded-xl shadow-md p-6 mb-8 border">
        <h3 className="text-xl font-semibold mb-4 text-gray-800">
          {editando ? "Editar Usuário" : "Novo Usuário"}
        </h3>
  
        <form onSubmit={handleSubmit} className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <input
            type="text"
            placeholder="Nome"
            className="border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
            value={form.name}
            onChange={(e) => setForm({ ...form, name: e.target.value })}
            required
          />
          <input
            type="email"
            placeholder="E-mail"
            className="border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
            value={form.email}
            onChange={(e) => setForm({ ...form, email: e.target.value })}
            required
            disabled={editando}
          />
          <input
            type="password"
            placeholder="Senha"
            className="border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
            value={form.password}
            onChange={(e) => setForm({ ...form, password: e.target.value })}
            required={!editando}
          />
          <select
            className="border border-gray-300 rounded-lg px-4 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
            value={form.role}
            onChange={(e) => setForm({ ...form, role: e.target.value })}
          >
            <option value="admin">Administrador</option>
            <option value="funcionario">Funcionário</option>
            <option value="parceiro">Parceiro</option>
          </select>
  
          <div className="col-span-full flex gap-4 mt-2">
            <button
              type="submit"
              className="bg-blue-600 text-white px-6 py-2 rounded-lg hover:bg-blue-700"
            >
              {editando ? "Atualizar" : "Cadastrar"}
            </button>
            {editando && (
              <button
                type="button"
                onClick={cancelarEdicao}
                className="bg-gray-400 text-white px-6 py-2 rounded-lg hover:bg-gray-500"
              >
                Cancelar
              </button>
            )}
          </div>
        </form>
  
        {sucesso && <p className="text-green-600 mt-3">{sucesso}</p>}
        {erro && <p className="text-red-600 mt-3">{erro}</p>}
      </div>
  
      {/* TABELA */}
      <div className="overflow-x-auto">
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
            {usuarios.map((user) => (
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
                    <Pencil size={16} />
                    Editar
                  </button>

                  {user.ativo ? (
                    <button
                      className="bg-red-600 hover:bg-red-700 text-white px-3 py-1 rounded flex items-center gap-1 text-sm"
                      onClick={() => handleDesativar(user.id)}
                    >
                      <Ban size={16} />
                      Desativar
                    </button>
                  ) : (
                    <button
                      className="bg-green-600 hover:bg-green-700 text-white px-3 py-1 rounded flex items-center gap-1 text-sm"
                      onClick={() => handleAtivar(user.id)}
                    >
                      <CheckCircle size={16} />
                      Ativar
                    </button>
                  )}
                </td>

              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
  
};

export default Usuarios;
