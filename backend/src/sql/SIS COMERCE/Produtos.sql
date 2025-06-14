SELECT
    PRODUTO.ID AS CODIGO,
    PRODUTO_GRUPO.NOME AS GRUPO,
    PRODUTO.REFERENCIA AS COD_FABRICANTE,
    PRODUTO.DESCRICAO AS DESCRICAO,
    PRODUTO.CODIGO_BARRA AS BARRAS,
    PRODUTO.UNID_MED AS UND,
    PRODUTO.VALOR_COMPRA AS PRECO_CUSTO,
    PRODUTO.VALOR_VENDA AS PRECO_VENDA,
    PRODUTO.QUANTIDADE_ESTOQUE AS QTD,
    MIN (CST.CODIGO) AS ST,
    replace(PRODUTO.COD_NCM,'.','') AS COD_NCM,
    PRODUTO.COD_CEST AS PERSONAL6,
    PRODUTO.QUANTIDADE_ESTOQUE_MINIMO,
    PRODUTO.OBSERVACAO AS OBSERVACOES
FROM PRODUTO
LEFT JOIN PRODUTO_GRUPO ON PRODUTO_GRUPO.ID = PRODUTO.GRUPO_ID
LEFT JOIN TRIBUTACAO_ICMS ON TRIBUTACAO_ICMS.ORIGEM_MERCADORIA = PRODUTO.ORIGEM_MERCADORIA
LEFT JOIN CST ON CST.ID = TRIBUTACAO_ICMS.CST_ID
GROUP BY 1,2,3,4,5,6,7,8,9,11,12,13,14
