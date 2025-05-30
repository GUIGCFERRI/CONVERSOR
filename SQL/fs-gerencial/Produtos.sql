select produtos.codigosweda as codigo,
produtos.descricao,
produtos.unidade as und,
produtos.preco as preco_venda,
produtos.situacaotrib as st,
produtos.estoque as qtd,
produtos.ncm as cod_ncm,
produtos.dataultcompra as ultima_compra,
produtos.cest as personal6
from produtos
