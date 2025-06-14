SELECT
    ID AS CODIGO,
    NOME AS NOME,
    CONTATO AS CONTATO,
    CNPJ_CPF AS CNPJ_CNPF,
    INSC_RG AS IE_RG,
    ENDERECO AS ENDERECO,
    COMPLEMENTO AS COMPLEMENTO,
    NUM_END AS NUMERO,
    BAIRRO_END AS BAIRRO,
    CIDADE_END AS CIDADE,
    CEP_END AS CEP,
    UF_END AS UF,
    TELEFONE AS TELEFONE,
    TELEFAX AS FAX,
    CELULAR AS CELULAR,
    EMAIL AS EMAIL,
    FILIACAO_PAI AS PAI,
    FILIACAO_MAE AS MAE,
    LIMITE_CRED AS LIMITE_CREDITO,
    CAST (DATA_CAD AS DATE) AS CADASTRO,
    CAST (DATA_NASC AS DATE) AS NASCIMENTO,
    OBSERVACOES AS OBSERVACOES,
    case when ATIVO = 'T' then 'Ativo' else 'Inativo' end as SITUACAO
FROM CONTATO
