select produtos.`COD_PRODUTO` as codigo,
produtos.`CODIGODEBARRA` as barras,
produtos.`NOME_FORNECEDOR` as fornecedor,
produtos.`MARCA` as caracteristica,
produtos.`NCM` as cod_ncm,
produtos.`CEST` as personal6,
produtos.`NOME` as descricao,
produtos.`UN` as UND_COMPRA,
produtos.`UN_EMBALAGEM` as und,
produtos.`QUANT_EMBALAGEM` AS FAT_CONV,
produtos.`PCO_CUSTO` AS PRECO_CUSTO,
produtos.`CSOSN` AS ST,
produtos.`PCO_COMPRA` as preco_venda,
(`produtos_saldo`.`ENTRADA`- `produtos_saldo`.`SAIDA`) AS QTD
FROM PRODUTOS
LEFT JOIN PRODUTOS_SALDO ON PRODUTOS.`COD_PRODUTO` = `produtos_saldo`.`COD_PRODUTO`