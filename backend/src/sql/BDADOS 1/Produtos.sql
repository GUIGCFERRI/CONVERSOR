SELECT
    PRODUTO.CODPRODUTO AS CODIGO,
    PRODUTO.STRREFERENCIA1 AS BARRAS,
    PRODUTO.STRDESCRICAO AS DESCRICAO,
    PRODUTO.NVALORCUSTO AS PRECO_CUSTO,
    SUBGRUPO.STRSUBGRUPO AS GRUPO,
    PRODUTO.NVALORVENDA1 AS PRECO_VENDA,
    PRODUTO.NESTOQUEATUAL AS QTD,
    UNIDADE.STRUNIDADE AS UND,
    PRODUTO.STRNCM AS COD_NCM,
    PRODUTO.STRCSOSN AS ST
FROM PRODUTO
LEFT JOIN SUBGRUPO ON PRODUTO.CODSUBGRUPO = SUBGRUPO.CODSUBGRUPO
LEFT JOIN UNIDADE ON PRODUTO.CODUNIDADE =  UNIDADE.CODUNIDADE
