SELECT
    TBITEM.CODITEM AS CODIGO,
    TBITEM.CODBARRA AS BARRAS,
    TBITEM.DESCRICAO AS DESCRICAO,
    TBITEM.CODUNDI AS UND,
    TBITEM."REF" AS COD_FABRICANTE,
    TBITEM.CUSTOMEDIO AS CUSTO_MEDIO,
    TBITEM.CUSTOFIXO AS PRECO_CUSTO,
    TBITEM.VALOR AS PRECO_VENDA,
    TBITEM.CEST_ST AS PERSONAL6,  
    TBITEM.PESOBRUTO AS PESO,
    TBITEM.QTDMINIMA AS QTD_IDEAL,
    TBITEM.OBSVENDAS AS OBSERVACOES,
    TBITEM.CODBALANCA AS PERSONAL1,
    TBITEM.CODANP AS COD_ANP,
    TBITEM.DTCAD AS DATA_CADASTRO,  
	CASE TBITEM.ATIVO WHEN 'S' THEN 'Ativo' ELSE 'Inativo' END AS SITUACAO,
    TBITEM.QTDATACADO AS QTD_PRECO_ATACADO,
    TBITEM.VALORUNITATACADO AS PRECO_ATACADO,   
    TBESTOQUE.QTDDISPONIVEL AS QTD,
    TBESTOQUE.DTULTCOMPRA AS ULTIMA_COMPRA,
    TBESTOQUE.DTULTVENDA AS ULTIMA_VENDA,
    TBNCM.CODNCM AS COD_NCM,
    TBNCM.CSTICMS AS ST,
    TBNCM.CSTPIS AS PIS_CODIGO,  
    TBNCM.CSTCOFINS AS COFINS_CODIGO, 
    TBNCM.CSTIPI AS IPI_CODIGO_VENDA, 
    TBNCM.CSTPISENTRADA AS IPI_CODIGO, 
    TBNCM.CSTCOFINSENTRADA AS COFINSE_CODIGO,
    LEFT (TBNCM.CFOPINTERNOFISICA, 3) AS ELO, 
    TBTABELAPISCOFINS.PERCPIS AS PIS_ALIQ_NOR,
    TBTABELAPISCOFINS.PERCCOFINS AS COFINS_ALIQ_NOR,
    TBTABELAPISCOFINS.PERCPISENTRADA AS PISE_ALIQ_NOR,
    TBTABELAPISCOFINS.PERCCOFINSENTRADA AS COFINSE_ALIQ_NOR,
    TBGRUPO.DESCRICAO AS GRUPO,
    TBSUBGRUPO.DESCRICAO AS FAMILIA,
    TBSECAO.DESCRICAO AS CARACTERISTICAS,
    TBFABRICANTE.DESCRICAO AS FORNECEDOR
FROM TBITEM
LEFT JOIN TBESTOQUE ON TBITEM.CODITEM = TBESTOQUE.CODITEMI
LEFT JOIN TBNCM ON TBITEM.CODNCM = TBNCM.CHAVE
LEFT JOIN TBGRUPO ON TBGRUPO.CODIGO = TBITEM.CODGRUPOI 
LEFT JOIN TBSUBGRUPO ON TBSUBGRUPO.CODIGO = TBITEM.CODSUBGRUPOI AND TBSUBGRUPO.CODGRUPOI =  TBGRUPO.CODIGO
LEFT JOIN TBSECAO ON TBSECAO.CODIGO = TBITEM.CODSECAOI 
LEFT JOIN TBFABRICANTE ON TBFABRICANTE.CODIGO = TBITEM.CODFAB 
LEFT JOIN TBTABELAPISCOFINS ON TBTABELAPISCOFINS.CHAVE = TBNCM.CODTABELAPISCOFINS 
