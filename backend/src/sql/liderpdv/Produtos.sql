SELECT
  PRODUTO.pro_cd_codigo_externo AS CODIGO,
  PRODUTO.pro_cd_produto AS COD_FABRICANTE,
  PRODUTO.pro_ds_nome AS DESCRICAO,
  PRODUTO.pro_vl_preco AS PRECO_VENDA,
  PRODUTO.pro_vl_custo AS PRECO_CUSTO,
  PRODUTO.pro_ds_codigobarras AS BARRAS,
  UNIDADE_MEDIDA.uni_ds_unidade AS UND,
  PRODUTO.pro_vl_quantidadeatual AS QTD,
  CSOSN.cso_ds_csosn AS ST,
  NCM.ncm_ds_ncm AS COD_NCM,
  CEST.ces_ds_cest AS PERSONAL6
FROM PRODUTO
LEFT JOIN UNIDADE_MEDIDA ON PRODUTO.pro_cd_unidademedidasaida = UNIDADE_MEDIDA.uni_cd_unidade
LEFT JOIN CSOSN ON PRODUTO.pro_cd_csosn = CSOSN.cso_cd_csosn
LEFT JOIN NCM ON produto.pro_cd_ncm = NCM.ncm_cd_ncm
LEFT JOIN CEST ON PRODUTO.PRO_CD_CEST = CEST.ces_cd_cest