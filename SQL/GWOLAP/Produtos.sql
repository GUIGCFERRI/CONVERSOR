select Estoque_Produtos.id as codigo,
Estoque_Produtos.CodigoBarras as barras,
Estoque_Produtos.Descricao,
Uteis_UnidadesDeMedida.Abrev as und,
Estoque_Produtos.PrecoCusto as preco_custo,
Estoque_Produtos.PrecoVenda as preco_venda,
Estoque_Produtos.QtdEstoqueTotal as qtd,
Estoque_Produtos.ncm as cod_ncm,
Estoque_Produtos.cest as personal6
from Estoque_Produtos
left join Uteis_UnidadesDeMedida on Estoque_Produtos.UnidadeMedidaSaidaID=Uteis_UnidadesDeMedida.id


