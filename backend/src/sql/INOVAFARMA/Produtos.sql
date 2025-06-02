SELECT
       p.CodigoProduto as codigo
      ,p.CodigoBarra as barras
      ,p.NomeProduto as descricao
      ,pf.NomeFabricante as caracteristicas
      ,pg.NomeGrupo as grupo
      ,cast (p.DataCadastro as date) as data_cadastro
      ,pe.PrecoCusto as preco_custo
      ,pe.Lucro as margem_lucro
      ,pe.PrecoVenda as preco_venda
      ,cast (pe.UltimaCompra as date) as ultima_compra
      ,cast (pe.UltimaVenda as date) as ultima_venda
      ,pe.Estoque as qtd
      ,pe.EstoqueMinimo as qtd_ideal
      ,case when pe.Ativo = '1' then 'Ativo' else 'Inativo' end as SITUACAO
      ,pe.Ativo
      ,substring (pnt.CodigoTabela, 1,1) as ost
      ,substring (pnt.CodigoTabela, 2,3) as ost
      ,cast (pe.DataUltimaAlteracao as date) as alteracao_preco
      ,p.RegistroMS as personal2
      ,p.QuantidadePorEmbalagem as fat_conv
      ,p.CodigoAntigo as cod_fabricante
      ,p.UnidadeCompra as und_compra
      ,p.UnidadeVenda as und
      ,p.NCM as cod_ncm
      ,p.CEST as personal6
  FROM farmaciaipira.dbo.Produto as p
left join farmaciaipira.dbo.Produto_Fabricante pf on p.CodigoFabricante = pf.codigofabricante
left join farmaciaipira.dbo.Produto_Grupo pg on p.CodigoGrupo = pg.CodigoGrupo
left join farmaciaipira.dbo.Produto_Estoque pe on p.CodigoProduto = pe.CodigoProduto  
left join farmaciaipira.dbo.Produto_NCM_Tributo pnt on pe.CodigoTributo = pnt.CodigoTributo