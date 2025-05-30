SELECT PRODUTO.CdProduto as codigo,
TRIBUTACAO.SituacaoTributariaPAF as st,
produto.DescricaoProduto as descricao,
produto.UndEmbVdaProduto as und,
produto.PrecoFinalVdaProduto as preco_venda,
produto.QtdeEstAtualProdutoLoja1 as qtd,
produto.CodigoEANProduto as barras,
produto.CodigoNCMProduto as cod_ncm,
produto.CodigoCESTProduto as personal6
FROM PRODUTO
left join tributacao on PRODUTO.CdTributacaoProduto=TRIBUTACAO.CdTributacaoProduto
where produto.CdProduto>0

