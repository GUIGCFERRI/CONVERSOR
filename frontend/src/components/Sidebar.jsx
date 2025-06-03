// frontend/src/components/Sidebar.jsx
import React from "react";
import { NavLink } from "react-router-dom";

const Sidebar = ({ isOpen, toggleSidebar, userRole }) => {
  return (
    <aside
      className={`fixed top-0 left-0 h-screen bg-gray-800 text-gray-100 flex flex-col transition-all duration-200
        ${isOpen ? "w-60" : "w-16"}`}
    >
      {/* Cabeçalho do sidebar: logo + botão de fechar/abrir */}
      <div className="flex items-center justify-between h-16 px-2 bg-gray-900">
        <span
          className={`text-xl font-bold transition-opacity duration-200
            ${isOpen ? "opacity-100" : "opacity-0 invisible"}`}
        >
          CONVERSOR
        </span>
        <button
          className="p-1 focus:outline-none hover:bg-gray-700 rounded"
          onClick={toggleSidebar}
        >
          {isOpen ? "«" : "»"}
        </button>
      </div>

      {/* Menu de navegação */}
      <nav className="flex-1 overflow-y-auto mt-4">
        <ul className="space-y-2">
          <li>
            <NavLink
              to="/"
              end
              className={({ isActive }) =>
                `flex items-center px-4 py-2 hover:bg-gray-700 rounded ${
                  isActive ? "bg-gray-700" : ""
                }`
              }
            >
              <span className="material-icons text-lg">
                dashboard
              </span>
              <span
                className={`ml-3 transition-opacity duration-200
                  ${isOpen ? "opacity-100" : "opacity-0 invisible"}`}
              >
                Dashboard
              </span>
            </NavLink>
          </li>

          <li>
            <NavLink
              to="/conversoes"
              className={({ isActive }) =>
                `flex items-center px-4 py-2 hover:bg-gray-700 rounded ${
                  isActive ? "bg-gray-700" : ""
                }`
              }
            >
              <span className="material-icons text-lg">swap_horiz</span>
              <span
                className={`ml-3 transition-opacity duration-200
                  ${isOpen ? "opacity-100" : "opacity-0 invisible"}`}
              >
                Gestão de Conversões
              </span>
            </NavLink>
          </li>

          <li>
            <NavLink
              to="/relatorios"
              className={({ isActive }) =>
                `flex items-center px-4 py-2 hover:bg-gray-700 rounded ${
                  isActive ? "bg-gray-700" : ""
                }`
              }
            >
              <span className="material-icons text-lg">bar_chart</span>
              <span
                className={`ml-3 transition-opacity duration-200
                  ${isOpen ? "opacity-100" : "opacity-0 invisible"}`}
              >
                Relatórios
              </span>
            </NavLink>
          </li>

          {/* Exemplo de condicional por perfil (se for admin) */}
          {userRole === "ADMIN" && (
            <li>
              <NavLink
                to="/usuarios"
                className={({ isActive }) =>
                  `flex items-center px-4 py-2 hover:bg-gray-700 rounded ${
                    isActive ? "bg-gray-700" : ""
                  }`
                }
              >
                <span className="material-icons text-lg">people</span>
                <span
                  className={`ml-3 transition-opacity duration-200
                    ${isOpen ? "opacity-100" : "opacity-0 invisible"}`}
                >
                  Usuários
                </span>
              </NavLink>
            </li>
          )}

          <li>
            <NavLink
              to="/configuracoes"
              className={({ isActive }) =>
                `flex items-center px-4 py-2 hover:bg-gray-700 rounded ${
                  isActive ? "bg-gray-700" : ""
                }`
              }
            >
              <span className="material-icons text-lg">settings</span>
              <span
                className={`ml-3 transition-opacity duration-200
                  ${isOpen ? "opacity-100" : "opacity-0 invisible"}`}
                >
                Configurações
              </span>
            </NavLink>
          </li>

          <li>
            <NavLink
              to="/fila"
              className={({ isActive }) =>
                `flex items-center px-4 py-2 hover:bg-gray-700 rounded ${
                  isActive ? "bg-gray-700" : ""
                }`
              }
            >
              <span className="material-icons text-lg">queue</span>
              <span
                className={`ml-3 transition-opacity duration-200
                  ${isOpen ? "opacity-100" : "opacity-0 invisible"}`}
              >
                Fila de Conversões
              </span>
            </NavLink>
          </li>
        </ul>
      </nav>
    </aside>
  );
};

export default Sidebar;
