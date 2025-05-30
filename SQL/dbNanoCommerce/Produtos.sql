SELECT 
       Produto.Codigo AS CODIGO
      ,Produto.Nome AS DESCRICAO
      ,Produto.UnidadeMedida AS UND
      ,Produto.Valor AS PRECO_VENDA
      ,Produto.ValorCusto AS PRECO_CUSTO
      ,SUM (Qtde.QTD) AS QTD
      ,Produto.CodigoInterno AS COD_FABRICANTE
      ,Produto.Porcentagens AS MARGEM_LUCRO
      ,CONCAT ('FABRICANTE: ',Produto.Fabricante , ' // ' , 'COD PROD FOR: ',Produto.CodProdFor) AS OBSERVACOES 
      ,Produto.Grupo AS GRUPO
      ,Produto.CodigoBarra AS BARRAS
      ,Produto.Setor AS CARACTERISTICAS
      ,Produto.Familia AS FAMILIA
      ,Produto.TributacaoPadrao AS ST
      ,Produto.AlterarPreco AS ALTERACAO_PRECO
      ,Produto.Peso AS PESO
  FROM dbNanoCommerce.dbo.Produto
  LEFT JOIN dbNanoCommerce.dbo.Qtde ON Qtde.CODPROD = PRODUTO.CODIGO
  GROUP BY
  Produto.Codigo
  ,Produto.Nome
  ,Produto.UnidadeMedida
  ,Produto.Valor
  ,Produto.ValorCusto
  ,Produto.CodigoInterno
  ,Produto.Porcentagens
  ,Produto.Fabricante
  ,Produto.Grupo
  ,Produto.Obs
  ,Produto.CodigoBarra
  ,Produto.Setor
  ,Produto.CodProdFor
  ,Produto.Familia
  ,Produto.TributacaoPadrao
  ,Produto.AlterarPreco
  ,Produto.Peso
  ,Produto.CodigoFabricante
