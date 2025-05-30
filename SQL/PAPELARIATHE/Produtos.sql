SELECT 
       Produtos.CodProduto AS CARACTERISTICAS
      ,Produtos.DescricaoProduto AS DESCRICAO
      ,Produtos.NomeOficial AS OBSERVACOES
      ,Produtos.Unidade AS UND
      ,Produtos.CodOriginal AS COD_FABRICANTE
      ,GrupoEstoque.NomeGrupo AS GRUPO
      ,Produtos.CodEANUnidade AS BARRAS
      ,Produtos.CodNCM AS COD_NCM
      ,Produtos.CodCEST AS PERSONAL6
      ,ProdutosEstoque.EstoqueLoja AS QTD
      ,ProdutosEstoque.PrecoUnitario1 AS PRECO_VENDA
      ,ProdutosEstoque.CustoAtual AS PRECO_CUSTO
      ,ProdutosEstoque.CustoMedio AS CUSTO_MEDIO
  FROM papelariathe.dbo.Produtos
  LEFT JOIN papelariathe.dbo.GrupoEstoque ON GRUPOESTOQUE.CodGrupo = PRODUTOS.CodGrupo
  LEFT JOIN papelariathe.dbo.ProdutosEstoque ON ProdutosEstoque.CodProduto = PRODUTOS.CodProduto
