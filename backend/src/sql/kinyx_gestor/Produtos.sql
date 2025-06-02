select
  produto.id as codigo,
  produto.codigo_barra as barras,
  produto.descricao as descricao,
  produto.estoque as qtd,
  produto.estoque_minimo as qtd_ideal,
  produto.marca as caracteristicas,
  produto.margem_lucro as margem_lucro,
  produto.ncm as cod_ncm,
  produto.valor_custo as preco_custo,
  produto.valor_venda as preco_venda,
  produto.cfop as cf,
  unidade.sigla as und,
  tributo.cst as st,
  produto.cest as personal6,
  produto.peso_liquido as peso
from produto
left join unidade on unidade.id = produto.unidade_id
left join tributo on tributo.id = produto.tributo_id
