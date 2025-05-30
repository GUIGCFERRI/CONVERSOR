select 
-- produtos.codigo as codigo,
produtos.descricao as descricao,
produtos.codbarra as barras,
categoria.descricao as grupo,
unidade.descricao as und,
cst.codigotributario as st,
produtos.precocompra as preco_custo,
produtos.precovenda as preco_venda,
produtos.saldo as qtd,
ncm.descricao as cod_ncm,
cest.codigo as personal6
from produtos
left join unidade on unidade.id = produtos.id_unidade
left join cst on cst.id = produtos.id_cst
left join ncm on ncm.id = produtos.id_ncm
left join cest on cest.id = produtos.id_cest
left join categoria on categoria.id = produtos.id_categoria