select 
cadpro.matricula as codigo,
cadfor.razao_social as fornecedor,
cadpro.descricao as descricao,
estgru.descricao as grupo,
cadpro.referencia as cod_fabricante,
cadpro.unidade as und,
cadpro.codigo_fiscal as cod_ncm,
cadpro.codigo_barra as barras,
cadpro.unidade_compra as UND_COMPRA,
cadpro.observacao as observacoes,
cadpro.codigo_cest as personal6,
estsal.vrvendav as preco_venda,
estsal.vrmediov as custo_medio,
estsal.vrcustov as preco_custo,
sum (estsal.anteriorv) as qtd
from cadpro
left join cadfor on cadpro.fornecedor = cadfor.fornecedor
left join estsal on cadpro.matricula = estsal.matricula
left join estgru on cadpro.grupo = estgru.grupo
where estsal.filial = '1'
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14
