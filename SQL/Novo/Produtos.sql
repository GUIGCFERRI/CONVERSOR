SELECT 
       Produtos.pro_codigo AS CODIGO
      ,Produtos.pro_nome AS DESCRICAO
      ,Produtos.pro_quantidade AS QTD
      ,Produtos.pro_precoCusto AS PRECO_CUSTO
      ,Produtos.pro_precoVenda AS PRECO_VENDA
      ,Categoria.cat_descricao AS GRUPO
      ,'TEMPERO'AS SUBGRUPO
      ,Unidades.uni_descricao AS UND
      ,Produtos.pro_codigoBarra AS BARRAS

  FROM novo .dbo.Produtos
  left join novo .dbo.Categoria on Produtos.pro_categoria = 
Categoria.cat_codigo
  left join novo .dbo.Unidades on Produtos.pro_unidade = 
Unidades.uni_codigo