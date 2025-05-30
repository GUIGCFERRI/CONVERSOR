select
	produto.codproduto as CODIGO,
	produto.descricao as descricao, 
	produto.codfabricante as PERSONAL1,
	produto.codbarras as BARRAS,
	replace(ncm.ncm,'.','') as cod_ncm,
	unidade.abreviacao  as und,
	grupo.descricao as grupo,
	subgrupo.descricao as familia,
	produto.observacao as OBSERVACOES,
	replace(cest.cest,'.','') as personal6,
	prodpreco.valor as preco_venda,
	prodestoque.estoque as qtd
from produto
left join ncm on produto.codncm = ncm.codncm 
left join unidade on produto.codunidadetributavel = unidade.codunidade 
left join grupo on produto.codgrupo = grupo.codgrupo 
left join subgrupo on produto.codsubgrupo = subgrupo.codsubgrupo 
left join cest on produto.codcest = cest.codcest 
left join prodpreco on produto.codproduto=prodpreco.codproduto and prodpreco.tipo = '2'
left join prodestoque on produto.codproduto=prodestoque.codproduto 