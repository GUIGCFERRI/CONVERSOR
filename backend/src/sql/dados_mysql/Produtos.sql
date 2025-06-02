select
  estoque.DESCRICAO  as caracteristicas,
  estoque.DESCRICAO_INT as descricao,
  estoque.PESOLIQ as peso,
  estoque.UN as und,
  estoque.NOMEFOR as fornecedor,
  estoque.QTDE as qtd,
  estoque.PRECOMEDIO as custo_medio,
  estoque.MARGEM as margem_lucro,
  estoque.PRECOVENDA as preco_venda,
  estoque.PRECOATACADO as preco_atacado,
  estoque.CODIGO as cod_fabricante,
  estoque.CLFISCAL as cod_ncm,
  estoque.CSOSN as st,
  estoque.CEST as personal6
from estoque
WHERE estoque.DESCRICAO IS NOT NULL AND estoque.DESCRICAO <> '' and estoque.ID <> '0'
