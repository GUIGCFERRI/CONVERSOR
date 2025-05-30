select
    produto.id as codigo,
    produto.descricaocompleta as descricao,
    produtoautomacao.codigobarras as barras,
    produtocomplemento.estoque as qtd,
    produtocomplemento.precovenda as preco_venda,
    produto.custofinal as preco_custo
from produto
left join produtocomplemento on produto.id = produtocomplemento.id_produto
left join produtoautomacao on produto.id = produtoautomacao.id_produto
