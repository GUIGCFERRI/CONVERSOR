SELECT GERAL.dbo.Produto.Codigo
      ,GERAL.dbo.Produto.Nome AS DESCRICAO
      ,GERAL.dbo.ProdutoBarra.Barra AS BARRAS
      ,GERAL.dbo.Produto.Unidade AS UND
      ,GERAL.dbo.Produto.Referencia AS COD_FABRICANTE
      ,GERAL.dbo.Produto.NCM AS COD_NCM
      ,GERAL.dbo.Produto.EXPrecoVenda AS PRECO_VENDA
      ,GERAL.dbo.Produto.QuantidadeTotal AS QTD
      ,GERAL.dbo.Produto.CodigoCEST AS PERSONAL6
      ,cast (GERAL.dbo.Produto.DataAlt as date) as alteracao_preco
      ,cast (GERAL.dbo.Produto.DataCadastro as date) as data_cadastro
  FROM GERAL.dbo.Produto
  LEFT JOIN GERAL.dbo.ProdutoBarra ON PRODUTO.CODIGO = PRODUTOBARRA.Produto
