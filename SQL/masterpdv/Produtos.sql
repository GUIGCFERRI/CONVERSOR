select 
produtos.codprodutos as codigo,
produtos.ncm as cod_ncm,
substring (produtos.codigobarras from 2 for 14) as barras,
produtos.descricao,
produtos.estoqueatual as qtd,
produtos.grupo,
produtos.unidademedida as und,
case when
aliquotas.tipoaliquota = 'ICMS' then '102'
when aliquotas.tipoaliquota = 'F' then '500'
when aliquotas.tipoaliquota = 'I' then '300'
when aliquotas.tipoaliquota = 'N' then '400' end as "ST",
--produtos.cfop as ELO,
PRODUTOS.piscofinssaida as PIS_CODIGO,
PRODUTOS.piscofinssaida as COFINS_CODIGO,
PRODUTOS.codigointerno as COD_FABRICANTE,
produtos.precocompra as preco_custo,
produtos.precovenda1 as preco_venda,
produtos.cest as personal6
from produtos
left join aliquotas on produtos.codigoaliquota = aliquotas.numeroaliquota
