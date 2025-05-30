SELECT
       [Cadastro de mercadorias].[Código da Mercadoria] AS CODIGO
      ,[Cadastro de mercadorias].[Mercadoria] AS DESCRICAO
      ,[Cadastro de mercadorias].[Cód Barra] AS BARRAS
      ,[Cadastro de mercadorias].[Fabricante] AS CARACTERISTICAS
      ,[Cadastro de mercadorias].[Fornecedor] AS FORNECEDOR
      ,[Cadastro de mercadorias].[Unidades em Estoque] AS QTD
     -- ,[Cadastro de mercadorias].[Estoque Mínimo] AS QTD_IDEAL
      ,[Cadastro de mercadorias].[Peso] AS PESO
      ,[Cadastro de mercadorias].[Grupo] AS GRUPO
      ,[Cadastro de mercadorias].[Cód Fabricante] AS COD_FABRICANTE
      ,[Cadastro de mercadorias].[Preço C] AS PRECO_CUSTO
      ,[Cadastro de mercadorias].[Preço de Venda] AS PRECO_VENDA
      ,[Cadastro de mercadorias].[Margem Lucro] AS MARGEM_LUCRO
      ,CAST ([Cadastro de mercadorias].[DataCadastro] AS DATE) AS DATA_CADASTRO 
      ,CAST ([Cadastro de mercadorias].[Ultima Entrada] AS DATE) AS ULTIMA_COMPRA
      ,CAST ([Cadastro de mercadorias].[DataAlteracaoPreco] AS DATE) AS ALTERACAO_PRECO
      ,[Cadastro de mercadorias].[Observacao] AS OBSERVACOES
      --,[NFe_CST].[CST] AS ST
      ,[Cadastro de mercadorias].[NCM] AS COD_NCM   
      ,[Cadastro de mercadorias].[cCEST] AS PERSONAL6
  FROM [BaseSuperMotos].[dbo].[Cadastro de mercadorias]
  --LEFT JOIN [BaseSuperMotos].[dbo].[NFe_CST] ON [NFe_CST].[ID] = [Cadastro de mercadorias].[CST]