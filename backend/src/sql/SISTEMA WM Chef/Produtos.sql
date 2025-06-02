SELECT 
       substring ([Estoque].[C�digo Item],2,7) as codigo
      ,[Estoque].[Descri��o Item] as descricao
      ,[Estoque].[Unidade] as und
      ,[Estoque].[Estoque Atual] as qtd
      ,[Estoque].[Pre�o Unit�rio] as preco_venda
      ,[Grupos].[Descri��o Grupo] as grupo
      ,[Grupos Subgrupos].[Descri��o Subgrupo] as familia
      ,[Estoque].[C�digo Fabricante] as cod_fabricante
      ,[Estoque].[C�digo Barras] as barras
      ,[Estoque].[C�digo NCM] as cod_ncm
      ,[Estoque].[C�digo CEST] as personal6
      ,[Estoque].[Observa��es] as observacoes
      ,[Estoque].[Estoque M�nimo] as qtd_ideal
      ,substring ([Grupos Tributa��o].[Descri��o Tributa��o], 7,3) as st
      ,cast ([Estoque].[Data Pre�o] as date) as alteracao_preco
      ,cast ([Estoque].[Data �ltima Entrada] as date) as ultima_compra
      ,cast ([Estoque].[Data �ltima Sa�da] as date) as ultima_venda
      ,cast ([Estoque].[Data Cadastro] as date) as data_cadastro
      ,case when [Estoque].[Ativo] = '1' then 'Ativo' else 'Inativo' end as SITUACAO
  FROM [WM_GalinhaGordaNovo].[dbo].[Estoque]
  left join [WM_GalinhaGordaNovo].[dbo].[Grupos] on [Grupos].[C�digo Grupo] = [Estoque].[C�digo Grupo]
  left join [WM_GalinhaGordaNovo].[dbo].[Grupos Subgrupos] on [Grupos Subgrupos].[C�digo Subgrupo] = [Estoque].[C�digo Subgrupo] AND [Grupos].[C�digo Grupo] = [Grupos Subgrupos].[C�digo Grupo]
  left join [WM_GalinhaGordaNovo].[dbo].[Grupos Tributa��o] on [Grupos Tributa��o].[ID Tributa��o] = [Estoque].[ID Tributa��o]