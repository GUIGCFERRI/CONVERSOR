select 
`pdv_produto01`.pro01_codigo as cod_fabricante,
`pdv_produto01`.PRO01_ID as codigo,
PDV_SECAO.`sec01_descricao` AS GRUPO,
`pdv_produto01`.pro01_codigodebarra AS BARRAS,
`pdv_produto01`.`pro01_descricao` AS DESCRICAO,
`pdv_produto01`.`pro01_unidade` AS UND,
`pdv_produto01`.`pro01_precounitario` AS PRECO_VENDA,
`pdv_produto01`.`pro01_origem` AS OST,
-- `pdv_produto01`.PRO01_CST AS ST,
`pdv_produto01`.pro01_csosn  AS ST,
left (CAST(`pdv_produto01`.pro01_aliquota as INTEGER),3)AS ELO,
`pdv_produto01`.pro01_codigocfop AS CF,
`pdv_produto01`.`pro01_codigoncm` AS COD_NCM,
`pdv_produto01`.`pro01_estoque` AS QTD,
 `pdv_produto01`.`pro01_codigocest` AS PERSONAL6
FROM `pdv_produto01`
LEFT JOIN `pdv_secao` ON `pdv_produto01`.`pro01_sec01_id`=`pdv_secao`.`sec01_id`
