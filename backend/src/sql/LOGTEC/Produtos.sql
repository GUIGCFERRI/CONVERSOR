SELECT
    PRODUTO.cod_produto AS CODIGO,
    PRODUTO.des_produto AS DESCRICAO,
   PRODUTO.des_produto AS OBSERVACOES,
    PRODUTO.cod_referencia AS CARACTERISTICAS,
    grupo_produto.DES_GRUPO AS GRUPO,
    PRODUTO.cod_unidade AS UND,
    PRODUTO.pes_liquido AS PESO,
    produto_estoque.saldo_estoque as qtd,
    FORNECEDOR.RAZ_FORNECE AS FORNECEDOR,
    PRODUTO.cod_barra AS BARRAS,
    PRODUTO.cod_estruturado AS COD_FABRICANTE,
    PRODUTO.vlr_custo_aquis AS PRECO_CUSTO,
    PRODUTO.vlr_custo_medio AS CUSTO_MEDIO,
    PRODUTO.per_lucro AS MARGEM_LUCRO,
    PRODUTO.vlr_venda1 AS PRECO_VENDA,
    cast (PRODUTO.dat_cadastro as date) AS DATA_CADASTRO,
    cast (PRODUTO.dat_alteracao as date) AS ALTERACAO_PRECO,
    cast (PRODUTO.dat_ultcompra as date) AS ULTIMA_COMPRA,
    PRODUTO.cod_situacao AS ST
FROM PRODUTO
LEFT JOIN grupo_produto ON grupo_produto.COD_GRUPO = PRODUTO.COD_GRUPO
LEFT JOIN produto_estoque ON produto_estoque.cod_produto = produto.cod_produto
LEFT JOIN FORNECEDOR ON FORNECEDOR.COD_FORNECE = PRODUTO.COD_FORNECE
