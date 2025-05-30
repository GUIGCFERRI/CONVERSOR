SELECT
  replace(id,'.','') as barras,
  id AS COD_FABRICANTE,
  descricao,
  unidade AS UND,
  preco AS PRECO_CUSTO,
  preco_venda AS PRECO_VENDA,
  atacado AS PRECO_ATACADO,
  estoque AS QTD,
  grupo AS GRUPO,
  Subgrupo AS FAMILIA,
  marca AS CARACTERISTICAS,
  temanho AS TAMANHO
FROM CADPRODUTO
