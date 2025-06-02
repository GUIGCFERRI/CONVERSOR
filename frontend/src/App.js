import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Login from './pages/Login';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/dashboard" element={<h2>Bem-vindo ao Dashboard</h2>} />
      </Routes>
    </Router>
  );
}

export default App;
