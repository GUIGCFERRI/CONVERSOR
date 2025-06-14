SELECT
  MERC19.codigo AS CODIGO,
  MERC19.descr AS DESCRICAO,
  MERC19.ean AS BARRAS,
  MERC19.unidade AS UND,
  MERC19.undent AS UND_ENTRADA,
  ESTOQUESLDATUAL.ESTOQUEATUAL AS QTD,
  GRUPOS.NOME AS GRUPO,
  FORNECED.NOME AS FORNECEDOR,
  MERC19.ncm AS COD_NCM,
  MERC19.cest AS PERSONAL6,
  MERC19.prccusto AS PRECO_CUSTO,
  MERC19.mrglucr AS MARGEM_LUCRO,
  MERC19.prcvenda AS PRECO_VENDA,
  MERC19.st AS ST
  
FROM MERC19
LEFT JOIN ESTOQUESLDATUAL ON MERC19.CODIGO = ESTOQUESLDATUAL.PRODUTO
LEFT JOIN GRUPOS ON MERC19.GRUPO = GRUPOS.CODIGO
LEFT JOIN FORNECED ON MERC19.FORNE = FORNECED.CODIGO