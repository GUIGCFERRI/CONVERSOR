SELECT
	PRODUTO.CODPRODUTO AS CODIGO,
	PRODUTO.CODEXTERNO AS COD_FABRICANTE,
	PRODUTO.CODBARRAS AS BARRAS,
	PRODUTO.DESCRICAO,
	PRODUTO.UN AS UND,
	PRODUTO.PRECO_VENDA,
	PRODUTO.NCM AS COD_NCM,
	PRODUTO.QTD_ESTOQUE AS QTD,
	PRODUTO.CEST AS PERSONAL6,
	PRODUTO.OBS_POPUP AS OBSERVACOES,
	PRODUTO.CODIGO_ANP AS COD_ANP,
	PRODUTO.CBENEF,
	GRUPO.DESCRICAO AS GRUPO,
	CASE
		WHEN CAST(ICMS.CSOSN AS VARCHAR(3)) = ''
		OR ICMS.CSOSN IS NULL THEN ICMS.CST
		ELSE CAST(ICMS.CSOSN AS VARCHAR(3))
	END AS ST,
	ICMS.CFOP AS CF,
	LEFT (ICMS.CFOP,3) AS ELO,
	MARCA.DESCRICAO AS FAMILIA,
	IPI.CST AS IPI_CODIGO_VENDA,
	IPI.ALIQIPI AS ALIQ_IPI_VENDA,
	PIS.CST AS PIS_CODIGO,
	PIS.ALIQPIS AS PIS_ALIQ_NOR,
	COFINS.CST AS COFINS_CODIGO,
	COFINS.ALIQCOFINS AS COFINS_ALIQ_NOR
FROM
	PRODUTO
LEFT JOIN GRUPO ON GRUPO.CODGRUPO = PRODUTO.CODGRUPO
LEFT JOIN ICMS ON ICMS.ID_ICMS = PRODUTO.ID_ICMS
LEFT JOIN MARCA ON  MARCA.CODMARCA = PRODUTO.CODMARCA 
LEFT JOIN IPI ON IPI.ID_IPI = PRODUTO.ID_IPI 
LEFT JOIN PIS ON PIS.ID_PIS = PRODUTO.ID_PIS 
LEFT JOIN COFINS ON COFINS.ID_COFINS = PRODUTO.ID_COFINS 
