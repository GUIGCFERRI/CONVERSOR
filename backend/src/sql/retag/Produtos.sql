SELECT
  MERCADOR.codigoint AS CODIGO,
  MERCADOR.codigoean AS BARRAS,
  MERCADOR.valor AS PRECO_VENDA,
  MERCADOR.descricao_completa AS DESCRICAO,
  MERCADOR.custo AS PRECO_CUSTO,
  MERCADOR.unidade AS UND,
  -- GRUPOS.descricao AS GRUPO,
  -- SUBGRUPOS.descricao AS FAMILIA,
  MERCADOR.estoque_atual AS QTD,
  MERCADOR.ncm AS COD_NCM,
  MERCADOR.Referencia AS COD_FABRICANTE,
  MERCADOR.tributacao AS ST,
  MERCADOR.cest AS PERSONAL6
FROM MERCADOR
-- LEFT JOIN GRUPOS ON MERCADOR.GRUPO = GRUPOS.codigo
-- LEFT JOIN SUBGRUPOS ON MERCADOR.SUBGRUPO = SUBGRUPOS.CODIGO
