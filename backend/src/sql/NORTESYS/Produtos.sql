select produtos.codigo,
produtos.nome as descricao,
grupos.NOME as grupo,
produtos.UNIDADE as und,
produtos.ALTERNATI as cod_fabricante,
produtos.CBARRA as barras,
produtos.COD_CSTTRIBICMS as st,
produtos.UNIDADE_COMPRA as und_compra,
produtos.CODIGO_NCM as cod_ncm,
produtos.COD_CEST as personal6,
prodlojas.PCO_COMPRA as preco_custo,
prodlojas.PCO_REMAR as preco_venda,
prodlojas.EST_ATUAL as qtd
from produtos
left join grupos on produtos.GRUPO=grupos.CODIGO
left join prodlojas on produtos.CODIGO=PRODLOJAS.codigo
