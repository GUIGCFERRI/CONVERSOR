SELECT 
       Produtos.Codigo as codigo
      ,Produtos.Descricao as descricao
      ,CBARRAS.CBARRA as barras
      ,Fornecedores.Fornecedor as fornecedor
      ,ESTOQUE.CUSTOR as preco_custo
      ,ESTOQUE.VENDAR as preco_venda
      ,ESTOQUE.PMEDIO as custo_medio
      ,ESTOQUE.MARGEN as margem_lucro
      ,ESTOQUE.PESO as peso
      ,ESTOQUE.ESTOQUER as qtd
      ,Produtos.Cadastro as data_cadastro
      ,UNIVENDAS.DESCRICAO AS UND
      ,UNIVENDAS.DESCRICAO AS UND_compra
      ,Produtos.CODIGOFAB as cod_fabricante
  FROM BASEI9.dbo.Produtos
left join BASEI9.dbo.ESTOQUE on ESTOQUE.E_PRODUTO = Produtos.Codigo
left join BASEI9.dbo.UNIVENDAS on UNIVENDAS.CODIGO = Produtos.E_UNIDADE
left join BASEI9.dbo.Fornecedores on Fornecedores.Codigo = Produtos.Fornecedor
left join BASEI9.dbo.CBARRAS on CBARRAS.E_PRODUTO = Produtos.Codigo