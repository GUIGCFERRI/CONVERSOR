SELECT 
       Mercadoria.Codigo AS COD_FABRICANTE
      ,Mercadoria.Nome_Curto AS DESCRICAO
      ,FORNECEDOR.NOME AS FORNECEDOR
      ,Mercadoria.Situacao_Tributaria AS ST
      ,Mercadoria.Unidade AS UND
      ,Mercadoria.Classif_Fiscal AS COD_NCM
      ,Mercadoria.CEST AS PERSONAL6
      ,Dados_Merc_Loja.ESTOQUE AS QTD
      ,Dados_Merc_Loja.PRECO_VENDA

  FROM BASEKOLOSSO.dbo.Mercadoria
LEFT JOIN BASEKOLOSSO.dbo.Dados_Merc_Loja ON MERCADORIA.CODIGO = Dados_Merc_Loja.IDMERCADORIA
LEFT JOIN BASEKOLOSSO.dbo.Fornecedor ON MERCADORIA.IDFORNECEDOR_PADRAO = FORNECEDOR.CODIGO
WHERE Dados_Merc_Loja.IdLoja = '1'
