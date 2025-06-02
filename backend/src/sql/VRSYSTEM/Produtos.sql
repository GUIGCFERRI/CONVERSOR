SELECT 
      Produto.Codigo AS CARACTERISTICAS
      -- Produto.Codigo AS CODIGO
      ,Produto.Nome AS DESCRICAO
      ,Grupo.Nome AS GRUPO
      ,Familias.Nome AS FAMILIA
      ,Produto.NCM AS COD_NCM
      ,Produto.Obs AS OBSERVACOES
      ,Produto.Codigo_Fabricante1 AS COD_FABRICANTE
      ,Produto.Codigo_Fabricante1 AS BARRAS
      ,Estoque_Atual.Qtde AS QTD
      ,max(ProdutoPreco.Preco) AS PRECO_CUSTO
      ,min(ProdutoPreco.Preco) AS PRECO_VENDA
      ,min (ProdutoPreco.Margem) AS MARGEM_LUCRO
      ,SUBSTRING (ClasseImposto.nome,1 , 1) as ST
      ,CAST (Produto.Data_Cadastro AS DATE) AS DATA_CADASTRO
      ,CAST (Produto.Ultima_Alteracao AS DATE) AS ULTIMA_ALTERACAO
      ,Produto.Margem AS MARGEM_LUCRO
      ,CEST.Codigo AS PERSONAL6
      ,Produto.Peso_Liquido AS PESO
  FROM ETrade.dbo.Produto
  LEFT JOIN ETrade.dbo.Grupo ON Grupo.Codigo = Produto.Grupo
  LEFT JOIN ETrade.dbo.Familias ON Familias.Codigo = Produto.Familia
  left join ETrade.dbo.CEST ON CEST.Ide = Produto.CEST
  LEFT JOIN ETrade.dbo.Estoque_Atual ON Estoque_Atual.Produto = PRODUTO.Codigo
  LEFT JOIN ETrade.dbo.ProdutoPreco ON ProdutoPreco.Produto__Codigo = PRODUTO.Codigo
  LEFT JOIN ETrade.dbo.ClasseImposto ON ClasseImposto.Codigo = PRODUTO.Classe_Imposto
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
      ,Estoque_Atual.Qtde
      ,Produto.Custo1
      ,Produto.Data_Cadastro
      ,Produto.Ultima_Alteracao
      ,Produto.Margem
      ,ClasseImposto.nome
      ,CEST.Codigo
      ,Produto.Peso_Liquido
order by PRODUTO.nome asc
