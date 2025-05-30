SELECT
       Produtos.C�digo AS CODIGO
      ,Produtos.Descri��o AS DESCRICAO
      ,CAST (Produtos.DataDaInclus�o AS DATE) AS DATA_CADASTRO
      ,CAST (Produtos.DataDeEdi��o AS DATE) AS ALTERACAO_PRECO
      ,Produtos.ProdutoGTIN AS BARRAS
      ,Produtos.ProdutoReferencia AS COD_REFERENCIA
      ,Produtos.UNA AS UND
      ,Produtos.UNE AS UND_COMPRA
      ,ProdutosPrecosDeVenda.Preco AS PRECO_VENDA
      ,ProdutosPrecosDeVenda.Lucro AS MARGEM_LUCRO
      ,Categorias.Descri��o AS FAMILIA
      ,Setores.Descri��o AS GRUPO
      ,FORNECEDORES.NOME AS FORNECEDOR
      ,Produtos.Observa��es AS OBSERVACOES
      ,Produtos.Peso AS PESO
  FROM EmporiumGR.dbo.Produtos
  LEFT JOIN EmporiumGR.dbo.Fornecedores ON Fornecedores.C�DIGO = PRODUTOS.Fornecedor
  LEFT JOIN EmporiumGR.dbo.Setores ON Setores.C�digo = PRODUTOS.Setor
  LEFT JOIN EmporiumGR.dbo.Categorias ON CATEGORIAS.C�digo = PRODUTOS.Categoria
  LEFT JOIN EmporiumGR.dbo.ProdutosPrecosDeVenda ON ProdutosPrecosDeVenda.ProdutoID = PRODUTOS.C�digo