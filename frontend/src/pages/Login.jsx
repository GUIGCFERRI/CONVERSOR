// frontend/src/pages/Login.jsx
import React, { useState } from "react";
import { useNavigate, Link } from "react-router-dom"; // <— importa o Link
import api from "../services/api";

function Login() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [erro, setErro] = useState("");
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    setErro("");

    try {
      const response = await api.post("/login", { email, password });
      const { token, user } = response.data;
      localStorage.setItem("authToken", token);
      localStorage.setItem(
        "userProfile",
        JSON.stringify({ role: user.role, name: user.name })
      );
      navigate("/", { replace: true });
    } catch (err) {
      setErro(err.response?.data?.error || "Erro ao fazer login");
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-100">
      <form
        onSubmit={handleSubmit}
        className="bg-white p-8 rounded shadow-md w-full max-w-md"
      >
        <div className="flex justify-center mb-6">
          <img
            src="/logo-zucchetti.png"
            alt="Logo Zucchetti"
            className="h-16"
          />
        </div>

        <h2 className="text-2xl font-bold mb-6 text-center text-gray-700">
          Login
        </h2>

        {erro && (
          <div className="bg-red-100 text-red-700 px-4 py-2 rounded mb-4 text-sm border border-red-300">
            {erro}
          </div>
        )}

        <div className="mb-4">
          <label className="block text-gray-700 text-sm font-medium mb-1">
            Email
          </label>
          <input
            type="email"
            className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
        </div>

        <div className="mb-6">
          <label className="block text-gray-700 text-sm font-medium mb-1">
            Senha
          </label>
          <input
            type="password"
            className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>

        <button
          type="submit"
          className="w-full bg-blue-600 text-white py-2 rounded-md hover:bg-blue-700 transition"
        >
          Entrar
        </button>

        {/* Coloquei o Link fora do botão de submit para não recarregar */}
        <p className="mt-4 text-sm text-center">
          <Link
            to="/forgot-password" /* rota definida no App.js */
            className="text-blue-600 hover:underline"
          >
            Esqueci minha senha
          </Link>
        </p>
      </form>
    </div>
  );
}

export default Login;
