import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Login from './pages/login';
import ForgotPassword from './pages/ForgotPassword';
import ResetPassword from './pages/ResetPassword';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/esqueci-senha" element={<ForgotPassword />} />
        <Route path="/resetar-senha" element={<ResetPassword />} />
        <Route path="/dashboard" element={<h2>Bem-vindo ao Dashboard</h2>} />
      </Routes>
    </Router>
  );
}

export default App;
