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
      ,[Cadastro de mercadorias].[ICMS] AS ELO
      ,[Cadastro de mercadorias].[Cód Barra] AS BARRAS
      ,[NFe_CST].[ST] AS ST
      ,[Cadastro de mercadorias].[Cód Fabricante] AS COD_FABRICANTE
      ,[Cadastro de mercadorias].[Margem Lucro] AS MARGEM_LUCRO
      ,[Cadastro de mercadorias].[Peso] AS PESO
      ,cast ([Cadastro de mercadorias].[DataAlteracaoPreco] as date) AS ALTERACAO_PRECO
      ,[Cadastro de mercadorias].[Observacao] AS OBSERVACOES
      ,[Cadastro de mercadorias].[NCM] AS COD_NCM
      ,MAX ([NFe_CEST].[CEST]) AS PERSONAL6
      --,[Cadastro de mercadorias].[cCEST] AS PERSONAL6
      ,cast ([Cadastro de mercadorias].[DataCadastro] as date) AS DATA_CADASTRO
  FROM [BaseMercadinhodoZe].[dbo].[Cadastro de mercadorias]
  LEFT JOIN [BaseMercadinhodoZe].[dbo].[Cadastro de mercadoriasLojas] ON [Cadastro de mercadoriasLojas].[Código da Mercadoria] = [Cadastro de mercadorias].[Código da Mercadoria]
  LEFT JOIN [BaseMercadinhodoZe].[dbo].[VinculoFiscal_MercadoriaDetalhes] ON [VinculoFiscal_MercadoriaDetalhes].[IDMercadoria] = [Cadastro de mercadorias].[Código da Mercadoria]  
  LEFT JOIN [BaseMercadinhodoZe].[dbo].[VinculoFiscal] ON [VinculoFiscal].[ID] = [VinculoFiscal_MercadoriaDetalhes].[IDVinculoFiscal]
  LEFT JOIN [BaseMercadinhodoZe].[dbo].[VinculoFiscal_Tributacao] ON [VinculoFiscal_Tributacao].[IDVinculoFiscal] = [VinculoFiscal].[ID] AND [VinculoFiscal_Tributacao].[RegimeTributario] = '3' -- REGIME 1 (SIMPLES NACIONAL), REGIME 3 (NORMAL)
  LEFT JOIN [BaseMercadinhodoZe].[dbo].[NFe_CST] ON [NFe_CST].[ID] = [VinculoFiscal_Tributacao].[NFe_CST_Icms] 
  LEFT JOIN [BaseMercadinhodoZe].[dbo].[NFe_CEST] ON [NFe_CEST].[NCM] = [Cadastro de mercadorias].[NCM]
  GROUP BY
       [Cadastro de mercadorias].[Código da Mercadoria]
      ,[Cadastro de mercadorias].[Mercadoria]
      ,[Cadastro de mercadorias].[Preço Compra]
      ,[Cadastro de mercadorias].[Preço de Venda]
      ,[Cadastro de mercadorias].[Fornecedor]
      ,[Cadastro de mercadorias].[Medida]
      ,[Cadastro de mercadoriasLojas].[Estoque]
      ,[Cadastro de mercadorias].[QuantEmbalagem]
      ,[Cadastro de mercadorias].[Grupo]
      ,[Cadastro de mercadorias].[SubGrupo]
      ,[Cadastro de mercadorias].[ICMS]
      ,[Cadastro de mercadorias].[Cód Barra]
      ,[NFe_CST].[ST]
      ,[Cadastro de mercadorias].[Cód Fabricante]
      ,[Cadastro de mercadorias].[Margem Lucro]
      ,[Cadastro de mercadorias].[Peso]
      ,[Cadastro de mercadorias].[DataAlteracaoPreco]
      ,[Cadastro de mercadorias].[Observacao]
      ,[Cadastro de mercadorias].[NCM]
      ,[Cadastro de mercadorias].[DataCadastro] 
