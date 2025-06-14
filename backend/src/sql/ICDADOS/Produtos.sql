SELECT PRODUTO.PCODIGO AS CODIGO,
GRUPO.DESCRICAO AS GRUPO,
PRODUTO.DESCRICAO,
PRODUTO.MARCA_PRODUTO AS CARACTERISTICAS,
PRODUTO.REFERENCIA AS BARRAS,
PRODUTO.UN AS UND,
PRODUTO.NCM AS COD_NCM,
PRODUTO.CEST AS PERSONAL6,
PRODUTO.PRECO_C AS PRECO_CUSTO,
PRODUTO.PRECO_V AS PRECO_VENDA,
PRODUTO.SALDO AS QTD
FROM PRODUTO
LEFT JOIN GRUPO ON PRODUTO.GRUPO=GRUPO.CODIGO
