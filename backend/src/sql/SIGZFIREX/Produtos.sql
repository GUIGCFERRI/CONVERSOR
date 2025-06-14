SELECT PRODUTO.ID AS CODIGO,
UNIDADE_PRODUTO.NOME AS UND,
PRODUTO.ID_TRIBUTACAO AS ST,
PRODUTO.DESCRICAO,
PRODUTO.VALOR_CUSTO AS PRECO_CUSTO,
PRODUTO.VALOR_VENDA AS PRECO_VENDA,
NCM.CODIGO AS COD_NCM,
PRODUTO.OBSERVACAO,
PRODUTO.COD_CEST AS PERSONAL6,
MAX(ESTOQUE_GRADE.GTIN) AS BARRAS,
SUM(ESTOQUE_GRADE.QTD_ESTOQUE) AS QTD
FROM PRODUTO
LEFT JOIN UNIDADE_PRODUTO ON PRODUTO.ID_UNIDADE_PRODUTO=UNIDADE_PRODUTO.ID
LEFT JOIN ESTOQUE_GRADE ON PRODUTO.ID=ESTOQUE_GRADE.ID_PRODUTO
LEFT JOIN NCM ON PRODUTO.ID_NCM = NCM.id_ncm
GROUP BY 1,2,3,4,5,6,7,8,9