SELECT
    P.COD_PESSOA AS CODIGO,
    P.NOME AS NOME,
    P.NOME_FANTASIA AS FANTASIA,
    P.CGC AS CNPJ_CNPF,
    P.INSC_ESTADUAL AS IE_RG,
    P.INSC_MUNICIPAL AS IM,
    P.ENDERECO1 AS ENDERECO,
    P.END_NUM1 AS NUMERO,
    P.COMPLEMENTO1 AS COMPLEMENTO,
    B.BAIRRO AS BAIRRO,
    C.CIDADE AS CIDADE,
    C.ESTADO AS UF,
    replace (replace (P.CEP1,'-',''), '.',''),
    P.FONES_EMPRESA AS TELEFONE,
    P.EMAIL AS EMAIL,
    P.PAI AS PAI,
    P.MAE AS MAE,
    P.CONJUGE AS CONJUGE,
    P.LIMITE AS LIMITE_C5REDITO,
    P.OBS AS OBSERVACOES,
    CAST (P.DT_NASCIMENTO AS DATE) AS NASCIMENTO,
    CAST (P.DT_CADASTRO AS DATE) AS CADASTRO,
    case when P.SITUACAO = 'A' then 'Ativo' else 'Inativo' end as SITUACAO
FROM PESSOA AS P
LEFT JOIN BAIRROS B ON P.COD_BAIRRO1 = B.COD_BAIRRO
LEFT JOIN CIDADES  C ON B.COD_CIDADE = C.COD_CIDADE
