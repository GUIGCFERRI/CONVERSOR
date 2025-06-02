select 
--produtos.codigo,
produtos.`descricao`,
produtos.`valorunit` as preco_venda,
produtos.ean as barras,
produtos.`qtdestoq` as qtd,
produtos.`unidade` as und,
produtos.`ncm` as cod_ncm,
produtos.`cest` as personal6
from produtos


