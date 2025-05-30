select
  cadpro.codpro01 as codigo,
  cadgss.descgss00 as grupo,
  cadpro.descpro01 as descricao,
  cadpro.prevend01 as preco_venda,
  cadpro.estatu01 as qtd,
  cadpro.unidpro01 as und,
  cast(cadpro.dataalt01 as date) as alteracao_preco,
  cast(cadpro.datacad01 as date) as data_cadastro,
  replace(cadpro.codncm01,'.','') as cod_ncm,
  replace( cadpro.codcest01,'.','') as personal6
from cadpro
left join cadgss on cadgss.`codgss00` = cadpro.codgss01