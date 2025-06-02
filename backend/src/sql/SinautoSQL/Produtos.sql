SELECT Cad_Produtos.[Produto] as codigo
      ,Cad_Produtos.[Descricao]
      ,Cad_Produtos.[Custo] as preco_custo
      ,Cad_Produtos.[Preco_Tabela] as preco_venda
      ,Cad_Produtos.[Referencia] as cod_fabricante
      ,Cad_Produtos.[Unidade] as und
      ,Cad_Produtos.[CF] as cod_ncm
      ,Cad_Produtos.[DescricaoFornecedor] as fornecedor
      ,Cad_Produtos.[DescricaoGrupo] as grupo
      ,Cad_Produtos.[ST] as st
      ,Cad_Produtos.[CodigoBarras] as barras
      ,Cad_Produtos.[CEST] as personal6
	  ,sum (estoque.Quantidade) as qtd
  FROM [SinautoSQL].[dbo].[Cad_Produtos]
  left join [SinautoSQL].[dbo].Estoque on Cad_Produtos.produto = estoque.Produto
  group by 
  Cad_Produtos.[Produto]
      ,Cad_Produtos.[Descricao]
      ,Cad_Produtos.[Custo]
      ,Cad_Produtos.[Preco_Tabela]
      ,Cad_Produtos.[Referencia]
      ,Cad_Produtos.[Unidade]
      ,Cad_Produtos.[CF]
      ,Cad_Produtos.[DescricaoFornecedor]
      ,Cad_Produtos.[DescricaoGrupo]
      ,Cad_Produtos.[ST]
      ,Cad_Produtos.[CodigoBarras]
      ,Cad_Produtos.[CEST]