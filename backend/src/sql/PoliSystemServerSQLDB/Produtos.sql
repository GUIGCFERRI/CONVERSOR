SELECT 
PRODUTO.CdProduto as cod_fabricante,
PRODUTO.CdProduto as barras,
--TRIBUTACAO.SituacaoTributariaPAF as st,
TRIBUTACAO.CodigoSituacaoTributaria as st,
produto.DescricaoProduto as descricao,
produto.UndEmbVdaProduto as und,
GRUPO.NomeGrupo as grupo,
produto.PrecoFinalVdaProduto as preco_venda,
produto.QtdeEstAtualProdutoLoja1 as qtd,
produto.CodigoEANProduto as barras,
produto.CodigoNCMProduto as cod_ncm,
produto.CodigoCESTProduto as personal6
FROM PoliSystemServerSQLDB.dbo.PRODUTO
left join PoliSystemServerSQLDB.dbo.tributacao on PRODUTO.CdTributacaoProduto=TRIBUTACAO.CdTributacaoProduto
left join PoliSystemServerSQLDB.dbo.PRODUTO_GRUPO on produto.CdProduto = PRODUTO_GRUPO.CdProduto
left join PoliSystemServerSQLDB.dbo.GRUPO on PRODUTO_GRUPO.CdGrupo = GRUPO.CdGrupo
where produto.DescricaoProduto <> ''
