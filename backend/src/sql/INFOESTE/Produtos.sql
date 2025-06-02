SELECT
fatprodx.PROD_CODIGO AS CODIGO,
fatprodx.PROD_CODBAR AS BARRAS,
fatprodx.PROD_DESCR AS DESCRICAO,
fatprodx.PROD_UME AS UND,
ESTCADXX.estc_qtdatu AS QTD,
fatprodx.prod_classfisc AS COD_NCM,
fatprodx.prod_cst2 AS ST,
FATCLIFO.clib_razsoc AS FORNECEDOR,
FATGRUXX.gru_descr AS GRUPO,
FATSGRXX.sgr_descr AS FAMILIA,
fatprodx.prod_vlrvenda AS PRECO_VENDA,
fatprodx.prod_codfornec AS COD_FABRICANTE,
fatprodx.marca_descr AS CARACTERISTICAS
FROM fatprodx
LEFT JOIN FATCLIFO ON FATCLIFO.clib_clifor = FATPRODX.prod_clifor
LEFT JOIN FATGRUXX ON FATGRUXX.gru_codigo = FATPRODX.prod_grupo
LEFT JOIN ESTCADXX ON ESTCADXX.estc_codigo = FATPRODX.prod_codigo
LEFT JOIN fatsgrxx ON FATSGRXX.sgr_codigo = FATPRODX.prod_sgrupo
where fatprodx.prod_codigo <> 'PROD_CODIGO'
