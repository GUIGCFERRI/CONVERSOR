SELECT 
       PRODUTOS.PK AS CODIGO
      ,PRODUTOS.DESCRICAO AS DESCRICAO
      ,PRODUTOS.CODIGO_BARRA AS BARRAS
      ,PRODUTOS.REFERENCIA AS COD_FABRICANTE
      ,PRODUTOS.UNIDADE AS UND
      ,GRUPOS.DESCRICAO AS GRUPO
      ,FORNECEDORES.NOME_FANTASIA AS FORNECEDOR
      ,SUBGRUPOS.DESCRICAO AS FAMILIA
      ,PRODUTOS.OBS AS OBSERVACOES
      ,PRODUTOS.PRECO_VENDA AS PRECO_VENDA
      ,PRODUTOS.NCM AS COD_NCM
      ,PRODUTOS.PRECO_COMPRA AS PRECO_CUSTO
      ,PRODUTOS.MARGEM_LUCRO AS MARGEM_LUCRO
      ,PRODUTOS.PESO AS PESO
      ,PRODUTOS.ESTOQUE_MINIMO AS QTD_IDEAL
      ,PRODUTOS.ESTOQUE AS QTD
      ,PRODUTOS.CST AS ST
      ,PRODUTOS.CEST AS PERSONAL6
      ,PRODUTOS.MARCA AS CARACTERISTICAS
      ,PRODUTOS.DATA_CADASTRO AS DATA_CADASTRO
  FROM DATAPEIXE.dbo.PRODUTOS
LEFT JOIN DATAPEIXE.dbo.GRUPOS ON GRUPOS.PK = PRODUTOS.FK_GRUPO
LEFT JOIN DATAPEIXE.dbo.SUBGRUPOS ON SUBGRUPOS.PK = PRODUTOS.FK_SUBGRUPO
LEFT JOIN DATAPEIXE.dbo.FORNECEDORES ON FORNECEDORES.PK = PRODUTOS.FK_FORNECEDOR 