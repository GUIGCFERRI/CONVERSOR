// frontend/src/App.js (parte relevante)
import { BrowserRouter, Routes, Route, Navigate } from "react-router-dom";
import Layout from "./components/Layout";
import Login from "./pages/Login";
import ForgotPassword from "./pages/ForgotPassword";
import ResetPassword from "./pages/ResetPassword";

import DashboardHome from "./pages/DashboardHome";
import Conversoes    from "./pages/Conversoes";
import FilaConversoes from "./pages/FilaConversoes";
import Relatorios    from "./pages/Relatorios";
import Usuarios      from "./pages/Usuarios";
import Configuracoes from "./pages/Configuracoes";

const PrivateRoute = ({ children }) => {
  const token = localStorage.getItem("authToken");
  return token ? children : <Navigate to="/login" replace />;
};

function App() {
  return (
    <BrowserRouter>
      <Routes>
        {/* Rotas públicas (sem Layout) */}
        <Route path="/login" element={<Login />} />
        <Route path="/forgot-password" element={<ForgotPassword />} />
        <Route path="/reset-password/:token" element={<ResetPassword />} />

        {/* Rotas protegidas, sempre dentro do Layout */}
        <Route
          path="/*"
          element={
            <PrivateRoute>
              <Layout>
                {/* As subrotas dentro do Layout */}
                <Routes>
                  <Route path="/" element={<DashboardHome />} />
                  <Route path="/conversoes" element={<Conversoes />} />
                  <Route path="/fila" element={<FilaConversoes />} />
                  <Route path="/relatorios" element={<Relatorios />} />
                  <Route path="/usuarios" element={<Usuarios />} />
                  <Route path="/configuracoes" element={<Configuracoes />} />
                  <Route path="*" element={<Navigate to="/" replace />} />
                </Routes>
              </Layout>
            </PrivateRoute>
          }
        />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
