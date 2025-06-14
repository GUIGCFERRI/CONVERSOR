SELECT
    PRODUTO.NOME AS DESCRICAO,
    PRODUTO.PRODUTO AS BARRAS,
    PRODUTO.MARCA AS CARACTERISTICAS,
    PRODUTO.CODFAB AS COD_FABRICANTE,
    GRUPO.nome AS GRUPO,
    PRODUTO.VOLUME AS UND,
    PRODUTOFISCO.qtdestoque AS QTD,
    ESTOQUE.ESTMIN AS QTD_IDEAL,
    ESTOQUE.VRUCOM AS PRECO_CUSTO,
    ESTOQUE.VRVEND AS PRECO_VENDA,
    ESTOQUE.LUCRO AS MARGEM_LUCRO,
    PRODUTO.PESOLIQ AS PESO,
    SUBSTRING (PRODUTOFISCO.CST FROM 2 FOR 3) AS ST,
    CAST (PRODUTO.INCALT AS DATE) AS DATA_CADASTRO,
    PRODUTO.OBS AS OBSERVACOES
FROM PRODUTO
LEFT JOIN PRODUTOFISCO ON PRODUTOFISCO.PRODUTO = PRODUTO.PRODUTO
LEFT JOIN GRUPO ON GRUPO.grupo = PRODUTO.GRUPO
LEFT JOIN ESTOQUE ON ESTOQUE.produto = PRODUTO.produto
WHERE ESTOQUE.deposito = '1'