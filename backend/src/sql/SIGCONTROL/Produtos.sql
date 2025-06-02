SELECT 
       [Codigo] as BARRAS
      ,[Grupo] AS GRUPO
      ,[Subgrupo] AS FAMILIA
      ,[Fabricante] AS FORNECEDOR
      ,[NCM] AS COD_NCM
      ,[Descricao] AS DESCRICAO
      ,[UnidadeFiscal] AS UND
      ,[Marca] AS CARACTERISTICAS
      ,[EstoqueTotal] AS QTD
      ,[PrecoUnitario] AS PRECO_VENDA
      ,[PrecoCusto] AS PRECO_CUSTO
      ,[AcrescimoPercentual] AS MARGEM_LUCRO
      ,[UltimaCompra] AS ULTIMA_COMPRA
      ,[UltimaVenda] AS ULTIMA_VENDA
      ,[Referencia] AS COD_FABRICANTE
      ,[Origem] AS OST
      ,[CSTCSOSN] AS ST
      ,[CEST] AS PERSONAL6
  FROM [SIGCONTROL].[dbo].[DBTF0003]
