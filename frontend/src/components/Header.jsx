// frontend/src/components/Header.jsx
import React from "react";
import {
  HiUsers,
} from "react-icons/hi";

const Header = ({ toggleSidebar, pageTitle, onLogout }) => {
  return (
    <header className="flex items-center justify-between bg-white h-16 px-4 shadow-md fixed top-0 right-0 left-0 z-10">
      <div className="flex items-center">
        <button
          className="p-2 text-gray-600 hover:bg-gray-100 rounded focus:outline-none"
          onClick={toggleSidebar}
        >
          {/* Ícone de menu */}
          <span className="material-icons">menu</span>
        </button>
        <h1 className="ml-4 text-2xl font-semibold text-gray-800">
          {pageTitle}
        </h1>
      </div>
      <div className="flex items-center space-x-4">
        {/* Exemplo de logout ou perfil */}
        <button
          className="text-gray-600 hover:text-gray-800 focus:outline-none"
          onClick={onLogout}
        >
          <HiUsers size={22} className="text-gray-300" />
          <span
            className={`
              text-sm font-medium transition-opacity duration-300
            `}
          >
            Sair
          </span>
        </button>
      </div>
    </header>
  );
};

export default Header;
