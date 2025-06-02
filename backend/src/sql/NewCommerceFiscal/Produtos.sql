SELECT 
       Produtos.ID as codigo
      ,Produtos.Descricao as descricao
      ,Produtos.CodigoBarra as barras
      ,UnidadeMedida.Abreviacao as und
      ,UnidadeMedida.Abreviacao as und_compra
      ,Grupo.descricao as grupo
      ,SubGrupo.descricao as familia
      ,PrecoFilial.PrecoCusto as preco_custo
      ,PrecoFilial.PrecoCustoMedio as custo_medio
      ,PrecoFilial.PrecoVenda as preco_venda
      ,Produtos.EstoqueMinimo as qtd_ideal
      ,Estoque.Quantidade as qtd
      ,min (substring (Produtos_Tributacao.CST,1,1)) as ost
      ,min (substring (Produtos_Tributacao.CST,2,3)) as st
      ,NCM.Numero as cod_ncm
      ,Produtos.CEST as personal6
      ,Produtos.Referencia as cod_fabricante
      ,cast (Produtos.Dt_UltimaAlteracao as date) as alteracao_preco
      ,cast (Produtos.Dt_UltSaida as date) as ultima_venda
      ,cast (Produtos.Dt_UltEntrada as date) as ultima_compra
  FROM NewCommerce.dbo.Produtos
left join NewCommerce.dbo.Grupo on Grupo.id = Produtos.ID_Grupo 
left join NewCommerce.dbo.SubGrupo on SubGrupo.id = Produtos.ID_SubGrupo 
left join NewCommerce.dbo.NCM on NCM.id = Produtos.ID_NCM
left join NewCommerce.dbo.UnidadeMedida on UnidadeMedida.id = Produtos.ID_UnidadeMedida
left join NewCommerce.dbo.Produtos_Tributacao on Produtos_Tributacao.ID_CST_Saida = Produtos.ID_CST_Saida
left join NewCommerce.dbo.Estoque on Estoque.ID_Produtos = Produtos.ID
left join NewCommerce.dbo.PrecoFilial on PrecoFilial.ID = Produtos.ID
group by
       Produtos.ID
      ,Produtos.Descricao
      ,Produtos.CodigoBarra
      ,UnidadeMedida.Abreviacao
      ,UnidadeMedida.Abreviacao
      ,Grupo.descricao
      ,SubGrupo.descricao
      ,PrecoFilial.PrecoCusto
      ,PrecoFilial.PrecoCustoMedio
      ,PrecoFilial.PrecoVenda
      ,Produtos.EstoqueMinimo
      ,Estoque.Quantidade
      ,NCM.Numero
      ,Produtos.CEST
      ,Produtos.Referencia
      ,Produtos.Dt_UltimaAlteracao
      ,Produtos.Dt_UltSaida
      ,Produtos.Dt_UltEntrada
