SELECT
       TbProdutos.Codigo as codigo
      ,TbProdutos.Nome as descricao
      ,TbGrupo.Nome as grupo
      ,tbSubgrupo.Nome as familia
      ,TbProdutosTabelaPreco.Preco as preco_venda
      ,TbProdutosTabelaPreco.Lucro as margem_lucro
      ,TbProdutos.CodigoFabricante as cod_fabricante
      ,TbProdutos.CodigoEAN as barras
      ,TbProdutos.Referencia as caracteristicas
      ,TbProdutos.QtdeMinima as qtd_ideal
      ,TbProdutos.Comissao as comissao
      ,TbTributosProdutos.SituacaoTributariaPFE as st
      ,TbProdutos.UnidadeMedida as und
      ,TbProdutos.PesoLiquido as peso
      ,TbProdutos.SaldoAtual as qtd
      ,TbProdutos.Aplicacao as observacoes
      ,TbProdutos.CodigoNCM as cod_ncm
      ,cast(TbProdutos.DataCadastro as date) as data_cadastro
      ,cast (TbProdutos.DataAlteracao as date) as alteracao_preco
      ,TbProdutos.PrecoCompra as preco_custo
      ,TbProdutos.UnidadeMedidaEntrada as und_compra
      ,TbProdutos.CEST as personal6
  FROM DBPaneto.dbo.TbProdutos
  left join DBPaneto.dbo.TbGrupo on TbGrupo.Codigo = TbProdutos.CodigoGrupo
  left join DBPaneto.dbo.tbSubgrupo on tbSubgrupo.Codigo = TbProdutos.CodigoSubgrupo
  left join DBPaneto.dbo.TbProdutosTabelaPreco on TbProdutosTabelaPreco.CodigoProduto = tbprodutos.Codigo
  left join DBPaneto.dbo.TbProdutosTributos on TbProdutosTributos.Codigo = TbProdutos.codigo
  left join DBPaneto.dbo.TbTributosProdutos on TbTributosProdutos.Codigo = TbProdutosTributos.CodigoCST
  where TbProdutosTabelaPreco.CodigoTabelaPreco = '1'
