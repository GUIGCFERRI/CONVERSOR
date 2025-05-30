select
  safpro.CODPRO as codigo,
  safpro.EAN as barras,
  safpro.DESPRO as descricao,
  safpro.UNIPRO as und,
  safpro.NMEFRN as fornecedor,
  g.desgpr as grupo,
  safpro.MARCA as caracteristicas,
  e.CCU001 as qtd,
  safpro.CUSPRO as preco_custo,
  safpro.CUSMED as custo_medio,
  safpro.VLPRO as preco_venda,
  tri.CODCST_SAI as st,
  safpro.DATCAD as data_cadastro,
  safpro.DATALT as alteracao_preco,
  safpro.CODNCM as cod_ncm,
  safpro.CODCEST as personal6,
  case when safpro.ATIVO = '1' then 'Ativo' else 'Inativo' end as SITUACAO
from safpro
left join safctb tri on safpro.CODCTB = tri.CODCTB
left join safqdt e on safpro.CODPRO = e.CODPRO
left join safgpr g on safpro.CODGPR = g.CODGPR
