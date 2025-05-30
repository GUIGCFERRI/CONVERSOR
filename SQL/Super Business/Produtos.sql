SELECT 
       SUBSTRING ([Produtos].[C�d prod],2,7) as codigo
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
      ,[Produtos].[Outras_informacoes]
      ,substring (min ([Tributo_aliquota].[Simplescst]),1,1) as ost
      ,substring (min ([Tributo_aliquota].[Simplescst]),2,3) as st
      ,[Produtos].[Pre�o custo] as preco_custo
      ,[Produtos].[Margem] as margem_lucro
      ,[Produtos].[Pre�o venda] as preco_venda
      ,[Produtos].[precoatacado] as preco_atacado
      --,[Produtos].[Obs] as observacoes
      ,[Produtos].[Referencia] as cod_fabricante
      ,cast ([Produtos].[Data_inclusao] as date) as data_cadastro
      ,cast ([Produtos].[Data_alteracao] as date) as alteracao_preco
      ,replace([Produtos].[Codigo ncm],'.','') as cod_ncm
      ,replace([Produtos].[Cest],'.','') as pesrsonal6
  FROM [dados].[dbo].[Produtos]
left join [dados].[dbo].[Fam�lias] on [Fam�lias].[Codigo fam�lia] = [Produtos].[Codigo fam�lia]
left join [dados].[dbo].[Grupos] on [Grupos].[C�digo grupo] = [Produtos].[C�digo grupo]
left join [dados].[dbo].[Tributo] on [Tributo].[Cod_tributo] = [Produtos].[Cod_Tributo]
left join [dados].[dbo].[Tributo_aliquota] on [Tributo_aliquota].[Cod_tributo] = [Tributo].[Cod_tributo]
group by
       [Produtos].[C�d prod]
      ,[Produtos].[Nome produto]
      ,[Produtos].[Codigo_barras]
      ,[Produtos].[N_marca]
      ,[Produtos].[Est_minimo]
      ,[Produtos].[Estoque geral]
      ,[Produtos].[Unidade compra]
      ,[Produtos].[Unidade venda]
      ,[Fam�lias].[Nome fam�lia]
      ,[Grupos].[Nome grupo]
      ,[Produtos].[peso]
      ,[Produtos].[Outras_informacoes]
      ,[Produtos].[Pre�o custo]
      ,[Produtos].[Margem]
      ,[Produtos].[Pre�o venda]
      ,[Produtos].[precoatacado]
      --,[Produtos].[Obs]
      ,[Produtos].[Referencia]
      ,[Produtos].[Data_inclusao]
      ,[Produtos].[Data_alteracao]
      ,[Produtos].[Codigo ncm]
      ,[Produtos].[Cest]
