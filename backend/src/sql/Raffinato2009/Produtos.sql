SELECT 
       PRODUTO.Id AS CODIGO  
      ,Produto.CodigoBarra AS BARRAS
      ,CAST (Produto.DataCadastro AS DATE) AS DATA_CADASTRO
      ,Produto.Nome AS DESCRICAO
      ,Produto.NomeReduzido AS CARACTERISTICAS
      ,CustoProduto.VALORCUSTO AS PRECO_CUSTO
      ,PRECOPRODUTO.VALOR AS PRECO_VENDA
      ,PRECOPRODUTO.PERCENTUALMARGEMLUCRO AS MARGEM_LUCRO
      ,CEST.Codigo AS PERSONAL6
      ,NCM.Codigo AS COD_NCM
      ,TRIBUTACAO.CODIGO AS ST
      ,UnidadeMedida.SIGLA AS UND
      ,AGRUPAMENTO.NOME AS GRUPO
      ,MAX(ApuracaoProduto.QUANTIDADE) AS QTD
  FROM Raffinato.dbo.Produto
  LEFT JOIN Raffinato.dbo.CEST ON CEST.Id = PRODUTO.IdCEST
  LEFT JOIN Raffinato.dbo.NCM ON NCM.Id = PRODUTO.IDNCM
  LEFT JOIN Raffinato.dbo.CustoProduto ON CUSTOPRODUTO.IDPRODUTO = PRODUTO.ID
  LEFT JOIN Raffinato.dbo.TributacaoProduto ON TRIBUTACAOPRODUTO.IDPRODUTO = PRODUTO.ID
  LEFT JOIN Raffinato.dbo.Tributacao ON TRIBUTACAO.Id = TRIBUTACAOPRODUTO.IDTRIBUTACAOICMS
  LEFT JOIN Raffinato.dbo.UnidadeMedida ON UNIDADEMEDIDA.ID = PRODUTO.IDUNIDADEMEDIDA
  LEFT JOIN Raffinato.dbo.Agrupamento ON AGRUPAMENTO.ID = PRODUTO.IDAGRUPAMENTO
  LEFT JOIN Raffinato.dbo.PrecoProduto ON PRECOPRODUTO.IDPRODUTO = PRODUTO.ID
  LEFT JOIN Raffinato.dbo.ApuracaoProduto ON APURACAOPRODUTO.IdProduto = PRODUTO.ID
  GROUP BY
  PRODUTO.Id    
      ,Produto.CodigoBarra
      ,Produto.DataCadastro
      ,Produto.Nome
      ,Produto.NomeReduzido
      ,CustoProduto.VALORCUSTO
      ,PRECOPRODUTO.VALOR
      ,PRECOPRODUTO.PERCENTUALMARGEMLUCRO
      ,CEST.Codigo
      ,NCM.Codigo
      ,TRIBUTACAO.CODIGO
      ,UnidadeMedida.SIGLA
      ,AGRUPAMENTO.NOME