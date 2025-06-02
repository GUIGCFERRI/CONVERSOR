SELECT 
       E.[Descri��o Item] as descricao	
      ,substring (E.[C�digo Item],2,7) as codigo
      ,E.[Unidade] as und
      ,E.[Estoque Atual] as qtd
      ,[Fornecedores].[Raz�o Social] as fornecedor
      ,[Grupos].[Descri��o Grupo] as grupo
      ,E.[C�digo Fabricante] as cod_fabricante
      ,E.[C�digo Barras] as barras
      ,max (substring ([Perfil Fiscal].[CSOSN],1,1)) as ost
      ,max (substring ([Perfil Fiscal].[CSOSN],2,4)) as st
      ,E.[C�digo NCM] as cod_ncm
      ,E.[C�digo CEST] as personal6
      ,E.[Estoque M�nimo] as qtd_ideal
      ,E.[C�digo Benef�cio] as cbenef
      ,E.[Margem Unit�rio] as margem_lucro
      ,E.[Valor Unit�rio Atual] as preco_venda
      ,E.[Valor Custo M�dio Atual] as custo_medio
      ,cast (E.[Data �ltima Entrada] as date) as ultima_compra
      ,cast (E.[Data �ltima Sa�da] as date) as ultima_venda
      ,cast (E.[Data Cadastro] as date) as data_cadastro
  FROM [WM_ShopEconomiaCentro].[dbo].[Estoque] as E
left join [WM_ShopEconomiaCentro].[dbo].[Fornecedores] on [Fornecedores].[C�digo Fornecedor] = E.[C�digo Fornecedor]
left join [WM_ShopEconomiaCentro].[dbo].[Grupos Tributa��o Natureza] on [Grupos Tributa��o Natureza].[ID Tributa��o] = E.[ID Tributa��o]
left join [WM_ShopEconomiaCentro].[dbo].[Perfil Fiscal] on [Perfil Fiscal].[C�digo Perfil] = [Grupos Tributa��o Natureza].[C�digo Perfil]
left join [WM_ShopEconomiaCentro].[dbo].[Grupos] on [Grupos].[C�digo Grupo] = E.[C�digo Grupo]
group by
       E.[Descri��o Item]
      ,E.[C�digo Item]
      ,E.[Ativo]
      ,E.[Unidade]
      ,E.[Estoque Atual]
      ,[Fornecedores].[Raz�o Social]
      ,[Grupos].[Descri��o Grupo]
      ,E.[C�digo Fabricante]
      ,E.[C�digo Barras]
      ,E.[C�digo NCM]
      ,E.[C�digo CEST]
      ,E.[Estoque M�nimo]
      ,E.[C�digo Benef�cio]
      ,E.[Margem Unit�rio]
      ,E.[Valor Unit�rio Atual]
      ,E.[Valor Custo M�dio Atual]
      ,E.[Data �ltima Entrada]
      ,E.[Data �ltima Sa�da]
      ,E.[Data Cadastro]