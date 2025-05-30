select 
produtos.`codigo`as cod_fabricante,
grupos.`descr` as grupo,
produtos.`cod_barra` as barras,
produtos.`descr` as descricao,
produtos.`unidade` as und,
produtos.`estfil01` as qtd,
produtos.custo as preco_custo,
produtos.`precovendaI` as preco_venda,
fornecedor.`Razaosocial` as fornecedor,
produtos.`cust_medio` as custo_medio,
produtos.`cst` as st,
produtos.`codigoncm` as cod_ncm,
cad_cest.cod_cest as personal6,
produtos.dt_reajust as alteracao_preco,
produtos.cadastro as data_cadastro
from produtos
left join grupos on produtos.`grupo`=grupos.`codigo`
left join fornecedor on produtos.`Fornecedor`=`fornecedor`.`codigo`
left join cad_cest on cad_cest.`cod_ncm` = produtos.codigoncm 




