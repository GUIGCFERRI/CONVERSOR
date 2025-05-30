Select tbl_estoque.est_id as codigo,
  tbl_estoque.est_nome AS DESCRICAO,
  tbl_estoque.est_codbarras AS BARRAS,
  tbl_estoque.est_unidade AS UND,
  tbl_estoque.est_quant AS QTD,
tbl_estoque.est_valorcusto AS PRECO_CUSTO,
tbl_estoque.est_valor AS PRECO_VENDA,
tbl_estoque.est_dataultvenda AS ULTIMA_VENDA,
tbl_estoque.est_ncm AS COD_NCM,
tbl_estoque.est_cest AS PERSONAL6,
tbl_estoque.est_cst_interno AS ST
FROM tbl_estoque
