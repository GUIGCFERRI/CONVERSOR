SELECT
    ESTOQUE.CODIGO AS CODIGO,
    ESTOQUE.CODBARRA AS BARRAS,
    ESTOQUE.REFERENCIA AS COD_FABRICANTE,
    ESTOQUE.DESCRICAO AS DESCRICAO,
    GRUPO.NOME AS GRUPO,
    ESTOQUE.QTDE AS QTD,
    ESTOQUE.PRECOCUSTO AS PRECO_CUSTO,
    ESTOQUE.PRECOVENDA AS PRECO_VENDA,
    ESTOQUE.MED AS UND,
    ESTOQUE.COD_NCM AS COD_NCM,
    ESTOQUE.COD_PIS AS PIS_CODIGO,
    ESTOQUE.COD_COFINS AS COFINS_CODIGO,
    ESTOQUE.CSOSN_CODIGO AS ST,
    ESTOQUE.MARCA AS FAMILIA
FROM ESTOQUE
LEFT JOIN GRUPO ON ESTOQUE.CODGRUPO = GRUPO.CODIGO