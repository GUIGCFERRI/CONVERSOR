SELECT
    PRODUTOS.CODIGO AS COD_FABRICANTE,
    PRODUTOS.DESCRICAO AS DESCRICAO,
    BARRAS.BARRAS AS BARRAS,
    BARRAS.QTD AS QTD,
    PRODUTOS.CMEDIO AS CUSTO_MEDIO,
    PRODUTOS.CREPOSICAO AS PRECO_CUSTO,
    PRODUTOS.PRECO1 AS PRECO_VENDA,
    PRODUTOS.UNIDADE AS UND,
    CAST (PRODUTOS.DATAPRECO AS DATE) AS ALTERACAO_PRECO,
    PRODUTOS.ATIVO,
    PRODUTOS.CFOP AS CF,
    PRODUTOS.NCM AS COD_NCM,
    PRODUTOS.CEST AS PERSONAL6,
    SUBSTRING (PRODUTOS.SITRIB FROM 1 FOR 1) AS OST,
    SUBSTRING (PRODUTOS.SITRIB FROM 2 FOR 3) AS ST,
    BARRAS.CAMPO1 AS PERSONAL4,
    BARRAS.CAMPO2 AS PERSONAL5
FROM PRODUTOS
LEFT JOIN BARRAS ON BARRAS.PRODUTO = PRODUTOS.CODIGO