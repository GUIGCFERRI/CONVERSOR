SELECT 
       Estq_cadProdutos.IdProduto
      ,Estq_cadProdutos.CodigoForn as Cod_Fabricante
      ,Estq_cadProdutos.Descricao as Descricao
      ,Estq_cadProdutos.Unidade as UND
      ,Estq_cadSetores.descricao as Grupo
      ,Estq_cadProdutos.PrecoVenda as Preco_Venda
      ,Estq_cadProdutos.Observacoes as Observacoes
      ,Estq_cadProdutos.ST as ST
      ,Estq_cadProdutos.DataCadastro as Data_Cadastro
      ,Estq_cadProdutos.DataAlteracao as alteracao_preco
      ,Estq_cadProdutos.EAN as barras
  FROM LexManager_DNA.dbo.Estq_cadProdutos
  left join LexManager_DNA.dbo.Estq_cadSetores on LexManager_DNA.dbo.Estq_cadSetores.idsetorproduto = LexManager_DNA.dbo.Estq_cadProdutos.IdSetorProduto














