select
produto.codigo as codigo,
produto.idproduto as cod_fabricante,
produto.csticmstabb as st,
unidade.sigla as und,
grupo.descricao as grupo,
estoque.qtd as QTD,
produto.codncm as cod_ncm,
produto.descricao,
produto.cest as personal6,
produtotabpreco.preco as preco_venda
from produto
left join unidade on produto.idunidade=unidade.idunidade
left join grupo on produto.idgrupoprincipal=grupo.idgrupo
left join produtotabpreco on produto.idproduto=produtotabpreco.idproduto and produtotabpreco.idtabelapreco=1
left join estoque on produto.idproduto=estoque.idestoque 