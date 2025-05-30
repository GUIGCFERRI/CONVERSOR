SELECT 
`produtos`.`idProdutos` AS CODIGO,
  replace(produtos.CodigoBarras,'.','') AS BARRAS,
`produtos`.`Descritivo` AS DESCRICAO,
`produtos`.`EstoqueAtual` AS QTD,
`produtos`.`Grupo`,
`produtos`.`PrecoCusto`,
`produtos`.`Fornecedor`,
`produtos`.`NCM` AS COD_NCM,
`produtos`.`DataCadastro` AS DATA_CADASTRO,
SUBSTRING(`produtos`.`TabIcmsProd` FROM 1 FOR 2) AS ST,
`produtos`.`unidade` AS UND,
`produtos`.`CEST` AS PERSONAL6,
`familia`.`DESCRITIVO` AS FAMILIA,
produtos.`Preco1` AS PRECO_VENDA
FROM produtos
LEFT JOIN FAMILIA ON `produtos`.`Familia` = FAMILIA.`idFamilia`
