select produtos.`codigo`,
grupos.`descr` as grupo,
produtos.`cod_barra` as barras,
produtos.`descr` as descricao,
produtos.`unidade` as und,
produtos.`estfil01` as qtd,
produtos.custo as preco_custo,
produtos.`precovendaI` as preco_venda,
`fornecedor`.`Razaosocial` as fornecedor,
produtos.`cust_medio` as custo_medio,
produtos.`cst` as st,
produtos.`codigoncm` as cod_ncm
from produtos
left join grupos on produtos.`grupo`=grupos.`codigo`
left join fornecedor on produtos.`Fornecedor`=`fornecedor`.`codigo`





