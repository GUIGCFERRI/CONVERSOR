SELECT
       Produto.Codigo AS CODIGO
      ,Produto.Descricao AS DESCRICAO
      ,Produto.EstoqueDisponivel AS QTD
      ,Grupo.DESCRICAO AS GRUPO
      ,Produto.ClassificacaoTributaria AS ST
      ,Produto.NCM AS COD_NCM
      ,Produto.CodigoBarras1 AS COD_FABRICANTE
      ,Produto.CodigoBarras2 AS BARRAS
      ,Produto.EstoqueMinimo AS QTD_IDEAL
      ,Produto.Preco1 AS PRECO_VENDA
      ,Produto.UnidadeVenda AS UND
      ,Produto.UnidadeCompra AS UND_COMPRA
      ,CAST (Produto.DataUltimoReajuste AS DATE) AS ALTERACAO_PRECO
      ,Produto.Observacao AS OBSERVACOES
      ,Produto.CustoAquisicao AS PRECO_COMPRA
      ,Produto.CustoMedio AS CUSTO_MEDIO
      ,CAST (Produto.DataUltimaCompra AS DATE) AS ULTIMA_COMPRA
      ,CAST (Produto.DataUltimaVenda AS DATE) AS ULTIMA_VENDA
      ,Produto.CEST AS PERSONAL6
  FROM DBGarraX.dbo.Produto
  LEFT JOIN DBGarraX.dbo.Grupo ON GRUPO.CODIGO = PRODUTO.Grupo
