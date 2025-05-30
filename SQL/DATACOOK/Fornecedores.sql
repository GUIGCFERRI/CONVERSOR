SELECT
    CODIGO AS CODIGO,
    NOME AS NOME,
    case when REPLACE(replace(replace(CPF,'-',''),'.',''),'/','') = '' or REPLACE(replace(replace(CPF,'-',''),'.',''),'/','') is null then REPLACE(replace(replace(CGC,'-',''),'.',''),'/','') else REPLACE(replace(replace(CPF,'-',''),'.',''),'/','') END AS CNPJ_CNPF,
    case when RG = '' or RG is null then INSC_EST else RG END AS IE_RG,
    CONTATO AS CONTATO,
    ENDERECO AS ENDERECO,
    BAIRRO AS BAIRRO,
    CIDADE AS CIDADE,
    UF AS UF,
    CEP AS CEP,
    TELEFONE AS TELEFONE,
    FAX AS FAX,
    CELULAR AS CELULAR,
    EMAIL AS EMAIL
FROM FORNECEDOR