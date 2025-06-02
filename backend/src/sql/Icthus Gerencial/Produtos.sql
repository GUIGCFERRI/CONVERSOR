SELECT 
       E.[Descrição Item] as descricao	
      ,substring (E.[Código Item],2,7) as codigo
      ,E.[Unidade] as und
      ,E.[Estoque Atual] as qtd
      ,[Fornecedores].[Razão Social] as fornecedor
      ,[Grupos].[Descrição Grupo] as grupo
      ,E.[Código Fabricante] as cod_fabricante
      ,E.[Código Barras] as barras
      ,max (substring ([Perfil Fiscal].[CSOSN],1,1)) as ost
      ,max (substring ([Perfil Fiscal].[CSOSN],2,4)) as st
      ,E.[Código NCM] as cod_ncm
      ,E.[Código CEST] as personal6
      ,E.[Estoque Mínimo] as qtd_ideal
      ,E.[Código Benefício] as cbenef
      ,E.[Margem Unitário] as margem_lucro
      ,E.[Valor Unitário Atual] as preco_venda
      ,E.[Valor Custo Médio Atual] as custo_medio
      ,cast (E.[Data Última Entrada] as date) as ultima_compra
      ,cast (E.[Data Última Saída] as date) as ultima_venda
      ,cast (E.[Data Cadastro] as date) as data_cadastro
  FROM [WM_ShopEconomiaCentro].[dbo].[Estoque] as E
left join [WM_ShopEconomiaCentro].[dbo].[Fornecedores] on [Fornecedores].[Código Fornecedor] = E.[Código Fornecedor]
left join [WM_ShopEconomiaCentro].[dbo].[Grupos Tributação Natureza] on [Grupos Tributação Natureza].[ID Tributação] = E.[ID Tributação]
left join [WM_ShopEconomiaCentro].[dbo].[Perfil Fiscal] on [Perfil Fiscal].[Código Perfil] = [Grupos Tributação Natureza].[Código Perfil]
left join [WM_ShopEconomiaCentro].[dbo].[Grupos] on [Grupos].[Código Grupo] = E.[Código Grupo]
group by
       E.[Descrição Item]
      ,E.[Código Item]
      ,E.[Ativo]
      ,E.[Unidade]
      ,E.[Estoque Atual]
      ,[Fornecedores].[Razão Social]
      ,[Grupos].[Descrição Grupo]
      ,E.[Código Fabricante]
      ,E.[Código Barras]
      ,E.[Código NCM]
      ,E.[Código CEST]
      ,E.[Estoque Mínimo]
      ,E.[Código Benefício]
      ,E.[Margem Unitário]
      ,E.[Valor Unitário Atual]
      ,E.[Valor Custo Médio Atual]
      ,E.[Data Última Entrada]
      ,E.[Data Última Saída]
      ,E.[Data Cadastro]