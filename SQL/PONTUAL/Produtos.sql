SELECT 
       Produtos.CodProduto AS COD_FABRICANTE
      ,Produtos.DescricaoProduto AS DESCRICAO
      ,Produtos.UnidadeEntrada AS UND_COMPRA
      ,Produtos.UnidadeSaida AS UND
      ,ProdutosEstoque.EstoqueLoja AS QTD
      ,ProdutosEstoque.EstoqueMinimo AS QTD_IDEAL
      ,ProdutosEstoque.PrecoUnitario1 AS PRECO_VENDA
      ,ProdutosEstoque.CustoAtual AS PRECO_CUSTO
      ,ProdutosEstoque.CustoMedio AS CUSTO_MEDIO
      ,CAST (ProdutosEstoque.DataUltimaCompra AS DATE) AS ULTIMA_COMPRA
      ,CAST (ProdutosEstoque.DataUltimaVenda AS DATE) AS ULTIMA_VENDA
      ,ProdutosEstoque.MargemLucro AS MARGEM_LUCRO
      ,ProdutosEstoque.Observacao AS OBSERVACOES
      ,Clientes.RazaoSocial AS FORNECEDOR
      ,Produtos.CodOriginal AS CARACTERISTICAS
      ,GrupoEstoque.NomeGrupo AS GRUPO
      ,Produtos.PesoUnidade AS PESO
      ,Produtos.CodEANUnidade AS BARRAS
      ,Produtos.CodNCM AS COD_NCM
      ,CAST (Produtos.DataAlteracao AS DATE) ALTERACAO_PRECO
      ,Produtos.CodCEST AS PERSONAL6
      ,CAST (Produtos.DataCadastro AS DATE) DATA_CADASTRO
  FROM Pontual.dbo.Produtos
  LEFT JOIN Pontual.dbo.ProdutosEstoque ON ProdutosEstoque.CodProduto = PRODUTOS.CodProduto
  LEFT JOIN Pontual.dbo.Clientes ON Clientes.CodCliente = produtosestoque.CodFornecedor
  LEFT JOIN Pontual.dbo.GrupoEstoque ON GrupoEstoque.CodGrupo = PRODUTOS.CodGrupo
