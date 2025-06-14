SELECT PRODUTO.CODIGO,
PRODUTO.DESCRICAO,
PRODUTO.REFERENCIA AS COD_FABRICANTE,
PRODUTO.UM AS UND,
PRODUTO.PCUSTO AS PRECO_CUSTO,
PRODUTO.DTCAD AS DATA_CADASTRO,
FORNECEDOR.RAZAOSOCIAL AS FORNECEDOR,
GRUPO_SUB.DESCRICAO AS GRUPO,
PRODUTO.TABELA01 AS PRECO_VENDA,
PRODUTO.DTULTCOMP AS ULTIMA_COMPRA,
PRODUTO.CUSTOMED AS CUSTO_MEDIO,
PRODUTO.DTULTVENDA AS ULTIMA_VENDA,
PRODUTO.CODBARRA AS BARRAS,
substring(produto.cst from 1 for 1) as ost,
CASE WHEN PRODUTO.CST IS NULL THEN ' 00'
ELSE substring(PRODUTO.CST from 2 for 4) END AS ST,
PRODUTO.NCM AS COD_NCM,
PRODUTO.CEST AS PERSONAL6,
ESTOQUE.SALDO AS QTD
FROM PRODUTO
LEFT JOIN FORNECEDOR ON PRODUTO.CODFORN=FORNECEDOR.CODIGO
LEFT JOIN ESTOQUE ON PRODUTO.CODIGO=ESTOQUE.ESTOQUEID
LEFT JOIN GRUPO_SUB ON PRODUTO.GRUPO_SUB=GRUPO_SUB.CODIGO
WHERE PRODUTO.DESCRICAO IS NOT NULL OR PRODUTO.DESCRICAO <> ''
