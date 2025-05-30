SELECT 
       EstoqueMercadorias.Codigo as codigo
      ,EstoqueMercadorias.NomeMercadoria as descricao
      ,MAX (barras.barra) as barras
      ,EstoqueMercadorias.Referencia as cod_fabricante
      ,EstoqueMercadorias.Custo as preco_custo
      ,MAX (TabPrecoItens.preco) as preco_venda
      ,EstoquePDV.quantidade as qtd
      ,EstoqueMercadorias.Unidade as und
      ,EstoqueMercadorias.Margem as margem_lucro
      ,Grupos.nomegrupo as grupo
      ,SubGrupos.nomesubgrupo as familia
      ,EstoqueMercadorias.EstoqueMinimo as qtd_ideal
      ,substring (EstoqueMercadorias.CST, 2,3) as st
      ,EstoqueMercadorias.NCM as cod_ncm
      ,EstoqueMercadorias.PesoLiquido  as peso
      ,EstoqueMercadorias.CEST as personal6
  FROM bdroberto.dbo.EstoqueMercadorias
left join bdroberto.dbo.EstoquePDV on EstoquePDV.codigomercadoria = EstoqueMercadorias.Codigo
left join bdroberto.dbo.Grupos on grupos.codigo = EstoqueMercadorias.Grupo
left join bdroberto.dbo.SubGrupos on subgrupos.codigo = EstoqueMercadorias.SubGrupo
left join bdroberto.dbo.Barras on barras.mercadoria = EstoqueMercadorias.Codigo
left join bdroberto.dbo.TabPrecoItens on TabPrecoItens.mercadoria = EstoqueMercadorias.Codigo
GROUP BY 
       EstoqueMercadorias.Codigo
      ,EstoqueMercadorias.NomeMercadoria
      ,EstoqueMercadorias.Referencia
      ,EstoqueMercadorias.Custo
      --,TabPrecoItens.precO
      ,EstoquePDV.quantidade
      ,EstoqueMercadorias.Unidade
      ,EstoqueMercadorias.Margem
      ,Grupos.nomegrupo
      ,SubGrupos.nomesubgrupo
      ,EstoqueMercadorias.EstoqueMinimo
      ,EstoqueMercadorias.CST
      ,EstoqueMercadorias.NCM
      ,EstoqueMercadorias.PesoLiquido
      ,EstoqueMercadorias.CEST
