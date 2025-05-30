SELECT  tblProdutos.[idProduto] as codigo
      ,[CodigoBarras] as barras
      ,[CodigoBalanca] as cod_fabricante
      ,[NomeProduto] as descricao
      ,tblUnidadeMedida.Descricao as und
      ,[PrecoCusto] as preco_custo
	  ,tblPreco1.PrecoVenda as preco_venda
      ,[NCM] as cod_ncm
      ,[CEST] as personal6
      ,[CSOSN] as st
      ,[ST_PIS] as pis_codigo
      ,[ST_COFINS] as cofins_codigo
      ,[CustoMedio] as custo_medio
      ,[SaldoAtual] as qtd
  FROM [SIG].[dbo].[tblProdutos]
  left join [SIG].[dbo].[tblPreco1] on tblProdutos.idProduto = tblPreco1.idProduto
  left join [SIG].[dbo].[tblUnidadeMedida] on tblProdutos.idUND = tblUnidadeMedida.idUND