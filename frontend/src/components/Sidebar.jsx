// frontend/src/components/Sidebar.jsx
import React from "react";
import { NavLink } from "react-router-dom";
import {
  HiViewGrid,
  HiSwitchHorizontal,
  HiChartBar,
  HiUsers,
  HiCog,
  HiExclamationCircle,
  HiChevronDoubleLeft,
  HiChevronDoubleRight,
} from "react-icons/hi";

const menuItems = [
  { to: "/", label: "Dashboard", icon: HiViewGrid, end: true },
  { to: "/conversoes", label: "Gestão de Conversões", icon: HiSwitchHorizontal },
  { to: "/fila", label: "Fila de Conversões", icon: HiExclamationCircle },
  { to: "/relatorios", label: "Relatórios", icon: HiChartBar, protected: "admin" },
  { to: "/usuarios", label: "Usuários", icon: HiUsers, protected: "admin" },
  { to: "/configuracoes", label: "Configurações", icon: HiCog, protected: "admin" },
];

const Sidebar = ({ isOpen, toggleSidebar, userRole }) => {
  return (
    <aside
      className={`
        fixed top-0 left-0 h-screen bg-gradient-to-b from-gray-900 to-gray-800 text-gray-100 
        flex flex-col justify-between transition-all duration-300
        ${isOpen ? "w-64" : "w-20"}
      `}
    >
      {/* Cabeçalho (logo + botão de colapso) */}
      <div className="flex items-center justify-between h-16 px-4">
        <div
          className={`
            text-2xl font-extrabold tracking-tight transition-opacity duration-300
            ${isOpen ? "opacity-100" : "opacity-0 invisible"}
          `}
        >
          CONVERSOR
        </div>
        <button
          onClick={toggleSidebar}
          className="p-2 text-gray-300 hover:text-white hover:bg-gray-700 rounded-md focus:outline-none focus:ring focus:ring-indigo-500"
          title={isOpen ? "Ocultar menu" : "Mostrar menu"}
        >
          {isOpen ? (
            <HiChevronDoubleLeft size={20} />
          ) : (
            <HiChevronDoubleRight size={20} />
          )}
        </button>
      </div>

      {/* Itens de menu */}
      <nav className="flex-1 overflow-y-auto mt-4">
        <ul className="space-y-1 px-2">
          {menuItems.map(({ to, label, icon: Icon, end, protected: roleReq }) => {
            if (roleReq && userRole !== roleReq) return null;
            return (
              <li key={to}>
                <NavLink
                  to={to}
                  end={!!end}
                  className={({ isActive }) =>
                    `
                    flex items-center gap-3 py-2 px-3 rounded-md transition-colors duration-200
                    ${isActive ? "bg-indigo-600 text-white" : "text-gray-300 hover:bg-gray-700 hover:text-white"}
                  `
                  }
                  title={!isOpen ? label : undefined}
                >
                  <Icon size={22} />
                  <span
                    className={`
                      flex-1 text-sm font-medium transition-opacity duration-300
                      ${isOpen ? "opacity-100" : "opacity-0 invisible"}
                    `}
                  >
                    {label}
                  </span>
                </NavLink>
              </li>
            );
          })}
        </ul>
      </nav>

      {/* Rodapé (opcional: perfil do usuário ou logout) */}
      <div className="px-4 pb-4">
        <div
          className={`
            flex items-center gap-3 py-2 px-3 rounded-md transition-colors duration-200
            hover:bg-gray-700 cursor-pointer
          `}
          onClick={() => {
            localStorage.removeItem("authToken");
            localStorage.removeItem("userProfile");
            // Caso queira redirecionar ao clicar em “Sair”, use useNavigate no componente pai
          }}
          title={!isOpen ? "Sair" : undefined}
        >
          
        </div>
      </div>
    </aside>
  );
};

export default Sidebar;
