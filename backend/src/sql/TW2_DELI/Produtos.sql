SELECT
       produto_codsequencial AS CODIGO
      ,produto_descricao AS DESCRICAO
      ,PRODUCTS.Barcode AS BARRAS
      ,produto_unid_venda AS UND
      ,produto_unid_compra AS UND_COMPRA
      ,ESTOQUE.estoque_quantidade AS QTD
      ,produto_preco_custo AS PRECO_CUSTO
      ,produto_preco_venda AS PRECO_VENDA
      ,produto_lucro AS MARGEM_LUCRO
      ,subgrupo.subgrupo_nome AS GRUPO
      ,produto_situacaotributaria AS ST
      ,CAST (produto_dataalt_preco AS DATE) AS ALTERACAO_PRECO
      ,produto_ncm AS COD_NCM
      ,produto_preco_promocao AS PRECO_ATACADO
      ,produto_codigo_fabricante AS COD_FABRICANTE
      ,CAST (produto_datainc AS DATE) AS DATA_CADASTRO
      ,produto_cest AS PERSONAL6
  FROM TW2_DELI.dbo.Produto
  LEFT JOIN TW2_DELI.dbo.Subgrupo ON SUBGRUPO.subgrupo_codigo = PRODUTO.produto_Subgrupo
  LEFT JOIN TW2_DELI.dbo.Estoque ON ESTOQUE.estoque_codigo = PRODUTO.produto_codsequencial
  LEFT JOIN TW2_DELI.dbo.Products ON PRODUCTS.ID = PRODUTO.produto_codsequencial
