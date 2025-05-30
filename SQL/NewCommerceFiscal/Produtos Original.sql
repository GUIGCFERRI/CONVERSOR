SELECT 
       Produtos.ID as codigo
      ,Produtos.Descricao as descricao
      ,Produtos.CodigoBarra as barras
      ,UnidadeMedida.Abreviacao as und
      ,UnidadeMedida.Abreviacao as und_compra
      ,Grupo.descricao as grupo
      ,SubGrupo.descricao as familia
      ,Produtos.PrecoCusto as preco_custo
      ,Produtos.PrecoCustoMedio as custo_medio
      ,Produtos.PrecoVenda as preco_venda
      ,Produtos.EstoqueMinimo as qtd_ideal
      ,Estoque.Quantidade as qtd
      ,min (substring (Produtos_Tributacao.CST,1,1)) as ost
      ,min (substring (Produtos_Tributacao.CST,2,3)) as st
      ,NCM.Numero as cod_ncm
      ,Produtos.CEST as personal6
      ,Produtos.Referencia as cod_fabricante
      ,Produtos.Dt_UltimaAlteracao as alteracao_preco
  FROM NewCommerce.dbo.Produtos
left join NewCommerce.dbo.Grupo on Grupo.id = Produtos.ID_Grupo 
left join NewCommerce.dbo.SubGrupo on SubGrupo.id = Produtos.ID_SubGrupo 
left join NewCommerce.dbo.NCM on NCM.id = Produtos.ID_NCM
left join NewCommerce.dbo.UnidadeMedida on UnidadeMedida.id = Produtos.ID_UnidadeMedida
left join NewCommerce.dbo.Produtos_Tributacao on Produtos_Tributacao.ID_CST_Saida = Produtos.ID_CST_Saida
left join NewCommerce.dbo.Estoque on Estoque.ID_Produtos = Produtos.ID
group by
       Produtos.ID
      ,Produtos.Descricao
      ,Produtos.CodigoBarra
      ,UnidadeMedida.Abreviacao
      ,UnidadeMedida.Abreviacao
      ,Grupo.descricao
      ,SubGrupo.descricao
      ,Produtos.PrecoCusto
      ,Produtos.PrecoCustoMedio
      ,Produtos.PrecoVenda
      ,Produtos.EstoqueMinimo
      ,Estoque.Quantidade
      ,NCM.Numero
      ,Produtos.CEST
      ,Produtos.Referencia
      ,Produtos.Dt_UltimaAlteracao
