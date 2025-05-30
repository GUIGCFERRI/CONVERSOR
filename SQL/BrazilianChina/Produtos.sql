SELECT 
       Produto.Id as Codigo
      ,UnidadeMedida.sigla as UND
      ,Produto.CodigoBarra as Barras
      ,Produto.DataCadastro as Data_Cadastro
      ,NCM.Codigo as COD_NCM
      ,Produto.Nome as Descricao
      ,Produto.NomeReduzido as Caracteristicas
      ,CustoProduto.ValorCusto as Preco_Custo
      ,CEST.Codigo as Personal6
      ,PrecoProduto.Valor as Preco_Venda
      ,PrecoProduto.PercentualMargemLucro as Margem_Lucro
  FROM BrazilianChina.dbo.Produto
  LEFT JOIN BrazilianChina.dbo.UnidadeMedida on UnidadeMedida.Id = Produto.IdUnidadeMedida
  LEFT JOIN BrazilianChina.dbo.CEST on CEST.Id = Produto.IdCEST
  LEFT JOIN BrazilianChina.dbo.NCM on NCM.Id = Produto.IdNCM
  LEFT JOIN BrazilianChina.dbo.PrecoProduto on PrecoProduto.IdProduto = Produto.Id
  LEFT JOIN BrazilianChina.dbo.CustoProduto on CustoProduto.IdProduto = Produto.Id
