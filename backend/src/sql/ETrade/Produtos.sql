SELECT 
       Produto.Codigo 
      -- ,Produto.Codigo AS CARACTERISTICAS
      ,Produto.Nome AS DESCRICAO
      ,Grupo.Nome AS GRUPO
      ,Familias.Nome AS FAMILIA
      ,Produto.NCM AS COD_NCM
      ,Produto.Obs AS OBSERVACOES
      ,Produto.Codigo_Fabricante1 AS COD_FABRICANTE
      -- ,Produto.Codigo_Fabricante2 AS BARRAS
      ,Estoque_Atual.Qtde AS QTD
      ,min(ProdutoPreco.Preco) AS PRECO_CUSTO
      ,MAX(ProdutoPreco.Preco) AS PRECO_VENDA
      ,min (ProdutoPreco.Margem) AS MARGEM_LUCRO
      ,CAST (Produto.Data_Cadastro AS DATE) AS DATA_CADASTRO
      ,CAST (Produto.Ultima_Alteracao AS DATE) AS ULTIMA_ALTERACAO
      ,Produto.Margem AS MARGEM_LUCRO
      ,CEST.Codigo AS PERSONAL6
      ,Produto.Codigo_EAN AS BARRAS
      ,Produto.Peso_Liquido AS PESO
      ,min (ClasseImpostoOperacao.icmscst) as st
      ,Produto.ClasseImposto__Ide
  FROM ETrade.dbo.Produto
  LEFT JOIN ETrade.dbo.Grupo ON Grupo.Codigo = Produto.Grupo
  LEFT JOIN ETrade.dbo.Familias ON Familias.Codigo = Produto.Familia
  left join ETrade.dbo.CEST ON CEST.Ide = Produto.CEST
  LEFT JOIN ETrade.dbo.Estoque_Atual ON Estoque_Atual.Produto = PRODUTO.Codigo
  LEFT JOIN ETrade.dbo.ProdutoPreco ON ProdutoPreco.Produto__Codigo = PRODUTO.Codigo
  left join ETrade.dbo.ClasseImposto on ClasseImposto.Ide = Produto.ClasseImposto__Ide 
  left join ETrade.dbo.ClasseImpostoOperacao on ClasseImpostoOperacao.ClasseImposto__Ide = ClasseImposto.Ide
  WHERE Estoque_AtuaL.FILIAL = '1'
  GROUP BY
       Produto.Codigo
      ,Produto.Nome
      ,Grupo.Nome
      ,Familias.Nome
      ,Produto.NCM
      ,Produto.Complemento
      ,Produto.Obs
      ,Produto.Codigo_Fabricante1
      ,Produto.Codigo_Fabricante2
      ,Estoque_Atual.Qtde
      ,Produto.Custo1
      ,Produto.Data_Cadastro
      ,Produto.Ultima_Alteracao
      ,Produto.Margem
      ,CEST.Codigo
      ,Produto.Codigo_EAN 
      ,Produto.Peso_Liquido
      ,Produto.ClasseImposto__Ide
   --,ClasseImpostoOperacao.icmscst
order by PRODUTO.CODIGO desc
