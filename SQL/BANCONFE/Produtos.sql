SELECT
  cadprod.BARCODE AS COD_FABRICANTE,
  cadprod.NCM AS COD_NCM, 
  cadprod.UN AS UND,
  estgeral.SALDO AS QTD,
  cadprod.VALOR AS PRECO_VENDA,
  SUBSTRING(cadprod.CST_ICMS, 1,1) AS OST,
  SUBSTRING(cadprod.CST_ICMS, 2,3) AS ST,
  cadprod.DESCRICAO AS DESCRICAO,
  cadprod.CUSTO AS PRECO_CUSTO,
  cadprod.PESO AS PESO,
  cadprod.CEST AS PERSONAL6,
  case when cadprod.EAN = '' or cadprod.EAN is null then cadprod.BARCODE else cadprod.EAN END AS BARRAS
FROM cadprod
LEFT JOIN estgeral ON estgeral.BARCODE = cadprod.BARCODE
