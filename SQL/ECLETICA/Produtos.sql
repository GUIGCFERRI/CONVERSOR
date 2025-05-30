select
  produtos.cod_item as codigo,
  grupos.descr_grupo as grupo,
  produtos.descr_item as descricao,
  produtos.vlr_unit as preco_venda,
  unidfis.descrunid as und,
  produtos.situacao_trib as st,
  produtos.peso_liquido as peso,
  produtos.ncm as cod_ncm,
  produtos.data_ult_alteracao as ultima_alteracao,
  produtos.cest as personal6
from produtos
left join grupos on grupos.cod_grupo = produtos.cod_grupo
left join unidfis on unidfis.codunid = produtos.cod_unid