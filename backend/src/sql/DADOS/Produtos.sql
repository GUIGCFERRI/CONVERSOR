SELECT 
       SUBSTRING ([Produtos].[C�d prod],4,7) as codigo
      ,[Produtos].[Nome produto] as descricao
      ,[Produtos].[Codigo_barras] as barras
      ,[Produtos].[N_marca] as caracteristicas
      ,[Produtos].[Est_minimo] as qtd_ideal
      ,[Produtos].[Estoque geral] as qtd
      ,[Produtos].[Unidade compra] as und_compra
      ,[Produtos].[Unidade venda] as und
      ,[Fam�lias].[Nome fam�lia] as familia
      ,[Grupos].[Nome grupo] as grupo
      ,[Produtos].[peso] as peso
      ,[Produtos].[Pre�o custo] as preco_custo
      ,[Produtos].[Margem] as margem_lucro
      ,[Produtos].[Pre�o venda] as preco_venda
      ,[Produtos].[precoatacado] as preco_atacado
      ,[Produtos].[Obs] as observacoes
      ,[Produtos].[Referencia] as cod_fabricante
      ,cast ([Produtos].[Data_inclusao] as date) as data_cadastro
      ,cast ([Produtos].[Data_alteracao] as date) as alteracao_preco
      ,replace([Produtos].[Codigo ncm],'.','') as cod_ncm
      ,[Produtos].[Cest] as pesrsonal6
  FROM [dados].[dbo].[Produtos]
left join [dados].[dbo].[Fam�lias] on [Fam�lias].[Codigo fam�lia] = [Produtos].[Codigo fam�lia]
left join [dados].[dbo].[Grupos] on [Grupos].[C�digo grupo] = [Produtos].[C�digo grupo]
