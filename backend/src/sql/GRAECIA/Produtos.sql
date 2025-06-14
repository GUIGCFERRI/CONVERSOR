SELECT PRODUTO.COD_PROD AS CODIGO,
PRODUTO.COD_FABRICA AS COD_FABRICANTE,
PRODUTO.COD_REFERENCIA AS PERSONAL1,
PRODUTO.COD_BARRAS AS BARRAS,
GRUPO_PRODUTO.DESCRICAO AS GRUPO,
PRODUTO.DESCRICAO_PROD AS DESCRICAO,
UNIDADE.UNIDADE_FISCAL AS UND,
PRODUTO.CUSTO_ENTRADA AS PRECO_CUSTO,
PRODUTO.PRECO1_VALOR AS PRECO_VENDA,
PRODUTO.DATA_CAD AS DATA_CADASTRO,
PRODUTO.QUANTIDADE_ACERTO AS QTD,
PRODUTO.EMBALAGEM_DESCRICAO AS CARACTERISTICAS
FROM PRODUTO
LEFT JOIN GRUPO_PRODUTO ON PRODUTO.COD_GRUPO_PROD=GRUPO_PRODUTO.COD_GRUPO_PROD
LEFT JOIN UNIDADE ON PRODUTO.COD_UNIDADE_SAIDA=UNIDADE.COD_UNIDADE

