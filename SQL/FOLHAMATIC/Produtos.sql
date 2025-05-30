SELECT 
       produto.CODIGO AS COD_FABRICANTE
      ,produto.DESCRICAO AS DESCRICAO
      ,GRUPO.DESCRICAO AS GRUPO
      ,produto.UNID AS UND
      ,produto.UNIDE AS UND_COMPRA
      ,produto.PESO AS PESO
      ,produto.QUANT AS QTD
      ,produto.ESTMIN AS QTD_IDEAL
      ,produto.ULTENT AS ULTIMA_COMPRA
      ,produto.ULTSAI AS ULTIMA_VENDA
      ,produto.VALVEND AS PRECO_VENDA
      ,produto.PRECOCUS AS PRECO_CUSTO
      ,CONCAT (produto.COMPL1, ' / ' ,produto.OBSERVACAO) AS OBSERVACOES
      ,produto.COMISSAO AS COMISSAO
      ,produto.CODORIG AS CARACTERISTICAS
      ,produto.MARGLUCR AS MARGEM_LUCRO
      ,REPLACE (produto.CLAFIS, '.' , '') AS COD_NCM
      ,produto.EAN AS BARRAS
      ,SUBSTRING (produto.CSOSN, 1, 3) AS ST
      ,produto.CEST AS PERSONAL6
  FROM FAT00001.dbo.produto
  LEFT JOIN FAT00001.dbo.grupo ON GRUPO.DESCRICAO = PRODUTO.GRUPO
