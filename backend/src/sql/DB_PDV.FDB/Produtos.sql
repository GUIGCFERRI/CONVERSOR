select
    produto.ID as codigo,
    produto.CODIGO as cod_fabricante,
    produto.DESCRICAO,
    produto.BARRAS,
    produto.NCM as cod_ncm,
    produto.UND,
    produto.CSOSN as st,
    produto.CEST as personal6,
MAX(produto_preco.preco) as preco_venda
from produto
left join produto_preco on produto.id = produto_preco.id_produto
GROUP BY 1,2,3,4,5,6,7,8
