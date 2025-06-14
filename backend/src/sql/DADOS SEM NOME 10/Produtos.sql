SELECT
  PRODUTOS.CODIGO AS CODIGO,
  PRODUTOS.GTIN AS BARRAS,
  PRODUTOS.PRODUTO AS DESCRICAO,
  PRODUTOS.OBSERVACAO AS OBSERVACOES,
  PRODUTOS.CUSTO AS PRECO_CUSTO,
  PRODUTOS.VALOR1 AS PRECO_VENDA,
  PRODUTOS.CODFABRICANTE AS COD_FABRICANTE,
  PRODUTOS.CODSITUACAOTRIBUTARIA AS ST,
  PRODUTOS.NCM AS COD_NCM,
  PRODUTOS_ESTOQUE.DISPONIVEL AS QTD,
  FORNECEDORES.NOME AS FORNECEDOR,
  GRUPOS.DESCRICAO AS GRUPO,
  PRODUTOS_CEST.CEST AS PERSONAL6
FROM PRODUTOS
LEFT JOIN PRODUTOS_ESTOQUE ON PRODUTOS_ESTOQUE.CODPRODUTO = PRODUTOS.CODIGO
LEFT JOIN PRODUTOS_CEST ON PRODUTOS_CEST.CODCEST = PRODUTOS.CODCEST
LEFT JOIN FORNECEDORES ON FORNECEDORES.CODIGO = PRODUTOS.CODFORNECEDOR
LEFT JOIN GRUPOS ON GRUPOS.CODGRUPO = PRODUTOS.CODGRUPO
