select produtos.codprodutos as codigo,
produtos.codigobarras as barras,
produtos.ncm as cod_ncm,
produtos.descricao,
produtos.estoqueatual as qtd,
produtos.grupo,
produtos.unidademedida as und,
produtos.precocompra as preco_custo,
produtos.precovenda1 as preco_venda,
produtos.dataultimavenda as ultima_venda,
produtos.datacadastro as data_cadastro
from produtos

