SELECT
  tec_products.id AS CODIGO,
  tec_products.code AS COD_FABRICANTE,
  tec_products.name AS DESCRICAO,
  tec_products.price AS PRECO_VENDA,
  tec_products.cost AS PRECO_CUSTO,
  tec_products.quantity AS QTD,
  tec_products.cEAN AS BARRAS,
  tec_products.CEST AS CEST,
  tec_products.uCom AS UND
FROM  tec_products