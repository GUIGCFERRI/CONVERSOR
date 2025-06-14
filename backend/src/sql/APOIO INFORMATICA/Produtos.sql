SELECT
    P.CODUSUARIO AS CODIGO,
    P.CODUSUARIO AS COD_FABRICANTE,
    P.DESCRICAO,
    P.CODBARRAS AS BARRAS,
    P.ESTOQUEATUAL AS QTD,
    P.ESTOQUEMIN AS QTD_IDEAL,
    P.MRGLUCRO AS MARGEM_LUCRO,
    P.PRECOCUSTO AS PRECO_CUSTO,
    P.PRECOVENDA AS PRECO_VENDA,
    P.UNID AS UND,
    SUBSTRING (P.CST FROM 1 FOR 1) AS OST,
    SUBSTRING (P.CST FROM 2 FOR 4) AS ST,
    P.NCM AS COD_NCM,
    P.CEST AS PERSONAL6,
    P.COMISSAO,
    P.PESO,
    P.COR,
    P.tamanho, 
    P.obsprod AS OBSERVACOES,
    CASE P.inativo when '0' THEN 'Ativo' else 'Inativo' end AS SITUACAO,
    P.datacad AS DATA_CADASTRO,
    P.cstpiscofinsentr AS PISE_CODIGO,
    P.aliqpisentr AS PISE_ALIQ_NOR,
    P.cstpiscofinsentr AS COFINSE_CODIGO,
    P.aliqcofinsentr AS COFINSE_ALIQ_NOR,
    P.cstpiscofinssaid AS COFINS_CODIGO,
    P.cstpiscofinssaid AS PIS_CODIGO,
    P.aliqpissaid AS PIS_ALIQ_NOR,
    P.aliqcofinssaid AS COFINS_ALIQ_NOR,
    P.cstipi AS IPI_CODIGO_VENDA,
    P.aliqipi AS ALIQ_IPI_VENDA,
    F.rzsocial as fornecedor, 
    G.descricao AS GRUPO,
    SG.descricao AS FAMILIA,
    CAST (A.valor AS INTEGER) AS ELO
FROM PRODUTO P
left join FORNECEDOR F ON F.codforn = P.codforn
left join GRUPO G ON G.codgrupo= P.codgrupo
left join SUBGRUPO SG ON SG.codsubgr = P.codsubgr
left join ALIQUOTAS A ON A.codigo = P.codaliq
