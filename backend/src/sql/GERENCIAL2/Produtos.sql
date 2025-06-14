SELECT
    ESTOQUE.CODIGO_PRODUTO AS COD_FABRICANTE,
    ESTOQUE.CODIGO_BARRA AS BARRAS,
    ESTOQUE.DESCRICAO_PRODUTO AS DESCRICAO,
    ESTOQUE.REFERENCIA_PRODUTO AS PERSONAL1,
    ESTOQUE.MARCA_PRODUTO AS CARACTERISTICAS,
    GRUPOS.DESCRICAO_GRUPO AS GRUPO,
    SUM(ESTOQUE_SALDO.SALDO) AS QTD,
    GRUPOS_ITENS.DESCRICAO_GRUPO AS FAMILIA,
    ESTOQUE.UNIDADE AS UND,
    ESTOQUE.CST AS ST,
    ESTOQUE.PRECO_CUSTO,
    ESTOQUE.CUSTO_MEDIO,
    ESTOQUE.PRECO_VENDA,
    ESTOQUE.NCM AS COD_NCM
--    ESTOQUE.CEST AS PERSONAL6
FROM ESTOQUE
LEFT JOIN GRUPOS ON ESTOQUE.GRUPO = GRUPOS.CODIGO_GRUPO
LEFT JOIN ESTOQUE_SALDO ON ESTOQUE.CODIGO_PRODUTO = ESTOQUE_SALDO.CODIGO_PRODUTO
LEFT JOIN GRUPOS_ITENS ON ESTOQUE.SUB_GRUPO = GRUPOS_ITENS.CODIGO_GRUPO_ITEN
GROUP BY
    ESTOQUE.CODIGO_PRODUTO,
    ESTOQUE.CODIGO_BARRA,
    ESTOQUE.DESCRICAO_PRODUTO,
    ESTOQUE.REFERENCIA_PRODUTO,
    ESTOQUE.MARCA_PRODUTO,
    GRUPOS.DESCRICAO_GRUPO,
    GRUPOS_ITENS.DESCRICAO_GRUPO,
    ESTOQUE.UNIDADE,
    ESTOQUE.CST,
    ESTOQUE.PRECO_CUSTO,
    ESTOQUE.CUSTO_MEDIO,
    ESTOQUE.PRECO_VENDA,
    ESTOQUE.NCM
