SELECT
  grp_tbl.DESCR AS GRUPO,
  item_tbl.COD_ITEM AS CARACTERISTICAS,
  item_tbl.DESCR_ITEM AS DESCRICAO,
  item_cod_barra_tbl.COD_BARRAS AS BARRAS,
  item_tbl.PESO_LIQ AS PESO,
  tab_preco_item.PRECO_UNIT AS PRECO_VENDA,
  tab_preco_item.COD_UM_VENDA AS UND,
  estoque_fisico_tbl.QTDE_DISPONIVEL AS QTD,
  estoque_fisico_tbl.ULT_TRANS_COD AS ST,
  -- item_tbl.COD_ITEM_FABRICANTE AS COD_FABRICANTE,
  item_fiscal_tbl.COD_NCM AS COD_NCM,
  item_tbl.DESCR_ITEM AS OBSERVACOES
 -- item_tbl.OBS AS OBSERVACOES
FROM item_tbl
LEFT JOIN estoque_fisico_tbl ON estoque_fisico_tbl.COD_ITEM = ITEM_TBL.COD_ITEM
LEFT JOIN item_cod_barra_tbl ON item_cod_barra_tbl.COD_ITEM = ITEM_TBL.COD_ITEM
LEFT JOIN item_fiscal_tbl ON item_fiscal_tbl.COD_ITEM = ITEM_TBL.COD_ITEM
LEFT JOIN tab_preco_item ON tab_preco_item.COD_ITEM = ITEM_TBL.COD_ITEM
LEFT JOIN grp_tbl ON grp_tbl.GRP_ID = ITEM_TBL.GRP_ID

