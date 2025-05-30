SELECT 
       Produtos.CODIGO AS CODIGO
      ,Produtos.NOME AS DESCRICAO
      ,Produtos.UNIDADE AS UND
      ,Grupos.Nome AS GRUPO
      ,SubGrupos.Nome AS FAMILIA
      ,Produtos.REFERENCIA AS COD_FABRICANTE
      ,Produtos.PRECO_VENDA AS PRECO_VENDA
      ,Produtos.PRECO_CUSTO AS PRECO_CUSTO
      ,Produtos.OBSERVACAO AS OBSERVACOES
      ,Fornecedores.NOME AS FORNECEDOR
      ,Produtos.CLASS_FISCAL
      ,Produtos.SIT_TRIBUTARIA
      ,Produtos.MARGEM_LUCRO AS MARGEM_LUCRO
      ,Produtos.PESO AS PESO
      ,Produtos.Estoque_Min AS QTD_IDEAL
      ,Produtos.CodigoBarras AS BARRAS
      ,Produtos.CodigoNCM AS COD_NCM
  FROM Queiroz.dbo.Produtos
  LEFT JOIN Queiroz.dbo.Grupos ON Grupos.Codigo = Produtos.GRUPO
  LEFT JOIN Queiroz.dbo.SubGrupos ON SubGrupos.CODIGO = Produtos.COD_SUBGRUPO
  LEFT JOIN Queiroz.dbo.Fornecedores ON Fornecedores.CODIGO = Produtos.COD_FORNECEDOR
