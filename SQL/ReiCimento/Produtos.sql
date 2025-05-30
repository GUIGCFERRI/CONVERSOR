select lj_produtos.CodProduto as codigo,
lj_produtos.Descricao,
lj_produtos.UndVenda as und,
lj_produtos.PrcCompra as preco_custo,
lj_produtos.ncm as cod_ncm,
lj_produtos.CSOSN as st,
lj_produtos.Cest as personal6,
Lj_ReferPrc.PrecoVenda as preco_venda
from lj_produtos 
left join Lj_ReferPrc on lj_produtos.idReferencia=Lj_ReferPrc.IdReferencia
