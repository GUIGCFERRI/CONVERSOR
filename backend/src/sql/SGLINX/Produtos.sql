select
  es1p.es1_cod as codigo,
  es1p.es1_codbarra as barras,
  es1p.es1_desc as descricao,
  es1_um as und,
  st_familia.tab_desc as grupo,
  es1_pesol as peso,
  es1_estminimo as qtd_ideal,
  es2_qatu as qtd,
  es1_prcusto as preco_custo,
  es1_prcustomedio as custo_medio,
  es1_prvarejo as preco_venda,
  es1_pratacado as preco_atacado,
  substring(es1_st from 1 for 1) as ost,
  substring(es1_st from 2 for 3) as st,
  es1_observacao as observacoes,
  es1_dtcad as data_cadastro,
  es1_dtultprcompra as ultima_compra,
  es1_ultvenda as ultima_venda,
  es1_dtpralterado as alteracao_preco,
  es1_ncm as cod_ncm,
  replace(es1_cest,'.','') as personal6,
  case when es1_ativo = '1' then 'Ativo' else 'Inativo' end as SITUACAO
from es1p
left join st_familia on st_familia.tab_cod = es1p.es1_familia
left join es1 on es1.es1_cod = es1p.es1_cod
