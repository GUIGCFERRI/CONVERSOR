SELECT
  PRODUTOS.PRO_CODIGO AS CODIGO,
  PRODUTOS.PRO_CODBARRAS AS BARRAS,
  PRODUTOS.PRO_NOME AS DESCRICAO,
  PRODUTOS.PRO_UNIDADE AS UND,
  PRODUTOS.PRO_VALOR1 AS PRECO_VENDA,
  PRODUTOS.PRO_LUCRO1 AS MARGEM_LUCRO,
  PRODUTOS.PRO_ESTOQUE AS QTD,
  PRODUTOS.PRO_COMISSAOPOR AS COMISSAO,
  PRODUTOS.PRO_ESTOQUEMIN AS QTD_IDEAL,
  PRODUTOS.PRO_ALTERADO ALTERACAO_PRECO,
  PRODUTOS.PRO_CUSTOCOMPRA AS PRECO_CUSTO,
  PRODUTOS.PRO_NCM AS COD_NCM,
  PRODUTOS.PRO_FABRICANTE AS COD_FABRICANTE,
  PRODUTOS.PRO_NFE_CEST AS COD_CEST,
  PRODUTOS.PRO_OBS AS OBSERVACOES
FROM PRODUTOS