select
  produtos.ncodi as codigo,
  produtos.cnome as descricao,
  produtos.cobservacao as observacoes,
  produtos.cunidade as und,
  produtos.creferencia as cod_fabricante,
  grupos.cnome as grupo,
  familias.cnome as familia,
  produtos.ddtcadastro as data_cadastro,
  produtos.cclassfiscal as cod_ncm,
  produtos_lojas.ncustoreal as preco_custo,
  produtos_lojas.nprecovenda as preco_venda,
  substring(produtos_lojas.csittrib from 1 for 1) as ost,
  substring(produtos_lojas.csittrib from 2 for 3) as st,
  produtos_lojas.ncustomedio as custo_medio,
  produtos_lojas.nestoqminimo as qtd_ideal,
  produtos_lojas.ddtultentrada as ultima_compra,
  produtos_lojas.ddtultsaida as ultima_venda,
  produtos_lojas.nsaldo as qtd,
  produtos_lojas.ccsosn as cst,
  produtos_lojas.ccest as personal6
from produtos
left join produtos_lojas on produtos_lojas.ncodi = produtos.ncodi
left join grupos on grupos.ncodi = produtos.ngrupo
left join familias on familias.ncodi = produtos.nfamilia