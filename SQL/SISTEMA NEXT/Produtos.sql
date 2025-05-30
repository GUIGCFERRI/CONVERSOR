select
	p.codproduto as codigo,
	p.cdbarra as barras,
	p.dtcadastro as data_cadastro,
	p.descricao as descricao,
	p.pcompra as preco_custo,
	p.pvenda as preco_venda,
	p.dsccodoriginal as personal1,
	p.dsccodfabricante as cod_fabricante,
	p.cfop as cf,
	right(p.csosn,3) as st,
	gp.descricao as grupo,
	un.descricao as und,
	tc.descricao as cor,
	ma.descricao as familia,
	cf.ncm as cod_ncm,
	cs.cest as personal6,
	et.qtdeatual as qtd
from tbproduto p
left join tbprodutogrupo gp on gp.codprodutogrupo=p.codprodutogrupo
left join tbunidade un on un.codunidade=p.codunidade 
left join tbcor tc on tc.codcor=p.codcor 
left join tbmarca ma on ma.codmarca=p.codmarca 
left join tbcf cf on cf.codcf=p.codcf 
left join tbcest cs on cs.codcest=p.codcest 
left join tbestoque et on et.codproduto=p.codproduto 
