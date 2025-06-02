SELECT
       Produto.cd_ref as codigo
      ,Produto.produtoID as cod_fabricante
      ,Produto.ds_completa as descricao
      ,min(ProdutoEan.ean) as barras
      ,Produto.ds_resumida as caracteristicas
      ,Produto.dt_cadastro as data_cadastro
      ,Produto.Dt_Alteracao as alteracao_preco
      ,Produto.peso as peso
      ,produtoEstoque.Qtd as QTD
      ,produto_preco.preco as Preco_Venda
      ,produtoEstoque.CustoMedio as Custo_Medio
      ,Produto.nbm_sh as cod_ncm
      ,Grupo.ds_grupo as Grupo
      ,Unidade. ds_unidade as UND
      ,min(CAST(Produto.Obs AS NVARCHAR(4000))) as observacoes
      ,Produto.Cest as personal6
  FROM GWERP.dbo.Produto
  LEFT JOIN GWERP.dbo.Grupo ON Grupo.grupoid = GWERP.dbo.Produto.GrupoID 
  LEFT JOIN GWERP.dbo.Unidade ON Unidade.UnidadeID = GWERP.dbo.Produto.UnidadeID 
  LEFT JOIN GWERP.dbo.produtoEstoque ON produtoEstoque.produto_gradeID = Produto.produtoID
  LEFT JOIN GWERP.dbo.produto_preco on produto_preco.produto_gradeID = Produto.produtoID
  left outer join GWERP.dbo.produto_grade ON produto_grade.produtoID = Produto.produtoID
  left outer join GWERP.dbo.ProdutoEan on ProdutoEan.produto_gradeID = produto_grade.produto_gradeID
  --where GWERP.dbo.produto_preco.PrecoTabelaId = '1'
  group by
       Produto.produtoID
      ,Produto.cd_ref
      ,Produto.ds_completa
      ,Produto.ds_resumida
      ,Produto.dt_cadastro
      ,Produto.Dt_Alteracao
      ,Produto.peso
      ,produtoEstoque.Qtd
      ,produto_preco.preco
      ,produtoEstoque.CustoMedio
      ,Produto.nbm_sh
      ,Grupo.ds_grupo
      ,Unidade. ds_unidade
      ,Produto.Cest