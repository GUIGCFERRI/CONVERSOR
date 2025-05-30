SELECT 
       [Cadastro de mercadorias].[Código da Mercadoria] AS CODIGO
      ,[Cadastro de mercadorias].[Mercadoria] AS DESCRICAO
      ,[Cadastro de mercadorias].[Preço Compra] AS PRECO_CUSTO
      ,[Cadastro de mercadorias].[Preço de Venda] AS PRECO_VENDA
      ,[Cadastro de mercadorias].[Fornecedor] AS FORNECEDOR
      ,[Cadastro de mercadorias].[Medida] AS UND
      ,[Cadastro de mercadoriasLojas].[Estoque] AS QTD
      ,[Cadastro de mercadorias].[QuantEmbalagem] AS FAT_CONV
      --,[Cadastro de mercadorias].[Estoque Mínimo] AS QTD_IDEAL
      ,[Cadastro de mercadorias].[Grupo] AS GRUPO
      ,[Cadastro de mercadorias].[SubGrupo] AS FAMILIA
     -- ,[Cadastro de mercadorias].[ICMS] AS ELO
      ,[Cadastro de mercadorias].[Cód Fabricante] AS BARRAS
      ,[NFe_CST].[CST] AS ST
      ,[VinculoFiscal_Tributacao].[ICMS_AliquotaInterna]  
      ,[Cadastro de mercadorias].[Cód Fabricante] AS COD_FABRICANTE
      ,[Cadastro de mercadorias].[Margem Lucro] AS MARGEM_LUCRO
      ,[Cadastro de mercadorias].[Peso] AS PESO
      ,cast ([Cadastro de mercadorias].[DataAlteracaoPreco] as date) AS ALTERACAO_PRECO
      ,[Cadastro de mercadorias].[Observacao] AS OBSERVACOES
      ,[Cadastro de mercadorias].[NCM] AS COD_NCM
      ,[Cadastro de mercadorias].[cCEST] AS PERSONAL6
      ,cast ([Cadastro de mercadorias].[DataCadastro] as date) AS DATA_CADASTRO
  FROM [BaseFarmaciaSaoJose].[dbo].[Cadastro de mercadorias]
  LEFT JOIN [BaseFarmaciaSaoJose].[dbo].[Cadastro de mercadoriasLojas] ON [Cadastro de mercadoriasLojas].[Código da Mercadoria] = [Cadastro de mercadorias].[Código da Mercadoria]
  LEFT JOIN [BaseFarmaciaSaoJose].[dbo].[VinculoFiscal_MercadoriaDetalhes] ON [VinculoFiscal_MercadoriaDetalhes].[IDMercadoria] = [Cadastro de mercadorias].[Código da Mercadoria]  
  LEFT JOIN [BaseFarmaciaSaoJose].[dbo].[VinculoFiscal] ON [VinculoFiscal].[ID] = [VinculoFiscal_MercadoriaDetalhes].[IDVinculoFiscal]
  LEFT JOIN [BaseFarmaciaSaoJose].[dbo].[VinculoFiscal_Tributacao] ON [VinculoFiscal_Tributacao].[IDVinculoFiscal] = [VinculoFiscal].[ID] AND [VinculoFiscal_Tributacao].[RegimeTributario] = '1' -- REGIME 1 (SIMPLES NACIONAL), REGIME 3 (NORMAL)
  LEFT JOIN [BaseFarmaciaSaoJose].[dbo].[NFe_CST] ON [NFe_CST].[ID] = [VinculoFiscal_Tributacao].[NFe_CST_Icms] 
