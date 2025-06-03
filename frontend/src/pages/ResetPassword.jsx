import React, { useState } from 'react';
import api from '../services/api';
import { useSearchParams, useNavigate } from 'react-router-dom';

function ResetPassword() {
  const [searchParams] = useSearchParams();
  const token = searchParams.get('token');
  const [password, setPassword] = useState('');
  const [msg, setMsg] = useState('');
  const [erro, setErro] = useState('');
  const navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    setMsg('');
    setErro('');

    try {
      const res = await api.post('/reset-password', { token, newPassword: password });
      setMsg(res.data.message);
      setTimeout(() => navigate('/'), 2000); // Redireciona após sucesso
    } catch (err) {
      setErro(err.response?.data?.error || 'Erro ao redefinir senha');
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-100">
      <form className="bg-white p-8 rounded shadow-md w-full max-w-md" onSubmit={handleSubmit}>
        <h2 className="text-xl font-semibold mb-4 text-center">Redefinir senha</h2>

        <label className="block mb-1 text-sm">Nova senha</label>
        <input
          type="password"
          className="w-full mb-4 px-3 py-2 border rounded"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          required
        />

        <button className="w-full bg-green-600 text-white py-2 rounded hover:bg-green-700">
          Redefinir
        </button>

        {msg && <p className="text-green-600 mt-4">{msg}</p>}
        {erro && <p className="text-red-500 mt-4">{erro}</p>}
      </form>
    </div>
  );
}

export default ResetPassword;
