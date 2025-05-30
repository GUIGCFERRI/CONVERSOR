SELECT 
       Produto.prodCodigoPadrao AS COD_FABRICANTE
      ,Produto.prodNome AS DESCRICAO
      ,Unidade.unidnome AS UND
      ,GrupoProduto.grprNome AS GRUPO
      ,Produto.prodPrecoVenda AS PRECO_VENDA
      ,Produto.prodPrecoCustoCompra AS PRECO_CUSTO
      ,Produto.prodCodigoBarra AS BARRAS
      ,REPLACE (Produto.prodTabelaNCM, '.','') AS COD_NCM
      ,REPLACE (CEST.CESTCEST, '.','') AS PERSONAL6
  FROM Produto
LEFT JOIN Unidade on Produto.prodUnidade = Unidade.unidUnidade
LEFT JOIN GrupoProduto ON PRODUTO.prodGrupo = GRUPOPRODUTO.grprGrupo
LEFT JOIN CEST ON PRODUTO.PRODCEST = CEST.CAMPOID
