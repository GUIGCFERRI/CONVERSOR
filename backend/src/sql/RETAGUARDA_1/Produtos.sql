SELECT    
       MIN (Mercadoria.id_merc) AS CODIGO 
      ,Mercadoria.descricao AS DESCRICAO
      ,MIN (M_Item.codbar) AS BARRAS
      ,MIN (M_Item.estoque) AS QTD
      ,Mercadoria.estoque_minimo AS QTD_IDEAL
      ,Aliquota.cst AS ST
      ,Fornecedor.Nome_Fornecedor AS FORNECEDOR
      ,Grupo.desc_grupo AS GRUPO 
      ,Mercadoria.origem AS OST
      ,Mercadoria.venda AS PRECO_VENDA
      ,Mercadoria.VendaAtacado AS PRECO_ATACADO
      ,CAST (Mercadoria.dtmodify AS DATE) AS ALTERACAO_PRECO
      ,Mercadoria.cest AS PERSONAL6
      ,Mercadoria.clas_fisc AS COD_NCM
  FROM Retaguarda.dbo.Mercadoria
  LEFT JOIN Retaguarda.dbo.Aliquota ON Aliquota.id_aliq = Mercadoria.id_aliq
  LEFT JOIN Retaguarda.dbo.Fornecedor ON Fornecedor.Cod_Fornecedor = Mercadoria.id_Fornecedor
  LEFT JOIN Retaguarda.dbo.Grupo ON Grupo.id_grupo = Mercadoria.id_grupo
  LEFT JOIN Retaguarda.dbo.M_Item ON M_Item.id_merc = Mercadoria.id_merc 
  GROUP BY
       Mercadoria.descricao
      ,Mercadoria.estoque_minimo
      ,Aliquota.cst
      ,Fornecedor.Nome_Fornecedor
      ,Grupo.desc_grupo
      ,Mercadoria.origem
      ,Mercadoria.venda
      ,Mercadoria.VendaAtacado
      ,Mercadoria.dtmodify
      ,Mercadoria.cest
      ,Mercadoria.clas_fisc
