select
  produtos.cod_int_prod as codigo,
  produtos.cod_un as und,
  produtos.ean as barras,
  marcas.nome_mar as caracteristicas,
  produtos.peso_prod as peso,
  grupos_pro.nome_gru as grupo,
  sgrupos_pro.nome_sgru as familia,
  produtos.nome_prod as descricao,
  produtos.ref_prod as cod_fabricante,
  produtos.qde_prod as qtd,
  produtos.min_prod as qtd_ideal,
  produtos.ucusr_prod as preco_custo,
  produtos.marg_prod1 as margem_lucro,
  produtos.pven_prod1 as preco_venda,
  substring (tributacoes.cst_csosn_trib, 1,1) as ost,
  substring (tributacoes.cst_csosn_trib, 2,4) as st,
  cast(produtos.dat_inc_prod as date) as data_cadastro,
  cast(produtos.dat_alt_prod as date) as alteracao_preco,
  produtos.cod_clas as cod_ncm,
  produtos.cod_cest as personal6,
  produtos.obs_prod as observacoes
from produtos
left join tributacoes on tributacoes.cod_trib = produtos.cod_trib
left join grupos_pro on grupos_pro.cod_gru = produtos.cod_gru
left join sgrupos_pro on sgrupos_pro.cod_sgru = produtos.cod_sgru
left join marcas on marcas.cod_mar = produtos.cod_mar
