select
  p.cd AS CODIGO,
  p.nm AS DESCRICAO,
  p.vl AS PRECO_VENDA,
  p.estoque AS QTD,
  p.unid AS UND,
  p.preco_custo AS preco_custo,
  p.icms AS ST
from
  produto p
where
  p.cd > 0