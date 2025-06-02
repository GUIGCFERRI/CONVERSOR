SELECT
       Produtos.PRODUTO AS COD_FABRICANTE
      ,Produtos.Referencia AS CARACTERISTICAS
      ,Produtos.CodigoMercosul AS COD_NCM
      ,Produtos.CEST AS PERSONAL6
      ,Produtos.Descricao AS DESCRICAO  
      ,substring (ProdutoBarras.Barras, 2, 14) AS BARRAS
      ,ProdutoBarras.Quantidade AS QTD
      ,Unidades.Sigla AS UND
      ,Produtos.PrecoVenda AS PRECO_VENDA
      ,Produtos.PrecoAtacado AS PRECO_ATACADO
      ,Produtos.CST_Saida AS ST
      ,Produtos.PesoLiquido AS PESO
      ,Produtos.MargemLucroAVista AS MARGEM_LUCRO
      ,CAST (Produtos.DataCadastro AS DATE) AS DATA_CADASTRO
      ,CAST (Produtos.DataAltera AS DATE) AS ALTERACAO_PRECO
      ,Produtos.Observacao AS OBSERVACOES
  FROM EllusUp.dbo.Produtos
  LEFT JOIN EllusUp.dbo.ProdutoBarras ON ProdutoBarras.Produto = PRODUTOS.PRODUTO
  LEFT JOIN EllusUp.dbo.Unidades ON Unidades.Id = PRODUTOBARRAS.Unidade
