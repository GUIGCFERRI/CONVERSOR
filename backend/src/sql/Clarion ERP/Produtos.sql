select case when produto.`prod_codigobarras` like '789%' then produto.`prod_codigobarras`
else '' end as barras,
produto.`prod_descricao` as descricao,
produto.`prod_vrunit` as preco_venda,
produto.`prod_precocusto` as preco_custo,
produto.`prod_estoque` as qtd,
`fornecedor`.`forn_nome` as fornecedor,
`grupo_produtos`.`gruprod_descricao` as grupo,
produto.`prod_ultimacompra` as ultima_compra,
produto.prod_cst as St,
produto.`prod_ncmsh` as cod_ncm,
`produto`.`prod_unidade`as und,
produto.`prod_undcompra` as und_compra,
produto.`prod_dfamilia` as familia,
produto.`prod_codigobarras` as cod_fabricante
from produto
left join fornecedor on produto.`prod_fornecedor`=fornecedor.`forn_cod`
left join grupo_produtos on produto.`prod_grupo`=`grupo_produtos`.`gruprod_cod`
