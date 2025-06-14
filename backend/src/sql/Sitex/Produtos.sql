SELECT 
  RIGHT (P.REFERENCIA,6) AS CODIGO
, P.DESCRICAO
, P.UND
, (P.ENTRADAS - P.SAIDAS) AS QTD
, P.PRCUSTO AS PRECO_CUSTO
, P.PRECO1 AS PRECO_VENDA
, P.PRECO2 AS PERSONAL1
, P.PRECO3 AS PERSONAL2
, P.PRECO4 AS PERSONAL4
, P.CODIGOBARRAS AS BARRAS
, P.LOCALIZACAO AS PERSONAL5
, CASE WHEN P.INATIVO = '0' THEN 'Ativo' ELSE 'Inativo' END AS SITUACAO
--, FORNECEDOR
--, P.CODIGOORIGINAL AS COD_FABRICANTE
, P.REFERENCIA AS COD_FABRICANTE
, CAST (P.ULTIMACOMPRADATA AS DATE) AS ULTIMA_COMPRA
, P.CODIGONCM AS COD_NCM
, CAST (P.DATACADASTRO AS DATE) AS DATA_CADASTRO
, P.ORIGEM AS OST
, P.PESO
, P.ESTOQUEMIN AS QTD_IDEAL
, P.TAMANHO
, P.CODIGOCEST AS PERSONAL6
, P.CST_PIS AS PIS_CODIGO
, P.ALIQUOTA_PIS AS PIS_ALIQ_NOR
, P.CST_COFINS AS COFINS_CODIGO
, P.ALIQUOTA_COFINS AS COFINS_ALIQ_NOR
, G.DESCRICAO AS GRUPO
FROM PRODUTOS P
LEFT JOIN GRUPOS G ON G.CODIGO = P.GRUPO 
