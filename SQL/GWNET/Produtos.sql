SELECT
       Produto.produtoID as codigo
      ,Produto.cd_ref as cod_fabricante
      ,Produto.ds_completa as descricao
	  ,(select top 1 viewPrecoProduto.ean from viewPrecoProduto where Produto.produtoID = viewPrecoProduto.produtoID order by viewPrecoProduto.precodt desc) as barras
	  --,viewEstoqueProdutoCusto.qtd as qtd
      --,ProdutoEan.ean as barras
      ,Produto.ds_resumida as caracteristicas
      ,cast (Produto.dt_cadastro as date) as data_cadastro
      ,cast (Produto.Dt_Alteracao as date) as alteracao_preco
      ,Produto.peso as peso
      ,(select top 1 viewEstoqueProdutoCusto.qtd from viewEstoqueProdutoCusto where Produto.produtoID = viewEstoqueProdutoCusto.produtoID order by viewEstoqueProdutoCusto.DataAlteracao desc) as qtd
      ,(select top 1 viewPrecoProduto.preco from viewPrecoProduto where Produto.produtoID = viewPrecoProduto.produtoID order by viewPrecoProduto.precodt desc) as preco_venda
      ,(select top 1 viewPrecoProduto.markup from viewPrecoProduto where Produto.produtoID = viewPrecoProduto.produtoID order by viewPrecoProduto.precodt desc) as margem_lucro
      ,(select top 1 viewEstoqueProdutoCusto.CustoMedio from viewEstoqueProdutoCusto where Produto.produtoID = viewEstoqueProdutoCusto.produtoID order by viewEstoqueProdutoCusto.dataalteracao desc) as custo_medio
      ,(select top 1 viewEstoqueProdutoCusto.CustoUltimaCompra from viewEstoqueProdutoCusto where Produto.produtoID = viewEstoqueProdutoCusto.produtoID order by viewEstoqueProdutoCusto.dataalteracao desc) as preco_custo
      ,Produto.nbm_sh as cod_ncm
      ,Grupo.ds_grupo as Grupo
      ,Unidade. ds_unidade as UND
      ,Produto.Obs as observacoes
      ,Produto.Cest as personal6
  FROM gwnet.dbo.Produto
  LEFT JOIN gwnet.dbo.Grupo ON Grupo.grupoid = gwnet.dbo.Produto.GrupoID 
  LEFT JOIN gwnet.dbo.Unidade ON Unidade.UnidadeID = gwnet.dbo.Produto.UnidadeID 
  LEFT JOIN Gwnet.dbo.ProdutoEan on Produto.produtoID = ProdutoEan.produto_gradeID
  LEFT JOIN Gwnet.dbo.viewPrecoProduto on Produto.produtoID = viewPrecoProduto.produtoID
  --LEFT JOIN Gwnet.dbo.viewEstoqueProdutoCusto on Produto.produtoID = viewEstoqueProdutoCusto.produtoID
  where viewPrecoProduto.PrecoTabelaId = '1' --and Produto.cd_ref = '000699'----VERIFICAR A TABELA DE PRECO UTILIZADA --Produto.produtoID = '18258' and Produto.cd_ref = '008047'  and 
 
