select t_produto.cod_prod as codigo,
substring(t_produto.descricao from 1 for 40) as descricao,
substring(t_produto.desc_resumida from 1 for 40) as caracteristicas,
t_produto.umed1 as und,
t_produto.custo as preco_custo,
t_produto.preco_venda,
t_produto.cod_referencia as cod_fabricante,
t_produto.codigo_ean as barras,
t_grupo_produto.desc_grupo as grupo,
t_produto.data_ultimacompra as ultima_compra,
t_produto.ncm as cod_ncm,
t_produto.cest as personal6,
t_estoque.saldo as qtd,
'102' as st
from t_produto
left join t_grupo_produto on t_produto.cod_grupo = t_grupo_produto.cod_grupo
left join t_estoque on t_produto.cod_prod = t_estoque.produto






