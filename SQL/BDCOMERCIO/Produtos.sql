select produtos.ProdCodigo as codigo,
produtos.ProdDescricao as descricao,
produtos.ProdUnidade as und,
produtos.ProdVrCusto as preco_custo,
produtos.ProdVrVenda as preco_venda,
produtos.ProdEstoque as qtd,
GrupoProdutos.GrupDescricao as grupo,
produtos.ProdNCM as cod_ncm,
produtos.ProdSatCSTICMS as st,
CodigoBarras.CdBrCodigoBarras as barras
from produtos
left join GrupoProdutos on produtos.ProdGrupo=GrupoProdutos.GrupCodigo
left join CodigoBarras on produtos.ProdCodigo=codigobarras.CdBrProduto
