SELECT 
       Produtos.CodProduto as codigo
      ,Produtos.DescricaoProduto as descricao
      ,Produtos.UnidadeEntrada as und_compra
      ,Produtos.UnidadeSaida as und
      ,Produtos.CodOriginal as cod_fabricante
      ,GrupoEstoque.NomeGrupo as grupo
      ,ProdutosEstoque.EstoqueLoja as qtd
      ,ProdutosEstoque.PrecoUnitario1 as preco_venda
      ,ProdutosEstoque.CustoMedio as custo_medio
      ,ProdutosEstoque.MargemLucro as margem_lucro
      ,ProdutosEstoque.Observacao as observacoes
      ,Produtos.PesoUnidade as peso
      ,Produtos.CodEANUnidade as barras
      ,Produtos.CodNCM as cod_ncm
      ,Produtos.CodCEST as personal6
      ,cast (Produtos.DataCadastro as date)as data_cadastro
      ,cast (Produtos.DataAlteracao as date) as alteracao_preco
  FROM SOBERANA.dbo.Produtos
left join SOBERANA.dbo.GrupoEstoque on GrupoEstoque.CodGrupo = Produtos.CodGrupo
left join SOBERANA.dbo.ProdutosEstoque on ProdutosEstoque.CodProduto = Produtos.CodProduto
