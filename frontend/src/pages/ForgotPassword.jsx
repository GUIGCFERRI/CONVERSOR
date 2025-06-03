import React, { useState } from 'react';
import api from '../services/api';

function ForgotPassword() {
  const [email, setEmail] = useState('');
  const [msg, setMsg] = useState('');
  const [erro, setErro] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();
    setMsg('');
    setErro('');

    try {
      const res = await api.post('/forgot-password', { email });
      setMsg(res.data.message);
    } catch (err) {
      setErro(err.response?.data?.error || 'Erro ao solicitar redefinição');
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-100">
      <form className="bg-white p-8 rounded shadow-md w-full max-w-md" onSubmit={handleSubmit}>
        <h2 className="text-xl font-semibold mb-4 text-center">Esqueci minha senha</h2>

        <label className="block mb-1 text-sm">E-mail</label>
        <input
          type="email"
          className="w-full mb-4 px-3 py-2 border rounded"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          required
        />

        <button className="w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">
          Enviar link de recuperação
        </button>

        {msg && <p className="text-green-600 mt-4">{msg}</p>}
        {erro && <p className="text-red-500 mt-4">{erro}</p>}
      </form>
    </div>
  );
}

export default ForgotPassword;
