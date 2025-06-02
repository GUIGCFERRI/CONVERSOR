SELECT 
       Produtos.Codigo as barras
      ,Produtos.Nome as descricao
      ,Familias.nome as familia
      ,Grupos.nome as grupo
      ,Estoque_Atual.Estoque_Atual as qtd
      ,Produtos.Unidade_Venda as caracteristicas
      ,Produtos.Obs as observacoes
      ,Classes_Imposto.Imp_Fiscal_Tipo as st
      ,Produtos.Peso_Liq as peso
      ,Produtos.Data_Alteracao_Preco as alteracao_preco
      ,Produtos.Preco1 as preco_venda
      ,Produtos.Custo1 as preco_custo
      ,Produtos.Medio1 as custo_medio
      ,Produtos.Data_Cadastro as data_cadastro
      ,Produtos.Fornecedor1
  FROM S8_Real.dbo.Produtos
left join S8_Real.dbo.Estoque_Atual on Estoque_Atual.Produto = Produtos.Codigo
left join S8_Real.dbo.Familias on Familias.codigo = Produtos.Familia
left join S8_Real.dbo.Grupos on Grupos.codigo = Produtos.Grupo
left join S8_Real.dbo.Classes_Imposto on Classes_Imposto.codigo = Produtos.Classe_Imposto
