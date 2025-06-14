SELECT
    MATERIAIS.MAT_001 AS CODIGO,
    MATERIAIS.MAT_003 AS DESCRICAO,
    MATERIAIS.MAT_004 AS BARRAS,
    UNIDADES.UNI_003  AS UND,
    FORNECEDOR.RAZAO_SOCIAL AS FORNECEDOR,
    MATERIAIS.MAT_008 AS PRECO_VENDA,
    MATERIAIS.VALOR_ATACADO AS PRECO_ATACADO,
    --MATERIAIS.QTDEATACAREJO AS QTD_PRECO_ATACADO,
    MATERIAIS.MAT_012 AS PRECO_CUSTO,
    CAST (MATERIAIS.DAT_001_1 AS DATE) AS DATA_CADASTRO,
    CATEGORIA.CAT_002 AS GRUPO,
    MATERIAIS.NCM AS COD_NCM,
    MATERIAIS.CSO_CODIGO AS ST,
	MATERIAIS.CFOP_CONSUMIDOR AS CF,
	LEFT (MATERIAIS.CFOP_CONSUMIDOR,3) AS ELO,
    MATERIAIS.CEST AS PERSONAL6,
    MATERIAIS.DIAS_VALIDADE AS VALIDADE_DIAS,
    MATERIAIS.CODIGO_ANP AS COD_NCM,
   -- MATERIAIS.MARCA AS CARACTERISTICAS,
   -- MATERIAIS.PESO_BRUTO AS PESO,
    MATERIAIS.PIS_CODIGO_ENTRADA AS PISE_CODIGO,
    MATERIAIS.PIS_CODIGO_SAIDA AS PIS_CODIGO,
    MATERIAIS.COF_CODIGO_ENTRADA AS COFINSE_CODIGO,
    MATERIAIS.COF_CODIGO_SAIDA AS COFINS_CODIGO,
    MATERIAIS.PIS AS PIS_ALIQ_NOR,
    MATERIAIS.COFINS AS COFINS_ALIQ_NOR,   
    MATERIAIS.IPI AS ALIQ_IPI_VENDA,   
    --MATERIAIS.TAMANHO_PADRAO AS TAMANHO,    
    --MATERIAIS.MAT_016 AS QTD,    
    SETOR_ESTOQUE_MATERIAL.QUANTIDADE AS QTD
FROM MATERIAIS
LEFT JOIN CATEGORIA ON CATEGORIA.CAT_001 = MATERIAIS.CAT_001
LEFT JOIN UNIDADES ON UNIDADES.UNI_001 = MATERIAIS.UNI_001
LEFT JOIN FORNECEDOR ON FORNECEDOR.ID_FORNECEDOR = MATERIAIS.ID_FORNECEDOR
LEFT JOIN SETOR_ESTOQUE_MATERIAL ON SETOR_ESTOQUE_MATERIAL.ID_MATERIAL = MATERIAIS.MAT_001 AND SETOR_ESTOQUE_MATERIAL.ID_SETOR = '1' -- SETOR ALMOXARIFADO 

