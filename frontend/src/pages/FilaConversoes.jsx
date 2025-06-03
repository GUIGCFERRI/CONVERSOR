// frontend/src/pages/FilaConversoes.jsx
import React from "react";

const FilaConversoes = () => {
  return (
    <div>
      <h2 className="text-2xl font-medium mb-4">Fila de Conversões</h2>
      <p>
        Visualize a fila de conversões em tempo real, com filtros por cliente,
        sistema de origem/destino, parceiro e status.
      </p>
      {/* Tabela apresentando: Cliente, Sistema Origem, Sistema Destino, Parceiro,
          Status, Tempo na fila, Posição. */}
    </div>
  );
};

export default FilaConversoes;
