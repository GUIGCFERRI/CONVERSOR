select
  item.Codigo as codigo,
  item.Descricao as descricao,
  item.QtdMinima as qtdIdeal,
  estoque.Qtdedisponivel as qtd,
  item.CodigoBarrasUn as barras,
  item.UnMedida as und,
  item.DtUltimaCompra as ultima_compra,
  item.ValorUltimaCompra as preco_custo,
  item.ValorUltimaVenda as preco_venda,
  item.Obs as observacoes,
  item.CodigoReferencia as cod_fabricante,
  replace(item.CodigoNCM,'.','') as cod_ncm,
  item.PesoLiquido as peso,
  item.CodigoCEST as personal6
from item
left join estoque on estoque.idestoque = item.IdItem
