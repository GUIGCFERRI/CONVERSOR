SELECT
       ViewProdutos.Codigo as codigo
      ,Produtos.Cod_Produto_EAN as cod_fabricante
      ,Produtos.Cod_Fabricante as barras
      ,ViewProdutos.Descricao as descricao
      ,ViewProdutos.Observacao as observacoes
      ,ViewProdutos.UnidadeMedidaVenda as und
      ,ViewProdutos.UnidadeMedidaCompra as und_compra
      ,ViewAjusteEstoque.TotalEstoque as qtd
      ,Produtos.Origem_Produto AS OST
      ,ViewProdutos.TipoItem as st
      ,ViewProdutos.PrecoVendaAtacado as preco_atacado
      ,ViewProdutos.PrecoVenda as preco_venda
      ,ViewProdutos.PrecoCusto as preco_custo
      ,Produtos.Cod_NCM_Produto as cod_ncm
      ,Produtos.Cod_CEST_Produto as personal6
      ,cast (Produtos.Data_Cadastro as date) as data_cadastro
  FROM ELETRICAMPAR.dbo.ViewProdutos
  left join ELETRICAMPAR.dbo.Produtos on Produtos.Cod_produto = ViewProdutos.Codigo
  left join ELETRICAMPAR.dbo.ViewAjusteEstoque on ViewAjusteEstoque.chaveproduto = ViewProdutos.Chave
  order by ViewProdutos.Descricao asc
