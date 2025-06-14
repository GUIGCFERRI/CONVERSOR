SELECT
    PRODUTOS.CODIGO AS BARRAS,
    PRODUTOS.NOME AS DESCRICAO,
    PRODUTOS.SITUACAO_TRIBUTARIA AS ST,
    PRODUTOS.UNIDADE_VENDA AS UND,
    PRODUTOS.UNIDADE_COMPRA AS UND_COMPRA,
    PRODUTOS.ESTOQUE AS QTD,
    PRODUTOS.PRECO_CUSTO,
    PRODUTOS.PRECO_VENDA1 AS PRECO_VENDA,
    TABELA_NCM.CODIGO_NCM,
    PRODUTOS.CODIGO_CEST AS PERSONAL6
FROM PRODUTOS
LEFT JOIN TABELA_NCM ON PRODUTOS.CODIGO_NCM = TABELA_NCM.COD_ITEM
