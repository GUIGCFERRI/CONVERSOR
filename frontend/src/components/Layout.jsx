// frontend/src/components/Layout.jsx
import React, { useState, useEffect } from "react";
import Sidebar from "./Sidebar";
import Header from "./Header";
import { useLocation, useNavigate } from "react-router-dom";

const Layout = ({ children }) => {
  const [isSidebarOpen, setIsSidebarOpen] = useState(true);
  const [userRole, setUserRole] = useState(null);
  const location = useLocation();
  const navigate = useNavigate();

  // Puxe o perfil do usuário (por exemplo, do localStorage após login)
  useEffect(() => {
    const storedProfile = localStorage.getItem("userProfile");
    if (storedProfile) {
      try {
        const { role } = JSON.parse(storedProfile);
        setUserRole(role);
      } catch {
        setUserRole(null);
      }
    }
  }, []);

  // Título dinâmico conforme rota
  const getPageTitle = () => {
    switch (location.pathname) {
      case "/":
        return "Dashboard";
      case "/conversoes":
        return "Gestão de Conversões";
      case "/relatorios":
        return "Relatórios";
      case "/usuarios":
        return "Gestão de Usuários";
      case "/configuracoes":
        return "Configurações";
      case "/fila":
        return "Fila de Conversões";
      default:
        return "";
    }
  };

  const toggleSidebar = () => setIsSidebarOpen((prev) => !prev);

  const handleLogout = () => {
    // Lógica de logout: limpar token, usuário, redirecionar para /login
    localStorage.removeItem("authToken");
    localStorage.removeItem("userProfile");
    navigate("/login", { replace: true });
  };

  return (
    <div className="flex">
      {/* Sidebar fixa à esquerda */}
      <Sidebar
        isOpen={isSidebarOpen}
        toggleSidebar={toggleSidebar}
        userRole={userRole}
      />

      {/* Container que engloba Header + conteúdo principal */}
      <div
        className={`flex flex-col flex-1 transition-margin duration-200
          ${isSidebarOpen ? "ml-60" : "ml-16"}`}
      >
        <Header
          toggleSidebar={toggleSidebar}
          pageTitle={getPageTitle()}
          onLogout={handleLogout}
        />
        {/* Espaço em branco para dar offset abaixo do header */}
        <div className="mt-16 p-4 bg-gray-100 min-h-screen">{children}</div>
      </div>
    </div>
  );
};

export default Layout;
