SELECT MAT.[idCodigo] as COD_FABRICANTE
      ,MAT.[idCodigoBarra] AS BARRAS
      ,DIV.[Divisao] AS GRUPO
      ,MAT.[Material] AS DESCRICAO
      ,UND.[Sigla] AS UND_COMPRA
      ,UND.[Sigla] AS UND
      ,MAT.[CustoMedio] AS CUSTO_MEDIO
      ,MAT.[CompraUltValor] AS PRECO_CUSTO
      ,ST.[STCodigo] AS ST
	  ,[CFIPI] as COD_NCM
  FROM [bebidasrolante0001].[dbo].[estMaterial] AS MAT
  LEFT JOIN [bebidasrolante0001].[dbo].[estDivisao] DIV on MAT.idDivisao = DIV.idDivisao
  LEFT JOIN [bebidasrolante0001].[dbo].[estUnidadeMedida] UND on MAT.[idUnMedCompra] = [idUnidadeMedida]
  LEFT JOIN [bebidasrolante0001].[dbo].[fisST] ST on MAT.[idST] = ST.idST