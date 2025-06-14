SELECT
    PRODUTO.CODPRODUTO AS CODIGO,
    PRODUTO.PRO_CODPESQ_1 AS BARRAS,
    PRODUTO.PRO_DESCRICAO AS DESCRICAO,
    PRODUTO_GRUPO.PROG_DESCRICAO AS GRUPO,
    PRODUTO_UNIDADE.PROU_SIGLA AS UND,
    PRODUTO.PRO_ESTQ_ATUAL AS QTD,
    PRODUTO.PRO_PRECO01 AS PRECO_VENDA,
    PRODUTO.PRO_NCM AS COD_NCM,
    PRODUTO.PRO_CSOSN AS ST,
    PRODUTO.PRO_CEST AS PERSONAL6
FROM PRODUTO
LEFT JOIN PRODUTO_GRUPO ON PRODUTO.CODPRODUTOGRUPO = PRODUTO_GRUPO.CODPRODUTOGRUPO
LEFT JOIN PRODUTO_UNIDADE ON PRODUTO.CODPRODUTOUNIDADE = PRODUTO_UNIDADE.CODPRODUTOUNIDADE
