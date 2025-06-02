SELECT
  Produtos.CodigoProduto AS CODIGO,
  REPLACE (Produtos.CodigoBarras, '|' , '') AS BARRAS,
  Produtos.Descricao AS DESCRICAO,
  produtos_grupos.descricao as GRUPO,
  REPLACE (Produtos.NCM_SH, '.' , '') AS COD_NCM,
  Produtos.TributacaoST AS ST,
  Produtos.Unidade AS UND,
  Produtos.PrecoVenda AS PRECO_VENDA,
  Produtos.Margem AS MARGEM_LUCRO,
  Produtos.Comissao AS COMISSÃO,
  Produtos.Observacao AS OBSERVACOES,
  Produtos.EstQuantidade_000001 AS QTD,
  Produtos.UCusto_NotaFiscalGeral AS PRECO_CUSTO,
  Produtos.MCusto_NotaFiscalGeral AS CUSTO_MEDIO
FROM PRODUTOS
LEFT JOIN produtos_grupos ON produtos_grupos.codigo = produtos.grupo
where produtos.CodigoProduto is not null
