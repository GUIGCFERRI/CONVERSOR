SELECT 
       substring ([Estoque].[Código Item],2,7) as codigo
      ,[Estoque].[Descrição Item] as descricao
      ,[Estoque].[Unidade] as und
      ,[Estoque].[Estoque Atual] as qtd
      ,[Estoque].[Preço Unitário] as preco_venda
      ,[Grupos].[Descrição Grupo] as grupo
      ,[Grupos Subgrupos].[Descrição Subgrupo] as familia
      ,[Estoque].[Código Fabricante] as cod_fabricante
      ,[Estoque].[Código Barras] as barras
      ,[Estoque].[Código NCM] as cod_ncm
      ,[Estoque].[Código CEST] as personal6
      ,[Estoque].[Observações] as observacoes
      ,[Estoque].[Estoque Mínimo] as qtd_ideal
      ,substring ([Grupos Tributação].[Descrição Tributação], 7,3) as st
      ,cast ([Estoque].[Data Preço] as date) as alteracao_preco
      ,cast ([Estoque].[Data Última Entrada] as date) as ultima_compra
      ,cast ([Estoque].[Data Última Saída] as date) as ultima_venda
      ,cast ([Estoque].[Data Cadastro] as date) as data_cadastro
      ,case when [Estoque].[Ativo] = '1' then 'Ativo' else 'Inativo' end as SITUACAO
  FROM [WM_GalinhaGordaNovo].[dbo].[Estoque]
  left join [WM_GalinhaGordaNovo].[dbo].[Grupos] on [Grupos].[Código Grupo] = [Estoque].[Código Grupo]
  left join [WM_GalinhaGordaNovo].[dbo].[Grupos Subgrupos] on [Grupos Subgrupos].[Código Subgrupo] = [Estoque].[Código Subgrupo] AND [Grupos].[Código Grupo] = [Grupos Subgrupos].[Código Grupo]
  left join [WM_GalinhaGordaNovo].[dbo].[Grupos Tributação] on [Grupos Tributação].[ID Tributação] = [Estoque].[ID Tributação]