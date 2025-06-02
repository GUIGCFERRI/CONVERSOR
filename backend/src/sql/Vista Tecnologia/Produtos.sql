select
    produto.id as codigo,
    produto_sub_grupo.descricao as familia,
    produto_grupo.descricao as grupo,
    produto.id_ncm as cod_ncm,
    produto.descricao as descricao,
    produto.unidade as und,
    produto.ref_fabrica as cod_fabricante,
    produto.gtin as barras,
    produto_empresa.pcompra as preco_custo,
    --produto_empresa.venda_margem_prc as margem_lucro,
    produto_empresa.pvenda as preco_venda, 
    produto_empresa.saldo_geral as qtd, 
    produto_empresa.est_minimo as qtd_ideal, 
    produto.peso as peso,
    produto_empresa.gtrib_ali_ecf_identi as st,
    --produto.classificacao_item,
    produto.cod_cest as personal6,
    produto.obs as observacoes
from public.produto
left join public.produto_empresa on produto_empresa.id_produto = produto.id
left join public.produto_sub_grupo on produto_sub_grupo.id = produto.id_sub_grupo
left join public.produto_grupo on produto_grupo.id = produto.id_grupo
where produto_empresa.id_empresa = '1'
order by produto.id asc
