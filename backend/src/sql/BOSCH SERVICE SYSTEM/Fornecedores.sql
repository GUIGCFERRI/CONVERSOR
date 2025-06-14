SELECT
    ICODFOR AS CODIGO,
    CNOME AS NOME,
    CNOMEFAN AS FANTASIA,
    CCPFCNPJ AS CNPJ_CNPF,
    CRGINS AS IE_RG,
    CINSMUN AS IM,
    CENDERECO AS ENDERECO,
    CNUMERO AS NUMERO,
    CCOMPLE AS COMPLEMENTO,
    CBAIRRO AS BAIRRO,
    CCIDADE AS CIDADE,
    CCEP AS CEP,
    CESTADO AS UF,
    CFONE1 AS TELEFONE,
    CFONECELULAR AS CELULAR,
    CFAX1 AS FAX,
    CEMAIL AS EMAIL,
    case when CSITUACAO = 'A' then 'Ativo' else 'Inativo' end as SITUACAO
FROM CADFOR