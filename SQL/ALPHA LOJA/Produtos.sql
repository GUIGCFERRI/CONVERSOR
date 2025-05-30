SELECT Produtos.Referencia AS COD_FABRICANTE
      ,Produtos.Descricao
      ,Produtos.UND
      ,Produtos.PrCusto AS PRECO_CUSTO
      ,Produtos.Preco1 AS PRECO_VENDA
      ,Grupos.DESCRICAO AS Grupo
      ,Produtos.CodigoBarras AS BARRAS
      ,sum(Entradas-Saidas) as qtd
      ,Produtos.Fornecedor
      ,Produtos.CodigoNCM AS COD_NCM
  FROM AlphaLoja.dbo.Produtos
LEFT JOIN AlphaLoja.dbo.Grupos on AlphaLoja.dbo.Produtos.Grupo = AlphaLoja.dbo.Grupos.Codigo
group by 
Produtos.Referencia
      ,Produtos.Descricao
      ,Produtos.UND
      ,Produtos.PrCusto
      ,Produtos.Preco1
      ,Grupos.DESCRICAO
      ,Produtos.CodigoBarras
      ,Produtos.Fornecedor
      ,Produtos.CodigoNCM