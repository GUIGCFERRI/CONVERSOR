SELECT
       Estoque_Produtos.ID AS CODIGO
      ,Estoque_Produtos.CodigoBarras AS BARRAS
      ,Estoque_Produtos.Descricao AS DESCRICAO
      ,Uteis_UnidadesDeMedida.Abrev AS UND_COMPRA
      ,Uteis_UnidadesDeMedida.Abrev AS UND
      ,Estoque_Produtos.QtdEstoqueMinimo AS QTD_IDEAL
      ,Estoque_Produtos.PrecoCusto AS PRECO_CUSTO
      ,Estoque_Produtos.PrecoVenda AS PRECO_VENDA
      ,Estoque_Produtos.PesoLiquido AS PESO
      ,Estoque_Produtos.PrecoAtacado AS PRECO_ATACADO
      ,Estoque_Produtos.Markup AS MARGEM_LUCRO
      ,Estoque_Produtos.QtdEstoqueTotal AS QTD
      ,SUBSTRING (Sped_Tabela_CstIcms.Codigo, 2,3) AS ST
      ,Estoque_Categorias.Descricao AS GRUPO
      ,CAST (Estoque_Produtos.CriadoEm AS DATE) AS DATA_CADASTRO
      ,CAST (Estoque_Produtos.ModificadoEm AS DATE) AS ALTERACAO_PRECO
      ,Estoque_Produtos.NCM AS COD_NCM
      ,Estoque_Produtos.Soundex_Descricao AS COD_FABRICANTE
      ,Estoque_Produtos.Cest AS PERSONAL6
  FROM sis.dbo.Estoque_Produtos
  LEFT JOIN sis.dbo.Estoque_cATEGORIAS ON Estoque_Categorias.ID = Estoque_Produtos.CategoriaID
  LEFT JOIN sis.dbo.Uteis_UnidadesDeMedida ON Uteis_UnidadesDeMedida.ID = Estoque_Produtos.UnidadeMedidaSaidaID
  LEFT JOIN sis.dbo.Sped_Tabela_CstIcms ON Sped_Tabela_CstIcms.ID = Estoque_Produtos.ClassificacaoFiscalID