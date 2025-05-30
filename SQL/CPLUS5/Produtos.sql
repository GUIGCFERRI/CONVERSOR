select
    produtobase.nome as descricao,
    unidadedemedida.sigla as und,
    produtobase.codigoprincipal as cod_fabricante,
    produtobase.codigodebarras as barras,
    estoque.quantidade_valor as qtd,
    ncm.codigo as cod_ncm,
    cest.codigo as personal6,
    precodecustodoproduto.ultimacompra_precocustobrutonotafiscal as preco_custo,
    precodevendadoproduto.precoonline_preco as preco_venda,
	max(regratributacaonfce.csosn) as st
from dbo.produtobase
left join dbo.precodecustodoproduto on produtobase.id = precodecustodoproduto.idproduto
left join dbo.precodevendadoproduto on produtobase.id = precodevendadoproduto.idproduto
left join dbo.ncm on produtobase.idncm = ncm.id
left join dbo.estoque on produtobase.id = estoque.idproduto
left join dbo.cest on produtobase.idcest = cest.id
left join dbo.unidadedemedida on produtobase.idunidadedeestocagem = unidadedemedida.id
left join dbo.classificacaofiscal on produtobase.idclassificacaofiscal = classificacaofiscal.id
left join dbo.tributacaonfce on classificacaofiscal.idtributacaonfce = tributacaonfce.id
left join dbo.regratributacaonfce on tributacaonfce.id = regratributacaonfce.idtributacaonfce
group by 1,2,3,4,5,6,7,8,9