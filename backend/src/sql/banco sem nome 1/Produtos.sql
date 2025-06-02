select
    produtos.COD_PROD as codigo,
    produtos.NOME_PROD as descricao,
    produtos.PRECO1 as preco_venda,
    produtos.CUSTO as preco_custo,
    produtos.CUSTO_MEDIO,
    subgrupoprodutos.nome_subgrupo as familia,
    unidades.unidade as und,
    grupoprodutos.nome_grupo as grupo,
    produtos.ESTOQUE as qtd,
    produtos.COD_BARRAS as barras,
    produtos.REFERENCIA as cod_fabricante,
    produtos.PRECO_ATACADO,
    produtos_impostos.cst2 as st,
ncm.ncm as cod_ncm,
produtos_impostos.cest as personal6
from produtos
left join produtos_impostos on produtos.cod_prod = produtos_impostos.cod_prod
left join ncm on produtos_impostos.cod_ncm = ncm.cod_ncm
left join subgrupoprodutos on produtos.cod_subgrupo = subgrupoprodutos.cod_subgrupo
left join unidades on produtos.cod_unidade = unidades.cod_unidade
left join grupoprodutos on produtos.cod_grupo = grupoprodutos.cod_grupo
