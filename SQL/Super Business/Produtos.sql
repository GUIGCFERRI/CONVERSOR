SELECT 
       SUBSTRING ([Produtos].[Cód prod],2,7) as codigo
      ,[Produtos].[Nome produto] as descricao
      ,[Produtos].[Codigo_barras] as barras
      ,[Produtos].[N_marca] as caracteristicas
      ,[Produtos].[Est_minimo] as qtd_ideal
      ,[Produtos].[Estoque geral] as qtd
      ,[Produtos].[Unidade compra] as und_compra
      ,[Produtos].[Unidade venda] as und
      ,[Famílias].[Nome família] as familia
      ,[Grupos].[Nome grupo] as grupo
      ,[Produtos].[peso] as peso
      ,[Produtos].[Outras_informacoes]
      ,substring (min ([Tributo_aliquota].[Simplescst]),1,1) as ost
      ,substring (min ([Tributo_aliquota].[Simplescst]),2,3) as st
      ,[Produtos].[Preço custo] as preco_custo
      ,[Produtos].[Margem] as margem_lucro
      ,[Produtos].[Preço venda] as preco_venda
      ,[Produtos].[precoatacado] as preco_atacado
      --,[Produtos].[Obs] as observacoes
      ,[Produtos].[Referencia] as cod_fabricante
      ,cast ([Produtos].[Data_inclusao] as date) as data_cadastro
      ,cast ([Produtos].[Data_alteracao] as date) as alteracao_preco
      ,replace([Produtos].[Codigo ncm],'.','') as cod_ncm
      ,replace([Produtos].[Cest],'.','') as pesrsonal6
  FROM [dados].[dbo].[Produtos]
left join [dados].[dbo].[Famílias] on [Famílias].[Codigo família] = [Produtos].[Codigo família]
left join [dados].[dbo].[Grupos] on [Grupos].[Código grupo] = [Produtos].[Código grupo]
left join [dados].[dbo].[Tributo] on [Tributo].[Cod_tributo] = [Produtos].[Cod_Tributo]
left join [dados].[dbo].[Tributo_aliquota] on [Tributo_aliquota].[Cod_tributo] = [Tributo].[Cod_tributo]
group by
       [Produtos].[Cód prod]
      ,[Produtos].[Nome produto]
      ,[Produtos].[Codigo_barras]
      ,[Produtos].[N_marca]
      ,[Produtos].[Est_minimo]
      ,[Produtos].[Estoque geral]
      ,[Produtos].[Unidade compra]
      ,[Produtos].[Unidade venda]
      ,[Famílias].[Nome família]
      ,[Grupos].[Nome grupo]
      ,[Produtos].[peso]
      ,[Produtos].[Outras_informacoes]
      ,[Produtos].[Preço custo]
      ,[Produtos].[Margem]
      ,[Produtos].[Preço venda]
      ,[Produtos].[precoatacado]
      --,[Produtos].[Obs]
      ,[Produtos].[Referencia]
      ,[Produtos].[Data_inclusao]
      ,[Produtos].[Data_alteracao]
      ,[Produtos].[Codigo ncm]
      ,[Produtos].[Cest]
