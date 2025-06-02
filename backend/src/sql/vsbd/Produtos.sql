select
  produtos.Codigo as codigo,
  produtos.CodigoBarras as barras,
  produtos.Referencia as caracteristicas,
  produtos.DataCadastro as data_cadastro,
  produtos.UltimaAlteracao as alteracao_preco,
  produtos.`Descricao` as descricao,
  produtos.UNVenda as und,
  produtos.UNCompra as und_compra,
  produtosestoque.Estoque as qtd,
  produtosestoque.EstoqueIdeal as qtd_ideal,
  produtos.ValorCusto as preco_custo,
  produtos.PercentualT1 as margem_lucro,
  produtos.VendaT1 as preco_venda,
  produtos.Grupo as grupo,
  produtos.SubGrupo as familia,
  produtos.PesoLiquido as peso,
  produtos.TextoObserva as observacoes,
  produtos.SituacaoTributaria as st,
  produtos.CODIGOFABRICA as cod_fabricante,
  produtos.NCM as cod_ncm,
  produtos.Cest as personal6
from produtos
left join produtosestoque on produtosestoque.CodigoProduto = produtos.Codigo
