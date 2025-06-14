SELECT 
	G.CODGRAD AS CODIGO,
    G.REFGRAD AS COD_FABRICANTE,
    (((((COALESCE(P.NOMPROD, ''::CHARACTER VARYING)::TEXT || COALESCE(' '::TEXT || D.NOMDIVI::TEXT, ''::TEXT)) || COALESCE(' '::TEXT || S.NOMSUBD::TEXT, ''::TEXT)) || COALESCE(' '::TEXT || P.ESPPROD::TEXT, ''::TEXT)) ||
        CASE
            WHEN MAR.CODDOMI = '-1'::INTEGER THEN ''::TEXT
            ELSE COALESCE(' '::TEXT || MAR.DESMARC::TEXT, ''::TEXT)
        END))::CHARACTER VARYING(180) AS DESCRICAO,
    G.NCMGRAD AS COD_NCM,        
    G.CODCEST AS PERSONAL6,
    G.DTAGRAD AS DATA_CADASTRO,
    G.PESBRUT AS PESO,
    G.GTINGRA AS BARRAS,
    G.PROANPC AS COD_ANP,
    G.FATCONV AS FAT_CONV,
    G.COBENEF AS CBENEF,
    G.ESTMINI AS QTD_IDEAL,
    G.PERCOMI AS COMISS�O,
    P.TIPPROD AS PERSONAL1,
    P.TIPIPRO AS PERSONAL2,
    COALESCE(P.OBSPROD, ''::CHARACTER VARYING)::TEXT || COALESCE(G.OBSGRAD, ''::CHARACTER VARYING)::TEXT AS OBSERVACOES,
    UND.DESUNID AS UND,      
    MAR.DESMARC AS FAMILIA,  
    TT.CFOP_DE AS CF,
    LEFT(CAST(TT.CFOP_DE AS VARCHAR),3) AS ELO,
    TT.CSTDICM AS ST,
--	G.TRIBUID,      
    TT.CST_IPI AS IPI_CODIGO_VENDA,
    TT.IPI_ALI AS ALIQ_IPI_VENDA,
    TT.CSTPICO AS PIS_CODIGO,
    TT.PIS_ALI AS PIS_ALIQ_NOR,
    TT.CSTPICO AS COFINS_CODIGO,
    TT.COF_ALI AS COFINS_ALIQ_NOR, 
    P.CODPROD AS PERSONAL4, -- PODE SER COD_FABRICANTE
    E.ESTIEST AS QTD,
    E.PRECOMP AS PRECO_CUSTO,
    E.PREVEND AS PRECO_VENDA,
    E.CUSMEDI AS CUSTO_MEDIO,
    E.PREATAC AS PRECO_ATACADO,
    E.QTDATAC AS QTD_PRECO_ATACADO
FROM TAB_GRAD G
     JOIN TAB_PROD P ON P.CODPROD = G.CODPROD
     LEFT JOIN TAB_DIVI D ON D.CODDIVI = G.CODIDIV AND (D.NOMDIVI::TEXT <> ALL (ARRAY['N�O USA'::CHARACTER VARYING::TEXT, '.'::CHARACTER VARYING::TEXT]))
     LEFT JOIN TAB_SUBD S ON S.CODSUBD = G.CODISUB AND (S.NOMSUBD::TEXT <> ALL (ARRAY['N�O USA'::CHARACTER VARYING::TEXT, '.'::CHARACTER VARYING::TEXT]))
     LEFT JOIN DOM_MAR MAR ON MAR.CODDOMI = G.MARGRAD
     LEFT JOIN DOM_FIL FIL ON FIL.CODDOMI = P.CODFILI
     LEFT JOIN DOM_UNI UND ON UND.CODDOMI = G.UNVGRAD
     LEFT JOIN DOM_CL1 CL1 ON CL1.CODDOMI = P.CL1PROD
     LEFT JOIN TAB_TRIB TT ON TT.CODTRIB = P.REGR_SA     
     LEFT JOIN TAB_ESTO E ON E.CODIGRA = G.CODGRAD