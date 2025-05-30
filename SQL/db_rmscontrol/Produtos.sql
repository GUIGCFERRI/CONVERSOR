select
  produto.idProduto as codigo,
  produto.Descricao as descricao,
  produto.UnidEntra as und_compra,
  produto.UnidSaida as und,
  produto.Obs as observacoes,
  produto_preco.CUSTO as preco_custo,
  produto_preco.CUSTO_MEDIO as custo_medio,
  produto_preco.MARGEM as margem_lucro,
  produto_preco.VENDA1 as preco_venda,
  produto.Referencia as cod_fabricante,
  Grupo.nome as grupo,
  SubGrupo.nome as familia,
  produto.DtCadastro as data_cadastro,
  produto.EstMin as qtd_ideal,
  produto_estoque.estoque_atual as qtd,
  produto.Ean as barras,
  produto.ClassFiscal as cod_ncm,
  produto.CodTrib as st,
  produto.cest as personal6
from produto
left join produto_estoque on produto_estoque.idproduto = produto.idProduto 
left join produto_preco on produto_preco.idproduto = produto.idProduto
left join grupo on grupo.idgrupo = produto.idGrupo
left join subgrupo on subgrupo.idsubgrupo = produto.idSubGrupo