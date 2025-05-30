select
    produtos.codigo,
    produtos.descricao,
grade_produtos.unidade as und,
grade_produtos.ean as barras,
grade_produtos.vr_custo as preco_custo,
grade_produtos.vr_vista as preco_venda,
grade_produtos.estoque as qtd,
    produtos.ncm as cod_ncm,
    produtos.cest as personal6
from produtos
left join grade_produtos on produtos.codigo = grade_produtos.cod_produto