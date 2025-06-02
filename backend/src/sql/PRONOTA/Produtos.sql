select
  cd.id as codigo,
  cd.codEan as barras,
  cd.codFabrica as cod_fabricante,
  cd.descricao as descricao,
  cd.codNcm as cod_ncm,
  cd.codCest as personal6,
  cd.precoCusto as preco_custo,
  cd.preco1 as preco_venda,
  ee.quantidade as qtd,
  cd.pesoLiquido as peso,
  case when cd.inativo = 'N' then 'Ativo' else 'Inativo' end as SITUACAO,
  cast(cd.dtAlteracao as date) as alteracao_preco,
  cast(cd.dtCadastro as date) as cadastro,
  cpu.sigla as und,
  cg.descricao as grupo,
  cc.codCsosn as st
from cad_produto as cd
left join cad_grupo cg on cd.cad_grupo_id = cg.id
left join cad_csosn cc on cd.cad_csosnSaida_id = cc.id
left join cad_produto_unidade cpu on cd.unidadeSaida_id = cpu.id
left join est_estoque ee on cd.id = ee.cad_produto_id