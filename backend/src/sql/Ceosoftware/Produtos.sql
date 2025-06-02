SELECT 
      produtos.CodProduto AS CODIGO
      ,produtos.DescricaoProduto AS DESCRICAO
      ,produtos.NomeOficial AS CARACTERISTICAS
      ,produtos.QtdConversao AS FAT_CONV
      ,produtos.UnidadeEntrada AS UND_COMPRA
      ,produtos.UnidadeSaida AS UND
      ,produtos.CodOriginal AS COD_FABRICANTE
      ,GrupoEstoque.NomeGrupo AS GRUPO
      ,produtos.CodNCM AS COD_NCM
      ,produtos.CodFabricante AS COD_FABRICANTE
      ,produtos.CodCEST AS PERSONAL6
      ,produtosEstoque.EstoqueLoja AS QTD
      ,ProdutosEstoque.EstoqueMinimo AS QTD_IDEAL
      ,ProdutosEstoque.PrecoUnitario1 AS PRECO_VENDA
      ,produtosEstoque.CustoAtual AS PRECO_CUSTO
      ,ProdutosEstoque.CustoMedio AS CUSTO_MEDIO
  FROM ChaveiroAbriu.dbo.Produtos
  LEFT JOIN ChaveiroAbriu.dbo.ProdutosEstoque ON ProdutosEstoque.CodProduto = Produtos.CodProduto 
  LEFT JOIN ChaveiroAbriu.dbo.GrupoEstoque ON Produtos.CodGrupo = GrupoEstoque.CodGrupo
  where ProdutosEstoque.CodEmpresa = '1'
