SELECT PRODUTO.idProduto AS CODIGO
      ,PRODUTO.DescProduto AS DESCRICAO
      ,PRODUTO.QTDE AS QTD
      ,PRODUTO.qtdeMin AS QTD_IDEAL
      ,PRODUTO.CodBarras AS BARRAS
      ,PRODUTO.Valor AS PRECO_VENDA
      ,PRODUTO.Vlrcusto AS PRECO_CUSTO
      ,PRODUTO.MargemGanho AS MARGEM_LUCRO
	  ,ProdutoTributos.ncm AS COD_NCM
	  ,cstProduto.Codigo


  FROM SISMEGASAT.dbo.Produto
  LEFT JOIN SISMEGASAT.dbo.ProdutoTributos ON PRODUTO.idProduto = ProdutoTributos.idProduto
  LEFT JOIN SISMEGASAT.dbo.cstProduto ON ProdutoTributos.idCst = cstProduto.idCST