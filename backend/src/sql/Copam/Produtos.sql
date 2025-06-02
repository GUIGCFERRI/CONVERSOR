SELECT 
       Produtos.Codigo as codigo
      ,Produtos.Descricao as descricao
      ,GrupoProdutos.descricao as grupo
      ,Marca.descricao as caracteristicas
      ,Produtos.Unidade as und
      ,Produtos.Numero as cod_fabricante
      ,Produtos.EAN as barras
      ,Produtos.Peso as peso
      ,ClientForn.descricao as fornecedor
      ,Produtos.Precovenda as preco_venda
      ,Produtos.PrecoCusto as preco_custo
      ,Produtos.AliqLucro as margem_lucro
      ,SubGrupo.descricao as familia
      ,Produtos.CstIcmsS as st
      ,Produtos.UltCompra as ultima_compra
      ,Produtos.UltVenda as ultima_venda
      ,Produtos.NCM as cod_ncm
      ,Produtos.DataAlt as alteracao_preco
      ,CEST.CodCEST as personal6
  FROM Copam.dbo.Produtos
left join Copam.dbo.GrupoProdutos on GrupoProdutos.codigo = Produtos.Grupo
left join Copam.dbo.SubGrupo on SubGrupo.codigo = Produtos.SubGrupo
left join Copam.dbo.Marca on Marca.codigo = Produtos.Marca
left join Copam.dbo.ClientForn on ClientForn.codigo = Produtos.Fornecedor
left join Copam.dbo.CEST on CEST.codigo = Produtos.CEST