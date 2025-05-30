select
    produto.codigo,
    produto.descricao,
    grupo_produto.descricao as grupo,
    unidade.sigla as und,
    produto.preco_base as preco_venda,
    produto.quantidade as qtd,
    produto.custo_medio,
    produto.codigo_barra as barras,
    ncm.ncm as cod_ncm,
    cst.cod_cst as st,
    produto.referencia as cod_fabricante,
    cest.cest as personal6
from produto
left join grupo_produto on produto.grupo = grupo_produto.codigo
left join unidade on produto.unidade = unidade.codigo
left join ncm on produto.ncm = ncm.codigo
left join cst on produto.cst_csosn = cst.codigo
left join cest on produto.cest = cest.codigo