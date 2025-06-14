SELECT PROD01.CODPROD AS CODIGO,
GRU01.DESCRICAO AS GRUPO,
PROD01.PRODUTO AS DESCRICAO,
PROD01.COD_BARRA AS BARRAS,
PROD01.PRECO_CUS AS PRECO_CUSTO,
PROD02.QTD,
CASE WHEN PROD01.ALIQ_CUPOM LIKE '1%'THEN '102'
WHEN PROD01.ALIQ_CUPOM='FF' THEN '500'
ELSE PROD01.ALIQ_CUPOM END AS ST,
PROD01.CLAS_FISCAL AS COD_NCM,
PROD01.ULT_VENDA AS ULTIMA_VENDA,
PROD01.UNID_FIM AS UND,
PROD01.CEST AS PERSONAL6,
PROD02.PRECO_VEN AS PRECO_VENDA
FROM PROD01
LEFT JOIN GRU01 ON PROD01.GRUPO=GRU01.CODIGO
LEFT JOIN PROD02 ON PROD01.CODPROD=PROD02.CODPROD

