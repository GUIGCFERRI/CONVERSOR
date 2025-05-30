select
  produto.Codigo as codigo,
  produto.codigobarra as barras,
  produto.nome as descricao,
  unidade.nome as und,
  produto.Estoque as qtd,
  produto.CustoMedio as custo_medio, 
  produto.ValorDeCusto as preco_custo,
  produto.PercLucro as margem_lucro,
  produto.Valor as preco_venda,
  produto.codigoCST as st,
  produto.CodigoFabricante as cod_fabricante,
  cast(produto.DataCadastro as date) as data_cadastro,
  cast(produto.DataUltimaCompra as date) as ultima_compra,
  cast(produto.DataUltimaVenda as date) as ultima_venda,
  cast(produto.DataUltimaAlteracao as date) as alteracao_preco,
  produto.NCM as cod_ncm,
  produto.cest as personal6
from produto
left join unidade on unidade.codigo = produto.CODIGOUNIDADE