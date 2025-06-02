select 
produto.cod_ean as barras,
produto.cod_ncm,
produto.descricao,
produto.preco as preco_venda,
produto.origem as ost,
produto.cst_icms as st,
produto.cod_fabricante,
unidade.abreviatura as und,
produto.observacao as observacoes,
produto.tx_cest as personal6,
produtoestoque.vl_quantidade as qtd,
produtoestoque.vl_custoatual as preco_custo
from produto
left join unidade on produto.cod_und=unidade.cod_unid
left join produtoestoque on produtoestoque.id_produto = produto.cod_prod
