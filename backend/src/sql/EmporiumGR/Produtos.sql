SELECT
       Produtos.Código AS CODIGO
      ,Produtos.Descrição AS DESCRICAO
      ,CAST (Produtos.DataDaInclusão AS DATE) AS DATA_CADASTRO
      ,CAST (Produtos.DataDeEdição AS DATE) AS ALTERACAO_PRECO
      ,Produtos.ProdutoGTIN AS BARRAS
      ,Produtos.ProdutoReferencia AS COD_REFERENCIA
      ,Produtos.UNA AS UND
      ,Produtos.UNE AS UND_COMPRA
      ,ProdutosPrecosDeVenda.Preco AS PRECO_VENDA
      ,ProdutosPrecosDeVenda.Lucro AS MARGEM_LUCRO
      ,Categorias.Descrição AS FAMILIA
      ,Setores.Descrição AS GRUPO
      ,FORNECEDORES.NOME AS FORNECEDOR
      ,Produtos.Observações AS OBSERVACOES
      ,Produtos.Peso AS PESO
  FROM EmporiumGR.dbo.Produtos
  LEFT JOIN EmporiumGR.dbo.Fornecedores ON Fornecedores.CÓDIGO = PRODUTOS.Fornecedor
  LEFT JOIN EmporiumGR.dbo.Setores ON Setores.Código = PRODUTOS.Setor
  LEFT JOIN EmporiumGR.dbo.Categorias ON CATEGORIAS.Código = PRODUTOS.Categoria
  LEFT JOIN EmporiumGR.dbo.ProdutosPrecosDeVenda ON ProdutosPrecosDeVenda.ProdutoID = PRODUTOS.Código