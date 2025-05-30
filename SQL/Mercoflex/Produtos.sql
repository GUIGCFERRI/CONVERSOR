select
  e.id as codigo,
  e.codbarra as barras,
  e.descricao as descricao,
  e.unidade as und,
  s.descricao as grupo,
  q.quant as qtd,
  q.estminimo as qtd_ideal,
  e.pesoliq as peso,
  q.precocusto as preco_custo,
  q.precomedio as custo_medio,
  q.perclucro as margem_lucro,
  q.precovenda as preco_venda,
  t.st as st,
  e.referencia as cod_fabricante,
  e.cfiscal as cod_ncm,
  e.cest as personal6,
  cast(q.dtultvenda as date) as ultima_venda,
  cast(q.dtultreaj as date) as alteracao_preco,
  cast(e.cadastro as date) as data_cadastro
from estoque as e
left join setor s on e.setor = s.id
left join tributa t on e.tributa = t.id 
left join saldos q on e.cdprod = q.cdprod
