SELECT
       Produtos.Codigo as codigo
      ,Produtos.Descricao as descricao
      ,Produtos.EAN as barras
      ,Produtos.Unidade as und
      ,Produtos.Unidade as und_compra
      ,Produtos.Peso as peso
      ,Produtos.Minimo as qtd_ideal
      ,Fornecedor.descricao as fornecedor
      ,Produtos.PrecoCusto as preco_custo
      ,Produtos.Margem as margem_lucro
      ,PrecoVenda as preco_venda
      ,Produtos.PrecoAtacado as preco_atacado
      ,Produtos.CSOSN as st
      ,Produtos.RefFornecedor as cod_fabricante
      ,Produtos.Caracteristicas as observacoes
      ,Produtos.DataUltimaVenda as ultima_venda
      ,Produtos.DataUltimaCompra as ultima_compra
      ,Produtos.DataCad as data_cadastro
      ,Produtos.NCM as cod_ncm
      ,Produtos.CEST as personal6
  FROM BD_LINK.dbo.Produtos
left join BD_LINK.dbo.Fornecedor on Fornecedor.codigo = Produtos.Fornecedor
