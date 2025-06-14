SELECT
  PRODUTO.ID_PRODUTO AS CODIGO,
  GRUPO.GRUPO AS GRUPO,
  PRODUTO.PRODUTO AS DESCRICAO,
  ESTOQUE.ESTOQUE AS QTD,
  PRODUTO.PRECO_VENDA AS PRECO_VENDA,
  MEDIDAS.MEDIDA AS UND,
  PRODUTO.COD_BARRAS AS BARRAS,
  PRODUTO.REFERENCIA AS CARACTERISTICA,
  PRODUTO.DATA_CADASTRO AS DATA_CADASTRO,
  PRODUTO.OBS AS OBSERVACOES,
  PRODUTO.PRECO_CUSTO AS PRECO_CUSTO,
  PRODUTO.M_LUCRO AS MARGEM_LUCRO,
  PRODUTO.ULT_COMPRA AS ULTIMA_COMPRA,
  PRODUTO.NCM AS COD_NCM,
  PRODUTO.CST AS ST,
  FORNECEDOR.RAZAO_SOC AS FORNECEDOR,
  PRODUTO.ULT_VENDA AS ULTIMA_VENDA,
  PRODUTO.CUSTO_MEDIO AS CUSTO_MEDIO
FROM PRODUTO
LEFT JOIN GRUPO ON GRUPO.ID_GRUPO = PRODUTO.ID_GRUPO
LEFT JOIN MEDIDAS ON MEDIDAS.ID_MEDIDA = PRODUTO.ID_MEDIDA
LEFT JOIN FORNECEDOR ON FORNECEDOR.ID_FORNECEDOR = PRODUTO.ID_FORNECEDOR
LEFT JOIN ESTOQUE ON ESTOQUE.ID_PRODUTO = PRODUTO.ID_PRODUTO