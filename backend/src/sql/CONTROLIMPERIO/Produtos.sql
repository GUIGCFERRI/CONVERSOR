select produto.COD_INT_PROD as codigo,
PRODUTOC.CODIGOBARRA_VARCHAR_PRODC as barras,
produto.NOME_VARCHAR_PROD as descricao,
produto.TIPO_VARCHAR_PROD as und,
GRUPO.NOME_VARCHAR_GRUPO as grupo,
produtoe.QTDPROD_DECIMAL as qtd,
produtoe.VR_CUSTO_DECIMAL_PRODE as preco_custo,
produtoe.VR_VENDA_DECIMAL_PRODE as preco_venda
from produto
left join grupo on produto.CODGRUPOPROD=grupo.COD_INT_GRUPO
left join produtoc on (produto.COD_INT_PROD=produtoc.CODIGO_INT_PRODUTO_PRODC) and produtoc.TIPO_VARCHAR_PRODC=4
left join produtoe on (produto.COD_INT_PROD=produtoe.CODPROD_INT_PRODE)and produtoe.CODTIPOGRUPO_INT_PRODE=4

