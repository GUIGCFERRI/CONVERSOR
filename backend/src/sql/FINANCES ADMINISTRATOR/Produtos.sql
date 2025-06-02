SELECT 
       [Produtos].[Cod produto interno] AS CODIGO
      ,[Produtos].[Cod produto] AS COD_FABRICANTE
      ,[Produtos].[Cod automacao] AS BARRAS
      ,[Produtos].[Descricao produto] AS DESCRICAO
      ,[Produtos].[Nome grupo] AS GRUPO
      ,[Fornecedores].[Nome fornecedor] AS FORNECEDOR
      ,[Produtos].[Peso] AS PESO
      ,[Produtos].[Sigla unidade] AS UND
      ,[Produtos].[Estoque atual] AS QTD
      ,[Produtos].[Estoque minimo] AS QTD_INICIAL
      ,[Produtos].[Cst icms] AS ST
      ,[Produtos].[Preço custo] AS PRECO_CUSTO
      ,[Produtos].[Preço custo medio] AS CUSTO_MEDIO
      ,[Produtos].[Preço venda] AS PRECO_VENDA
      ,[Produtos].[Margem lucro] AS MARGEM_LUCRO
      ,CAST ([Produtos].[Data do cadastro prod] AS DATE) AS DATA_CADASTRO
      ,CAST ([Produtos].[Ultima atualizacao] AS DATE) AS ALTERACAO_PRECO
      ,CAST ([Produtos].[Data ultima entrada] AS DATE) AS ULTIMA_COMPRA
      ,CAST ([Produtos].[Data ultima saida] AS DATE) AS ULTIMA_VENDA
      ,[Produtos].[NCM] AS COD_NCM
      ,[Classificacao cest].[Codigo cest] AS PERSONAL6
  FROM [BDFINANC].[dbo].[Produtos]
  LEFT JOIN [BDFINANC].[dbo].[Fornecedores] ON [Fornecedores].[Cod fornecedor] = [Produtos].[Cod fornecedor]
  LEFT JOIN [BDFINANC].[dbo].[Classificacao cest] ON [Classificacao cest].[NCM] = [Produtos].[NCM]
