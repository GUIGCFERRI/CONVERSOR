SELECT 
       [Cadastro de mercadorias].[Código da Mercadoria] AS CODIGO
      ,[Cadastro de mercadorias].[Mercadoria] AS DESCRICAO
      ,[Cadastro de mercadorias].[Preço de Venda] AS PRECO_VENDA
      ,[Cadastro de mercadorias].[Fornecedor] AS FORNECEDOR
      ,[Cadastro de mercadoriasLojas].[Estoque] AS QTD
    --,[Cadastro de mercadorias].[Estoque Mínimo] AS QTD_IDEAL
      ,[Cadastro de mercadorias].[Preço Compra] AS PRECO_CUSTO
      ,[Cadastro de mercadorias].[Grupo] AS GRUPO
      ,[Cadastro de mercadorias].[SubGrupo] AS FAMILIA
      ,[Cadastro de mercadorias].[Cód Barra] AS BARRAS
      ,[Cadastro de mercadorias].[Cód Fabricante] AS COD_FABRICANTE
      ,[Cadastro de mercadorias].[Margem Lucro] AS MARGEM_LUCRO
      ,[Cadastro de mercadorias].[Peso] AS PESO
      ,[Cadastro de mercadorias].[DataAlteracaoPreco] AS ALTERACAO_PRECO
      ,[Cadastro de mercadorias].[Observacao] AS OBSERVACOES
    --,[NFe_CST].[CST] AS ST
      ,[Cadastro de mercadorias].[NCM] AS COD_NCM
      ,[Cadastro de mercadorias].[cCEST] AS PERSONAL6
  FROM [BaseLaBelleForMen].[dbo].[Cadastro de mercadorias]
  LEFT JOIN [BaseLaBelleForMen].[dbo].[Cadastro de mercadoriasLojas] ON [Cadastro de mercadoriasLojas].[Código da MercadoriaLoja] = [Cadastro de mercadorias].[Código da Mercadoria]
  --LEFT JOIN [BaseLaBelleForMen].[dbo].[NFe_CST] ON [BaseLaBelleForMen].[dbo].[NFe_CST].ID = [Cadastro de mercadorias].[CST]