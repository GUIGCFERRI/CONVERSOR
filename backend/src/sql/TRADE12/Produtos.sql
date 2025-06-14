SELECT
       ITENS.CODIGO AS CODIGO
      ,ITENS.BARRA AS BARRAS
      ,ITENS.DESCRICAO AS DESCRICAO
      ,ITENS.COMPLEMENTO AS TAMANHO
      ,UNIDADES.SIGLA AS UND
      ,ITENS.PESO_LIQUIDO AS PESO
      ,GRUPOS1.NOME AS GRUPO
      ,PESSOAS.NOME AS FORNECEDOR
      ,ITENS.CODIGO_FORNECED AS COD_FABRICANTE
      ,ITENS.CODIGO_OPCIONAL AS CARACTERISTICAS
      ,VENDA_VALOR AS PRECO_VENDA
      ,SITUACAOTRIBUTARIA.SITUACAO_TRIBUTARIA AS ST
      ,ITENS.CLAS_FISCAL AS COD_NCM
      ,ESTOQUE.QT_ESTOQUE AS QTD
      ,ESTOQUE.QT_EST_MIN AS QTD_IDEAL
      ,ITENS.MARGEM AS MARGEM_LUCRO
      ,ITENS.CODIGO_CEST AS PERSONAL6
  FROM trade12.dbo.ITENS
  LEFT JOIN trade12.dbo.UNIDADES ON UNIDADES.HANDLE = ITENS.UNI_HANDLE
  LEFT JOIN trade12.dbo.GRUPOS1 ON GRUPOS1.HANDLE = ITENS.GR1_HANDLE
  LEFT JOIN trade12.dbo.PESSOAS ON PESSOAS.HANDLE = ITENS.PES_HANDLE
  LEFT JOIN trade12.dbo.SITUACAOTRIBUTARIA ON SITUACAOTRIBUTARIA.HANDLE = ITENS.SIT_TRIB
  LEFT JOIN trade12.dbo.ESTOQUE ON ESTOQUE.ITE_HANDLE = ITENS.HANDLE
