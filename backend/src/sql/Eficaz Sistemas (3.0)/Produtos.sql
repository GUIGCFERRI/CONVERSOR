SELECT 
  P.PRO_CODIGO AS CODIGO
, P.PRO_DESCRICAO AS DESCRICAO
, P.PRO_CODIGOFABRICA AS COD_FABRICANTE
, P.PRO_LOCALIZACAO AS PERSONAL1
, P.PRO_UNI_CODIGO AS UND
, P.PRO_ORIGEM AS OST
, P.PRO_STI_CODIGO AS IPI_CODIGO_VENDA
, P.PRO_ALQIPISAIDA AS ALIQ_IPI_VENDA
, P.PRO_STP_CODIGO AS PIS_CODIGO
, P.PRO_STC_CODIGO AS COFINS_CODIGO
, P.PRO_CEST AS PERSONAL6
, P.PRO_INFCOMPLEMENTARES AS OBSERVACOES
, P.PRO_ESTOQUE AS QTD
, P.PRO_ESTOQUEMINIMO AS QTD_IDEAL
, P.PRO_PRECOCUSTO AS PRECO_CUSTO
, P.PRO_PRECOVENDA AS PRECO_VENDA
, P.PRO_PCOMISSAOVENDASVEN AS COMISSAO
, CASE P.PRO_ATIVO WHEN 'S' THEN 'Ativo' ELSE 'Inativo' END AS SITUACAO
, P.PRO_PESOBRUTO AS PESO
, PB.PBA_CODIGOBARRAS AS BARRAS
, PG.PGR_DESCRICAO AS GRUPO
, PC.PCT_DESCRICAO AS FAMILIA
, PM.PMA_DESCRICAO AS CARACTERISTICAS
, RIGHT (TC.TCS_DESCRICAO, 3) AS ST
, CF.CFI_CLASSIFICACAO AS COD_NCM
FROM PRODUTOS P
LEFT JOIN PRODUTOS_BARRAS PB ON PB.PBA_PRO_CODIGO = P.PRO_CODIGO 
LEFT JOIN PRODUTOS_GRUPOS PG ON PG.PGR_CODIGO = P.PRO_PGR_CODIGO 
LEFT JOIN PRODUTOS_CATEGORIAS PC ON PC.PCT_CODIGO = P.PRO_PCT_CODIGO 
LEFT JOIN PRODUTOS_MARCAS PM ON PM.PMA_CODIGO = P.PRO_PMA_CODIGO 
LEFT JOIN TABELA_CST TC ON TC.TCS_CODIGO = P.PRO_TCS_CODIGO 
LEFT JOIN CLASSIFICACAO_FISCAL CF ON CF.CFI_CODIGO = P.PRO_CFI_CODIGO
