SELECT 
PRODUTO.CODIGO AS BARRAS,
PRODUTO.CODIGO AS COD_FABRICANTE,
PRODUTO.NOMEPROD AS DESCRICAO,
FORNECEDOR.NOMEFORN AS FORNECEDOR,
PRODUTO.FABRICANTE AS CARACTERISTICAS,
PRODUTO.ESTATU AS QTD,
PRODUTO.UNIDADE AS UND,
PRODUTO.CST AS ST,
PRODUTO.PRECUSTO AS PRECO_CUSTO,
PRODUTO.PREVENDA AS PRECO_VENDA,
PRODUTO.CUSTOMEDIO AS CUSTO_MEDIO
FROM PRODUTO
LEFT JOIN FORNECEDOR ON PRODUTO.CODFORN=FORNECEDOR.CODFORN


