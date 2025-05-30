select
  item.codigo AS CODIGO,
  item.codigobarrasprincipal AS BARRAS,
  item.descricao AS DESCRICAO,
  item.referencia as CARACTERISTICAS,
  ITEMESTOQUE.quantidade AS QTD,
  itemunidadepreco.precovenda AS PRECO_VENDA,
  itemunidadepreco.unidademedida_codigo AS UND,
  item.ncm AS COD_NCM,
  item.cest AS PERSONAL6,
  item.tributacaoicms_codigo as st,
  item.datacadastro
from item
LEFT JOIN ITEMESTOQUE ON ITEMESTOQUE.item_codigo = ITEM.codigo
LEFT JOIN itemunidadepreco ON itemunidadepreco.item_codigo = ITEM.codigo
