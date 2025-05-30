select
  `codpro` as codigo,
  `codbar` as barras,
  `descricao`,
  `unidade` as und,
  `codfabrica` as cod_fabricante,
  `quantidade` as qtd,
  `valven` as preco_venda,
  `valcom` as preco_custo,
  `lab` as grupo,
  `tippro` as familia,
  `cst` as st,
  `NCM` as cod_ncm
from produtos
