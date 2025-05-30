SELECT 
       p.id
      ,p.nome as descricao
      ,p.preco as preco_venda
      ,p.custo as preco_custo
      ,p.estoque as qtd
      ,case when p.ativo = 'S' then 'Ativo' else 'Inativo' end as situacao
      ,p.unidade as und
      ,p.NCM as cod_ncm
      ,p.CFOP as cf
      ,p.CEST as personal6
      ,p.csosn as st
      ,max (pb.codigo_barras) as barras
      ,p.referencia_interna as cod_fabricante
      ,p.codigo as codigo
      ,g.descricao as grupo
      ,p.pis_situacao as pis_codigo
      ,100.00 AS PIS_BASE_NOR
      ,p.cofins_situacao as cofins_codigo
      ,100.00 AS COFINS_BASE_NOR
  FROM OTIMA.dbo.produto as p
  left join OTIMA.dbo.grupo g on p.grupo_id = g.id
  left join OTIMA.dbo.produto_barras pb on p.id = pb.produto_id
  group by        
       p.id
      ,p.nome
      ,p.preco
      ,p.custo
      ,p.estoque
      ,p.ativo
      ,p.unidade
      ,p.NCM
      ,p.CFOP
      ,p.CEST
      ,p.csosn
      ,p.referencia_interna
      ,p.codigo
      ,g.descricao
      ,p.pis_situacao
      ,p.cofins_situacao
