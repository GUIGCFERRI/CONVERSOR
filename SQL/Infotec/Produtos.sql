SELECT 
CadastroProdutosBD.IdCadastroProdutos as codigo,
GrupoProdutosBD.Nome as grupo,
NCMBD.Codigo as cod_ncm,
ncmbd.CODCEST as personal6,
CadastroProdutosBD.Ean as barras,
CadastroProdutosBD.Referencia as cod_fabricante,
CadastroProdutosBD.nome as descricao,
CadastroProdutosBD.PrecoVenda as preco_venda,
CadastroProdutosBD.CustoMedio as preco_custo,
CadastroProdutosBD.Unvenda as und,
cast(CadastroProdutosBD.Datadecadastro as date) as data_cadastro,
CadastroProdutosBD.Observacoes,
SaldosBD.Quantidade as qtd,
min(TabelaIcmsBDSet.csosn) as st
from [BetterDesktop].[dbo].[CadastroProdutosBD]
left join [BetterDesktop].[dbo].GrupoProdutosBD on CadastroProdutosBD.GrupoProdutos_IdGrupoProdutos=GrupoProdutosBD.IdGrupoProdutos
left join [BetterDesktop].[dbo].ncmbd on CadastroProdutosBD.CodigoNcm=NCMBD.IdNCM
left join [BetterDesktop].[dbo].TabelaImpostosBD on CadastroProdutosBD.CodigoNcm=TabelaImpostosBD.NCMBDIdNCM
join [BetterDesktop].[dbo].TabelaIcmsBDSet on TabelaImpostosBD.TabelaIcmsBDIdTabelaIcms=TabelaIcmsBDSet.IdTabelaIcms
left join [BetterDesktop].[dbo].saldosbd on CadastroProdutosBD.IdCadastroProdutos=saldosbd.CodigoProduto
group by CadastroProdutosBD.IdCadastroProdutos ,
GrupoProdutosBD.Nome ,
NCMBD.Codigo ,
ncmbd.CODCEST,
CadastroProdutosBD.Ean ,
CadastroProdutosBD.Referencia ,
CadastroProdutosBD.nome ,
CadastroProdutosBD.PrecoVenda ,
CadastroProdutosBD.CustoMedio ,
CadastroProdutosBD.Unvenda ,
CadastroProdutosBD.Datadecadastro,
CadastroProdutosBD.Observacoes,
SaldosBD.Quantidade
