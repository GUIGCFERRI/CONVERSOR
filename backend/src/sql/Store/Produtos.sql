SELECT
       Produto.Codigo as CODIGO
      ,Produto.Nome AS DESCRICAO
      ,Grupo AS GRUPO
      ,UnidadeMedida.Sigla AS UND
      ,Produto.MagemLucro AS MARGEM_LUCRO
      ,Produto.PrecoCusto AS PRECO_CUSTO
      ,Produto.CustoMedio AS CUSTO_MEDIO
      ,Produto.PrecoVenda AS PRECO_VENDA
      ,Produto.Comissao AS COMISSAO
      ,Produto.CodigoBarras AS BARRAS
      ,Produto.NBM AS COD_NCM
      ,Produto.DataUltimoReajuste AS ALTERACAO_PRECO
      ,Produto.EstoqueMinimo AS QTD_IDEAL
      ,Produto.PesoLiquido AS PESO
      ,Produto.QtdeEstoque AS QTD
      ,Produto.CEST AS PERSONAL6
  FROM Store.dbo.Produto
  LEFT JOIN Store.dbo.UnidadeMedida ON UnidadeMedida.Identificacao = Produto.UnidadeMedida