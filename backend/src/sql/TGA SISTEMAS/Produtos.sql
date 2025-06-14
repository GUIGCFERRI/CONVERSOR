SELECT
  TPRODUTO.codigoreduzido AS CODIGO,
  TPRODUTO.CODPRD AS COD_FABRICANTE,
  TPRODUTO.NOMEFANTASIA AS DESCRICAO,
  TPRODUTO.CODFAB AS CARACTERISTICAS,
  TPRODUTO.CODUNDCOMPRA AS UND_COMPRA,
  TPRODUTO.CODUNDVENDA AS UND,
  TPRODUTO.NUMNOFABRIC AS COD_FABRICANTE,
  TPRODUTO.CODBARRAS AS BARRAS,
  TPRODUTO.PRECO1 AS PRECO_VENDA,
  TPRODUTO.PESOLIQUIDO AS PESO,
  TPRODSALDO.SALDOFISICO1 AS QTD,
  TPRODUTO.DTCADASTRAMENTO AS DATA_CADASTRO,
  TPRODUTO.DTULTIMOREAJUSTE,
  TPRODUTO.CUSTOUNITARIO AS PRECO_CUSTO,
  TPRODUTO.CUSTOMEDIO AS CUSTO_MEDIO,
  TSTRIBUTARIA.TIPOTRB AS ST,
  TGRUPO.DESCRICAO AS GRUPO,
  TPRODUTO.MARGEMBRUTALUCRO AS MARGEM_LUCRO,
  TPRODUTO.DTULTIMAVENDA AS ULTIMA_VENDA,
  TPRODUTO.DTULTIMACOMPRA AS ULTIMA_VENDA,
  REPLACE (TPRODUTO.CODCLAS, '.' , '') AS COD_NCM,
  TPRODUTO.CEST AS PERSONAL6
FROM TPRODUTO
LEFT JOIN TGRUPO ON TGRUPO.CODGRUPO = TPRODUTO.CODGRUPO
LEFT JOIN TSTRIBUTARIA ON TSTRIBUTARIA.CODSIT = TPRODUTO.CODSIT
LEFT JOIN TPRODSALDO ON TPRODSALDO.CODPRD = TPRODUTO.CODPRD
