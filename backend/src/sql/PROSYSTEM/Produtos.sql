SELECT
  produto.codigo AS CODIGO,
  produto.nome AS DESCRICAO,
  grupo_produto.DESCRICAO AS GRUPO,
  produto_cod_barra.COD_BARRA AS BARRAS,
  produto.unidade AS UND,
  ESTOQUE.ESTOQUE AS QTD,
  produto.custo AS PRECO_CUSTO,
  produto.obs AS OBSERVACOES,
  produto.lucro AS MARGEM_LUCRO,
  cast(produto.cadastro as date) AS DATA_CADASTRO,
  produto.referencia AS COD_FABRICANTE,
  produto.venda AS PRECO_VENDA,
  cast(produto.alteracao_preco as date) AS ALTERACAO_PRECO,
  produto.ncm AS COD_NCM,
  produto.peso_liquido AS PESO,
  produto.csosn AS ST,
  produto.cest AS PERSONAL6 
FROM produto
LEFT JOIN grupo_produto ON grupo_produto.CODIGO = PRODUTO.GRUPO
LEFT JOIN produto_cod_barra ON produto_cod_barra.PRODUTO = PRODUTO.CODIGO
LEFT JOIN ESTOQUE ON ESTOQUE.PRODUTO = PRODUTO.CODIGO
