SELECT
    P.PES_COD       AS CODIGO,
    P.PES_RAZ       AS NOME,
    P.PES_FAN       AS FANTASIA,
    P.PES_CON       AS CONTATO,
    P.PES_INF       AS CNPJ_CNPF,
    P.PES_RGI       AS IE_RG,
    NULL            AS IM,
    E.END_END       AS ENDERECO,

    -- CAST para VARCHAR para evitar erro no Conversor
    CAST(E.END_NRO AS VARCHAR(10)) AS NUMERO,

    E.END_COP       AS COMPLEMENTO,
    E.END_BAI       AS BAIRRO,
    M.MUN_NOM       AS CIDADE,
    M.MUN_EST       AS UF,
    E.END_CEP       AS CEP,

    COALESCE('(' || NULLIF(P.PES_DDD, '') || ') ', '') || COALESCE(NULLIF(P.PES_FOP, ''), '') AS TELEFONE,
    COALESCE('(' || NULLIF(P.PES_DDS, '') || ') ', '') || COALESCE(NULLIF(P.PES_FOS, ''), '') AS CELULAR,

    P.PES_EMA       AS EMAIL,
    NULL            AS RENDA,
    NULL            AS LIMITE_CREDITO,
    P.PES_DTC       AS CADASTRO,
    P.PES_DIN       AS ULTIMA_VENDA,
    P.PES_OBS       AS OBSERVACOES,
    P.PES_DNC       AS NASCIMENTO,
    NULL            AS EST_CIVIL,
    NULL            AS PAI,
    NULL            AS MAE,
    NULL            AS NATURALIDADE,

    -- CAST para VARCHAR do campo PES_PFS que é inteiro
    CAST(P.PES_PFS AS VARCHAR(10)) AS PROFISSAO,

    NULL            AS CONJUGE,

    CASE 
        WHEN C.CLI_PES IS NOT NULL THEN 'CLIENTE'
        ELSE NULL
    END AS TIPO_PESSOA

FROM
    PESSOA P
LEFT JOIN
    ENDERECO E ON E.END_INT = P.PES_COD
LEFT JOIN
    MUNICIPIO M ON M.MUN_COD = E.END_MUN
INNER JOIN
    CLIENTE C ON C.CLI_PES = P.PES_COD;