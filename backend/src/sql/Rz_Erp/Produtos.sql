SELECT 
       --Mercadorias.RefA AS CODIGO
      Mercadorias.RefN AS COD_FABRICANTE
      ,GRUPOS.GRUPO AS GRUPO
      ,Mercadorias.Barcode AS BARRAS
      ,Mercadorias.Descricao AS DESCRICAO
      ,Mercadorias.QTD AS QTD
	  ,MERCADORIAS.VALORCUSTO AS PRECO_CUSTO
      ,Mercadorias.Valor AS PRECO_VENDA
      ,Mercadorias.Unidade AS UND
      ,FAMILIAS.FAMILIA AS FAMILIA
      ,Mercadorias.Ncm AS COD_NCM
      ,Mercadorias.CEST AS PERSONAL6
  FROM Rz_Erp.dbo.Mercadorias
LEFT JOIN Rz_Erp.dbo.GRUPOS ON MERCADORIAS.CODGRUPO = GRUPOS.CODGRUPO
LEFT JOIN Rz_Erp.dbo.FAMILIAS ON MERCADORIAS.CODFAMILIA = FAMILIAS.CODFAMILIA
