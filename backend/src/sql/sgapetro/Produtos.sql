select
    prod.prodcodigo as codigo,
    prod.prodbarra as barras,
    prod.proddescricao as descricao,
    gpro.gprodescricao as grupo,
    prod.prodanp as cod_anp,
    prod.prodncm as cod_ncm,
    prod.prodestoque as qtd,
    prod.prodminimo as qtd_ideal,
    prod.prodcusto as preco_custo,
    prod.prodv1 as preco_venda,
    prod.prodobservacao as observacoes,
    prod.prodund as und,
    prod.prodcest as personal6
from prod
left join gpro on gpro.gprocodigo = prod.prodgrupo