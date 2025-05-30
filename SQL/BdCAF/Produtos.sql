select itens.Codigo,
GruposIt.Descricao as grupo,
itens.Unidade as und,
itens.Descricao,
itens.CodBarras as barras,
itens.DtUltCompra as ultima_compra,
itens.VlrCusto as preco_custo,
itens.VlrVenda as preco_venda,
itens.ClaFiscal as cod_ncm,
itens.CEST as personal6,
estoque.SaldoFisico as qtd
from itens
left join gruposit on itens.CodGrupo=gruposit.Codigo
left join estoque on itens.Codigo=estoque.CodItem


