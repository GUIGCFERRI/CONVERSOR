select produto.codproduto as codigo,
produto.codbarra as barras,
grupo.nomegrupo as grupo,
produto.apresentacao as descricao,
forneced.nomefornecedor as fornecedor,
produto.referencia as cod_fabricante,
produto.unidade as und,
produto.datainclusao as data_cadastro,
produto.observacao as observacoes,
produto.codmercosulncm as cod_ncm,
produtomarcas.descricaomarca as caracteristica,
produto.cod_cest as personal6,
estoque.saldoatual as qtd,
listapre.precocompra as preco_custo,
listapre.precovenda as preco_venda
from produto
left join gruposub on produto.codgruposub = gruposub.codgruposub
left join grupo on gruposub.codgrupo = grupo.codgrupo
left join estoque on produto.codproduto= estoque.codproduto
left join listapre on produto.codproduto = listapre.codproduto
left join forneced on produto.principalfor = forneced.codfornecedor
left join produtomarcas on  produto.codmarca = produtomarcas.codmarca
where estoque.codfilial='00' and listapre.codlista='0001' or listapre.codlista='0006'