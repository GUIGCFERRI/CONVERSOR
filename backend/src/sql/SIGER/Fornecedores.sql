SELECT
    COD_EMPRESA AS CODIGO,
    RAZAO_SOCIAL AS NOME,
    FANTASIA AS FANTASIA,
    ENDERECO AS ENDERECO,
    NUMERO AS NUMERO,
    COMPLEMENTO AS COMPLEMENTO,
    BAIRRO AS BAIRRO,
    CEP AS CEP,
    CIDADE AS CIDADE,
    UF AS UF,
    FONE1 AS TELEFONE,
    FONE2 AS CELULAR,
    CONTATO AS CONTATO,
    FAX AS FAX,
    EMAIL AS EMAIL,
    CPF_CNPJ AS CNPJ_CNPF,
    INSCRICAO_ESTADUAL AS IE_RG,
    INSCRICAO_MUNIC AS IM,
    OBSERVACOES AS OBSERVACOES
FROM EMPRESAS
WHERE RAZAO_SOCIAL IS NOT NULL AND TIPO_FORNECEDOR = '1' AND TIPO_CLIENTE <> '1'