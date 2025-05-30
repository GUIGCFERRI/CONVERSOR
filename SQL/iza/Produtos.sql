select
  items.Id as codigo,
  itemsgroups.description as grupo,
  items.Description as descricao,
  items.barcode as barras,
  items.RetailPrice1 as preco_venda,
  items.CurrentStock as qtd,
  items.PurchasePrice as preco_custo,
  items.NcmCode as cod_ncm,
  items.CestCode as personal6
from items
left join itemsgroups on items.groupid = itemsgroups.id