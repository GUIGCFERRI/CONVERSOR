SELECT 
       P.CodigoProduto as codigo
      ,P.Descricao as descricao
      ,substring (B.barras,2,14) as barras
      ,P.UndSaida as und
      ,P.PesoLiquido as peso
      ,P.QuantidadeMinima as qtd_ideal
      ,E.estoque as qtd
      ,G.grupo as grupo
      ,F.familia as familia
      ,P.CustoAquisicao as preco_custo
      ,P.CustoMedio as custo_medio
      ,P.PercLucro as margem_lucro
      ,P.PrecoVenda as preco_venda
      ,P.Origem as ost
      ,P.CSOSN as st
      ,P.CstIpi as ipi_codigo
      ,P.Fabricante as cod_fabricante
      ,P.NCM as cod_ncm
      ,P.CEST as personal6
      ,case when P.Inativo = '0' then 'Ativo' else 'Inativo' end as SITUACAO
  FROM BDEspetinho.dbo.Produtos as P
  left join BDEspetinho.dbo.Produtos_Barras B on P.CodigoProduto = B.CodigoProduto
  left join BDEspetinho.dbo.Produtos_Lojas E on P.CodigoProduto = E.CodigoProduto
  left join BDEspetinho.dbo.Grupos G on P.CodigoGrupo = G.CodigoGrupo
  left join BDEspetinho.dbo.Familias F on P.CodigoFamilia = F.CodigoFamilia