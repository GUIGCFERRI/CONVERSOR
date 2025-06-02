SELECT 
       [vw_produto_completo].[MARCA] AS CARACTERISTICAS
      ,[vw_produto_completo].[CATEGORIA] AS GRUPO
      ,[vw_produto_completo].[SUBCATEGORIA] AS FAMILIA
      ,[vw_produto_completo].[CODIGO] AS CODIGO
	  ,MAX ([VW_ESTOQUE_FILIAL].[QUANTIDADE]) AS QTD
      ,MAX ([VW_ESTOQUE_FILIAL].[CUSTO_ULTIMA_ENTRADA]) AS PRECO_CUSTO
      ,MAX ([VW_ESTOQUE_FILIAL].[PRECO]) AS PRECO_VENDA
      ,[vw_produto_completo].[COR]
      ,[vw_produto_completo].[DESCRICAO]
      ,[vw_produto_completo].[UNIDADE] AS UND
      ,[vw_produto_completo].[REFERENCIA] AS COD_FABRICANTE
      ,[vw_produto_completo].[COD_BARRA] AS BARRAS
      ,[vw_produto_completo].[TAMANHO]
      ,[vw_produto_completo].[NCM_SH] AS COD_NCM
      ,[vw_produto_completo].[CEST] AS PERSONAL6
  FROM [wfcom].[dbo].[vw_produto_completo]
  LEFT JOIN [wfcom].[dbo].[VW_ESTOQUE_FILIAL] ON [vw_produto_completo].CODIGO = [VW_ESTOQUE_FILIAL].PRODUTO
 GROUP BY 
       [vw_produto_completo].[MARCA]
      ,[vw_produto_completo].[CATEGORIA]
      ,[vw_produto_completo].[SUBCATEGORIA]
      ,[vw_produto_completo].[CODIGO]
      ,[vw_produto_completo].[COR]
      ,[vw_produto_completo].[DESCRICAO]
      ,[vw_produto_completo].[UNIDADE]
      ,[vw_produto_completo].[REFERENCIA]
      ,[vw_produto_completo].[COD_BARRA]
      ,[vw_produto_completo].[TAMANHO]
      ,[vw_produto_completo].[NCM_SH]
      ,[vw_produto_completo].[CEST]