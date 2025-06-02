	SELECT 
     -- PRODUTO.idProduto
      PRODUTO.Descricao
      ,PRODUTO.DiasValidadeBalanca AS VALIDADE_DIAS
      ,PRODUTO.DiasValidadeBalanca AS OBSERVACOES
      ,PRODUTOGRUPO.Descricao AS GRUPO
      ,PRODUTOSUBGRUPO.Descricao AS CARACTERISTICAS
      ,PRODUTOFABRICANTE.Descricao AS FAMILIA
      ,ProdutoUnidade.unidade as und
      ,PRODUTOncm.NCM as cod_ncm
      ,PRODUTOCEST.CEST AS PERSONAL6
      --,PRODUTOQTD.Qtd AS QTD
      --,PRODUTO.CodigoBalanca as cod_fabricante
	  ,ProdutoPreco.PrecoCusto as preco_custo
	  ,ProdutoPreco.PrecoVenda as preco_venda
	   ,MAX(ProdutoEan.EAN) as barras
  FROM Comercio.dbo.Produto
  left join Comercio.DBO.ProdutoGrupo ON PRODUTO.idGrupo = PRODUTOGRUPO.idGrupo
  LEFT JOIN Comercio.dbo.ProdutoSubGrupo on produto.idSubGrupo = ProdutoSubGrupo.idSubGrupo
  left join Comercio.dbo.ProdutoUnidade on produto.idProdutoUnidade = ProdutoUnidade.idProdutoUnidade
  left join comercio.dbo.ProdutoFabricante on produto.idFabricante = produtofabricante.idFabricante 
  left join comercio.dbo.ProdutoCEST on produto.idProdutoCEST = produtocest.idProdutoCEST 
  left join Comercio.dbo.ProdutoNCM on produto.idProdutoNCM = ProdutoNCM.idProdutoNCM
  --LEFT JOIN COMERCIO.DBO.ProdutoQtd ON PRODUTO.idProduto = PRODUTOQTD.idProduto 
  left join Comercio.dbo.ProdutoEan on produto.idProduto = ProdutoEan.idProduto 
  left join Comercio.dbo.ProdutoPreco on produto.idProduto = ProdutoPreco.idProduto
  GROUP BY 
      PRODUTO.Descricao
     ,PRODUTO.DiasValidadeBalanca
     ,PRODUTOGRUPO.Descricao
     ,PRODUTOSUBGRUPO.Descricao
     ,PRODUTOFABRICANTE.Descricao
     ,ProdutoUnidade.unidade
     ,PRODUTOncm.NCM
     ,PRODUTOCEST.CEST
     ,ProdutoPreco.PrecoCusto
     ,ProdutoPreco.PrecoVenda;