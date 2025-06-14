SELECT
  PRODUTOS.idProduto AS CODIGO,
  GRUPO_PRODUTOS.DESCRICAO AS GRUPO,
  PRODUTOS.ncm AS COD_NCM,
  PRODUTOS.cest AS PERSONAL6,
  PRODUTOS.nome AS DESCRICAO,
  PRODUTOS_ESTOQUE.ESTOQUE AS QTD,
  PRODUTOS.referencia AS COD_FABRICANTE,
  PRODUTOS.un AS UND,
  PRODUTOS.codBarras AS BARRAS,
  PRODUTOS.cstICMS AS ST,
  PRODUTOS.valAquisicao AS PRECO_CUSTO,
  PRODUTOS.pLucro AS MARGEM_LUCRO,
  PRODUTOS.valVenda AS PRECO_VENDA
FROM PRODUTOS
LEFT JOIN PRODUTOS_ESTOQUE ON PRODUTOS.IDPRODUTO = PRODUTOS_ESTOQUE.IDPRODUTO
LEFT JOIN GRUPO_PRODUTOS ON PRODUTOS.IDGRUPOPRODUTO = GRUPO_PRODUTOS.IDGRUPOPRODUTO
