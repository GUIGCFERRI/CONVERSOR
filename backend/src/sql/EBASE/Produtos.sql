SELECT
       EstoqueMercadorias.Codigo AS CODIGO
      ,Min (BARRAS.BARRA) AS BARRAS
      ,EstoqueMercadorias.NomeMercadoria AS DESCRICAO
      ,EstoqueMercadorias.Referencia AS COD_FABRICANTE
      ,EstoqueMercadorias.NomeCupom AS CARACTERISTICAS
      ,EstoqueMercadorias.Unidade AS UNIDADE
      ,EstoquePDV.Quantidade AS QTD
      ,TabPrecoItens.PRECO AS PRECO_VENDA
      ,SUBSTRING (EstoqueMercadorias.CST, 2,3) AS ST
      ,EstoqueMercadorias.NCM AS COD_NCM
      ,EstoqueMercadorias.CEST AS PERSONAL6
      ,GrupoS.NOMEGRUPO AS GRUPO
  FROM dbCaixaCris.dbo.EstoqueMercadorias
  LEFT JOIN dbCaixaCris.dbo.Barras ON BARRAS.Mercadoria = EstoqueMercadorias.CODIGO
  LEFT JOIN dbCaixaCris.dbo.Grupos ON GRUPOS.CODIGO = EstoqueMercadorias.Grupo
  LEFT JOIN dbCaixaCris.dbo.EstoquePDV ON EstoquePDV.CodigoMercadoria = EstoqueMercadorias.Codigo
  LEFT JOIN dbCaixaCris.dbo.TabPrecoItens ON TabPrecoItens.Mercadoria = EstoqueMercadorias.Codigo 
  WHERE TabPrecoItens.EMPRESA = '1' AND TabPrecoItens.Codigo = '1'
  GROUP BY
  EstoqueMercadorias.Codigo
  ,EstoqueMercadorias.NomeMercadoria
  ,EstoqueMercadorias.Referencia
  ,EstoqueMercadorias.NomeCupom
  ,EstoqueMercadorias.Unidade
  ,EstoquePDV.Quantidade
  ,TabPrecoItens.PRECO
  ,SUBSTRING (EstoqueMercadorias.CST, 2,3)
  ,EstoqueMercadorias.NCM
  ,EstoqueMercadorias.CEST
  ,GrupoS.NOMEGRUPO
