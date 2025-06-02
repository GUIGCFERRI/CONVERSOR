SELECT
  tbprodutos.codproduto AS CODIGO,
  tbprodutos.descricao AS DESCRICAO,
  tbfabricante.nomefabricante AS CARACTERISTICAS,
  tbunidades.sigla as UND_COMPRA,
  tbunidades.sigla as UND,
  tbprodutos.codigodebarras AS BARRAS,
  tbprodutos.pesoliquido AS PESO,
  tbprodutos.qtdestoqueatual AS QTD,
  tbprodutos.margemdelucro AS MARGEM_LUCRO,
  tbprodutos.precodevenda AS PRECO_VENDA,
  tbprodutos.precocusto AS PRECO_CUSTO,
  tbprodutos.precopromocional AS PRECO_ATACADO,
  tbgrupoproduto.descricao as GRUPO,
  tbsubgrupoproduto.descricao as FAMILIA,
  tbprodutos.ncm AS COD_NCM
FROM tbprodutos
LEFT JOIN tbunidades ON tbunidades.codunidade = tbprodutos.undvenda
LEFT JOIN tbfabricante ON tbfabricante.CODFABRICANTE = tbprodutos.codfabricante
LEFT JOIN tbgrupoproduto ON tbgrupoproduto.codgrupoproduto = tbprodutos.codgrupoproduto
LEFT JOIN tbsubgrupoproduto ON tbsubgrupoproduto.codgrupoproduto = tbprodutos.codsubgrupo