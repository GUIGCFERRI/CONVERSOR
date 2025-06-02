SELECT 
  p.codProduto as CODIGO
, p.produto as DESCRICAO
, p.descProduto as OBSERVACOES
, p.tamanho as CARACTERISTICAS
, p.valorRevendaUn as PRECO_VENDA
, p.qtdeSaldo as QTD
, p.codBarras as BARRAS
FROM cadastro_de_produto p
