SELECT 
       MATPRODUTO.IDPRODUTO AS CODIGO
      ,MATPRODUTO.DESCRICAO AS DESCRICAO
      ,MATPRODUTO.ABREVIATURA
      ,MATPRODUTO.EAN AS BARRAS
      ,MATPRODUTOTABELA.UNIDADE AS UND
      ,MATPRODUTO.ESTMINIMO AS QTD_IDEAL
      ,MATPRODUTOSALDO.SALDO AS QTD
      ,MATGRUPO.DESCRICAO AS GRUPO
      ,MATSUBGRUPO.DESCRICAO AS FAMILIA
      ,MATPRODUTOTABELA.CUSTO AS PRECO_CUSTO
      ,MATPRODUTOTABELA.MARGEM AS MARGEM_LUCRO
      ,MATPRODUTOTABELA.PRECO AS PRECO_VENDA
      ,MATPRODUTO.IDCSTICMS AS ST
      ,MATPRODUTO.CSOSN
      ,MATPRODUTO.OBSERVACAO AS OBSERVACOES
      ,CAST (MATPRODUTO.DATAINCLUSAO AS DATE) AS DATA_CADASTRO
      ,CAST (MATPRODUTO.DTULTIMAVENDA AS DATE) AS ULTIMA_VENDA
      ,MATPRODUTO.IDNCM AS COD_NCM
      ,MATPRODUTO.CEST AS PERSONAL6
  FROM ERPSystem.dbo.MATPRODUTO
LEFT JOIN ERPSystem.dbo.MATPRODUTOSALDO ON MATPRODUTOSALDO.IDPRODUTO = MATPRODUTO.IDPRODUTO
LEFT JOIN ERPSystem.dbo.MATPRODUTOTABELA ON MATPRODUTOTABELA.IDPRODUTO = MATPRODUTO.IDPRODUTO
LEFT JOIN ERPSystem.dbo.MATGRUPO ON MATGRUPO.IDGRUPO = MATPRODUTO.IDGRUPO
LEFT JOIN ERPSystem.dbo.MATSUBGRUPO ON MATSUBGRUPO.IDSUBGRUPO = MATPRODUTO.IDSUBGRUPO
WHERE MATPRODUTOTABELA.IDTABELA = '1'
