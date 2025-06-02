SELECT
  p.cod_pecas AS CODIGO,
  p.codbarrasean AS BARRAS,
  p.nome AS DESCRICAO,
  p.unidade AS UND,
  p.unidadepara AS UND_COMPRA,
  p.cod_grpestoque AS FAMILIA,
  p.cod_subgrpestoque AS GRUPO,
  p.obs AS CARACTERISTICAS,
  f.razaosocial AS FORNECEDOR,
  p.qtd AS QTD,
  p.vlrcustomedio AS CUSTO_MEDIO,
  p.vlrcusto AS PRECO_CUSTO,
  p.lucro AS MARGEM_LUCRO,
  p.vlrvenda AS PRECO_VENDA,
  NULL AS ST,
  p.cod_classesimpostosentrada AS CF,
  p.codfabricanteautomatico AS COD_FABRICANTE,
  p.codncm AS COD_NCM,
  p.codcest AS PERSONAL6
FROM
  public.pecas p
LEFT JOIN
  public.fornecedores f ON p.cod_fabricantes = f.cod_fornecedores
WHERE
  p.del = 0;