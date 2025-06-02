SELECT 
       pro_codigo as codigo
      ,pro_nome as descricao
      ,pro_quantidade as qtd
      ,pro_precoCusto as preco_custo
      ,pro_precoVenda as preco_venda
      ,Categoria.cat_descricao as grupo
      ,uni_descricao as und
      ,pro_codigoBarra as barras
      ,pro_margem as margem_lucro
  FROM [BKP2605203].dbo.Produtos
left join [BKP2605203].dbo.Categoria on Produtos.pro_categoria = Categoria.cat_codigo
left join [BKP2605203].dbo.Unidades on unidades.uni_codigo = pro_unidade
