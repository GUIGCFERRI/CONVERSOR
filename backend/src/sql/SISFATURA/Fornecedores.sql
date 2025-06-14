SELECT
    PESSOA.CD_PESSOA AS CODIGO,
    PESSOA.NM_PESSOA AS NOME,
    PESSOA.NM_FANTASIA AS FANTASIA,
    PESSOA.DS_ENDERECO AS ENDERECO,
    PESSOA.NR_ENDERECO AS NUMERO,
    PESSOA.CD_COMPLEMENTO AS COMPLEMENTO,
    PESSOA.DS_BAIRRO AS BAIRRO,
    PESSOA.CD_ESTADO AS UF,
    MIN (MUNICIPIO.ds_municipio) AS CIDADE,
    PESSOA.CD_CEP AS CEP,
    PESSOA.DS_EMAIL AS EMAIL,
    PESSOA.NR_TELEFONE AS TELEFONE,
    PESSOA.NR_FAX AS FAX,
    PESSOA.NR_CELULAR AS CELULAR,
    PESSOA.CD_CGCCPF AS CNPJ_CNPF,
    case when PESSOA.NR_RG = '' or PESSOA.NR_RG is null then PESSOA.NR_INSCEST else PESSOA.NR_RG END AS IE_RG,
    PESSOA.NR_INSC_MUN AS IM,  
    PESSOA.BL_OBS AS OBSERVACOES
FROM PESSOA
LEFT JOIN MUNICIPIO ON MUNICIPIO.cd_municipio = PESSOA.CD_CIDADE
WHERE PESSOA.CD_PESSOA > '1'  AND PESSOA.FG_CLIENTE = '0'
GROUP BY 1,2,3,4,5,6,7,8,10,11,12,13,14,15,16,17,18