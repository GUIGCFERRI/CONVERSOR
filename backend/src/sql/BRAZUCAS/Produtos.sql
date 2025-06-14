SELECT
    PRODUTO.PRODUTO AS COD_FABRICANTE,
    --PRODUTO.PRODUTO AS CODIGO,
    GRUPO.NOME AS GRUPO,
    PRODUTO.NOME AS DESCRICAO,
    PRODUTO.COMPLEMENTO AS CARACTERISTICAS,
    PRODUTO.VOLUME AS UND,
    MAX (ESTOQUE.VRUCOM) AS PRECO_CUSTO,
    MAX (ESTOQUE.VRVEND) AS PRECO_VENDA,
    ESTOQUE.ESTMIN AS QTD_IDEAL,
    MAX (ESTOQUE.QTDESTOQUE) AS QTD,
    TRIBUTACAO.CST AS ST,
    PRODUTO.OBS AS OBSERVACOES
FROM PRODUTO
LEFT JOIN TRIBUTACAO ON TRIBUTACAO.TRIBUTACAO = PRODUTO.TRIBUTACAO
LEFT JOIN ESTOQUE ON ESTOQUE.PRODUTO = PRODUTO.PRODUTO
LEFT JOIN GRUPO ON GRUPO.GRUPO = PRODUTO.GRUPO
GROUP BY 1,2,3,4,5,8,10,11
