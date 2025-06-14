SELECT
  PRODUTO.CODIGO AS CODIGO,
  PRODUTO.NUMERO AS CARACTERISTICAS,
  PRODUTO.DESCRICAO AS DESCRICAO,
  PRODUTO.REF AS UND,
  PRODUTO.PCUSTO AS PRECO_CUSTO,
  PRODUTO.PVENDA AS PRECO_VENDA,
  FORNEC.NOME AS FORNECEDOR,
  PRODUTO.NFABRICA AS COD_FABRICANTE,
  CODIGOBARRA AS BARRAS,
  PRODUTO.OBS1 AS OBSERVACOES,
  PRODUTO.NBM AS COD_NCM,
  PRODUTO.CSOSN AS ST,
  PRODUTO.CEST AS PERSONAL6,
  PRODUTO.EST1 AS QTD
FROM PRODUTO
LEFT JOIN FORNEC ON FORNEC.CODIGO = PRODUTO.CODFOR