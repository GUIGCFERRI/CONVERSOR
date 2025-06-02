SELECT
    PRODUTO.codigo AS CODIGO,
    PRODUTO.descricao AS DESCRICAO,
    PRODUTO.sigla_unidade AS UND,
    PRODUTO.codigo_barra AS BARRAS,
    PRODUTO.quantidade AS QTD,
    PRODUTO.valor AS PRECO_VENDA,
    PRODUTO.preco_custo AS PRECO_CUSTO,
    PRODUTO.margem_lucro AS MARGEM_LUCRO,
    PRODUTO.ncm AS COD_NCM,
    PRODUTO.observacao AS OBSERVACOES,
    PRODUTO.cest AS PERSONAL6
FROM PRODUTO
