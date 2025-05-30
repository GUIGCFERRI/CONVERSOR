SELECT
  -- PRODUTOS.codPro AS CODIGO,
  PRODUTOS.codPro AS cod_fabricante,
  PRODUTOS.descricao AS DESCRICAO,
  GRUPOS.`descricao` AS GRUPO,
  PRODUTOS.unidade AS UND,
  PRODUTOS.pesoLiq AS PESO,
  ESTOQUE.quantidade AS QTD,
  ESTOQUE.precoAVista AS PRECO_VENDA,
  ESTOQUE.precoAtacado AS PRECO_ATACADO,
  ESTOQUE.precoCusto AS PRECO_CUSTO,
  ESTOQUE.margemLucro AS MARGEM_LUCRO,
  case when ESTOQUE.codigoBarrasFornecedor = '' or ESTOQUE.codigoBarrasFornecedor is null then ESTOQUE.codigoBarras else ESTOQUE.codigoBarrasFornecedor END as BARRAS,
  PRODUTOS.TIPOITEM AS ST,
  REPLACE (PRODUTOS.clasFiscal, '.' , '') AS COD_NCM,
  CAST(PRODUTOS.dataCadastro AS DATE) AS DATA_CADASTRO,
  CAST(PRODUTOS.dataUltimaAlteracao AS DATE) AS ALTERACAO_PRECO,
  PRODUTOS.descricaoAbrev AS CARACTERISTICAS,
  PRODUTOS.observacoes AS OBSERVACOES,
  PRODUTOS.codigoCEST AS PERSONAL6
FROM PRODUTOS
LEFT JOIN GRUPOS ON GRUPOS.`codigo` = PRODUTOS.`codGrupo`
LEFT JOIN ESTOQUE ON ESTOQUE.`codProd` = PRODUTOS.`codPro`
