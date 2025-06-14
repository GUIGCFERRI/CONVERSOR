SELECT
  PRODUTO.PRODUTO_ID AS CODIGO,
  PRODUTO.DESCRICAO AS DESCRICAO,
  PRODUTO.UNIDADE AS UND,
  SUBSTRING(PRODUTO.CST FROM 1 FOR 1) AS OST,
  SUBSTRING(PRODUTO.CST FROM 2 FOR 3) AS ST,
  PRODUTO.PRECO_VENDA AS PRECO_VENDA,
  PRODUTO.CODIGO_BARRA AS BARRAS,
  PRODUTO.CODIGO_BARRA AS COD_FABRICANTE,
  PRODUTO.DESREDPRD AS CARACTERISTICAS,
  --SUM (FICHA_CONTROLE_ESTOQUE.FCE_QTDE_SALDO) AS QTD,
  SCEGRU.DSGRU AS GRUPO,
  SCESUB.DSSUBGRU AS FAMILIA,
  PRODUTO.DATDIG AS DATA_CADASTRO,
  PRODUTO.NCM AS COD_NCM,
  PRODUTO.CST_IPI_ENTRADA AS IPI_CODIGO,
  PRODUTO.CST_IPI_SAIDA AS IPI_CODIGO_VENDA,
  PRODUTO.CST_PIS_ENTRADA AS PISE_CODIGO,
  PRODUTO.CST_PIS_SAIDA AS PIS_CODIGO,
  PRODUTO.CST_COFINS_ENTRADA AS COFINSE_CODIGO,
  PRODUTO.CST_COFINS_SAIDA AS COFINS_CODIGO,
  PRODUTO.CEST AS PERSONAL6
FROM PRODUTO
LEFT JOIN SCEGRU ON SCEGRU.CDGRU = PRODUTO.CODGRU
LEFT JOIN SCESUB ON SCESUB.CDSUBGRU = PRODUTO.CODSUBGRU
--LEFT JOIN FICHA_CONTROLE_ESTOQUE ON FICHA_CONTROLE_ESTOQUE.PRODUTO_ID = PRODUTO.PRODUTO_ID
--GROUP BY 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21
