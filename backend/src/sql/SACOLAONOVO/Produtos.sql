
SELECT  PRODUTOS.[Codigo] AS COD_FABRICANTE
      ,PRODUTOS.[Nome] AS DESCRICAO
      ,GRUPOS.Nome AS GRUPO	  
      ,ProdutosItens.[CodigoBarrasPrincipal] AS BARRAS
      ,ProdutosItens.[ValorCustoMedio] AS CUSTO_MEDIO
      ,ProdutosItens.[ValorCusto] AS PRECO_CUSTO
      ,ProdutosItens.[ValorConsumidor] AS PRECO_VENDA
      ,ProdutosItens.[EstoqueInterno] AS QTD

      ,PRODUTOS.[TSICMSCodigoST] AS ST
      ,TABUnidades.Simbolo AS UND
      ,PRODUTOS.[CodigoNCM] AS PERSONAL6
  FROM [SACOLAONOVO].[dbo].[Produtos]
  LEFT JOIN [SACOLAONOVO].[dbo].[ProdutosItens] ON PRODUTOS.Codigo = ProdutosItens.CodigoProduto
  LEFT JOIN [SACOLAONOVO].[dbo].[Grupos] ON PRODUTOS.CodigoGrupo = GRUPOS.Codigo
  LEFT JOIN [SACOLAONOVO].[dbo].[TABUnidades] ON PRODUTOS.CodigoUnidadePrincipal = TABUnidades.Codigo
