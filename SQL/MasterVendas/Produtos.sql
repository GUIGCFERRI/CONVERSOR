SELECT 
       Produto.Identificador as codigo
      ,Produto.Descricao as descricao
      ,Unidade.nome as und
      ,Produto.PrecoCompra as preco_custo
      ,Produto.PrecoVenda as preco_venda
      ,Produto.NCMSH as cod_ncm
      ,Produto.CFOP as cf
      ,Grupo.nome as grupo
      ,SubGrupo.nome as familia
      ,Produto.Origem as ost
      ,Produto.SitTributaria as st
      ,Produto.CodBarras as barras
      ,Estoque.Quantidade as qtd
      ,Produto.CEST as personal6
      ,cast (Produto.DataCriacao as date) as data_cadastro
  FROM MasterVendas.dbo.Produto
left join MasterVendas.dbo.Unidade on Unidade.Identificador = Produto.unidade
left join MasterVendas.dbo.Grupo on Grupo.Identificador = Produto.Grupo
left join MasterVendas.dbo.Subgrupo on Subgrupo.Identificador = Produto.SubGrupo
left join MasterVendas.dbo.Estoque on Estoque.ProdutoId = Produto.Id