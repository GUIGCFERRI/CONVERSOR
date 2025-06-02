SELECT 
       [Produtos].[Sequencia do produto] AS CODIGO
      ,[Produtos].[Descrição] AS DESCRICAO
      ,[Produtos].[Estoque] AS QTD
      ,[Unidades].[Sigla da unidade] AS UND
      ,[Classificação fiscal].[Ncm] AS COD_NCM
      ,[Classificação fiscal].[Cest] AS PERSONAL6
      ,[Produtos].[Valor unitario] AS PRECO_VENDA
      ,[Produtos].[Valor de custo] AS PRECO_CUSTO
      ,CAST ([Produtos].[Ultima venda] AS DATE) AS ULTIMA_VENDA
      ,[Produtos].[Codigo de Barras] AS BARRAS
  FROM [DADOSNFE].[dbo].[Produtos]
  left join [DADOSNFE].[dbo].[Unidades] on [Unidades].[Sequencia da unidade] = [Produtos].[Sequencia da unidade]
  LEFT JOIN [DADOSNFE].[dbo].[Classificação fiscal] ON [Classificação fiscal].[Sequencia da classificação] = [Produtos].[Sequencia da classificação]
