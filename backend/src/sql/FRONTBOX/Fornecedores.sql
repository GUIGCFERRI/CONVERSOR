SELECT
    REGISTRO AS CODIGO,
    NOME AS NOME,
    CONTATO AS CONTATO,
    IE AS IE_RG,
    CGC AS CNPJ_CNPF,
    ENDERE AS ENDERECO,
    NUMERO AS NUMERO,
    COMPLE AS COMPLEMENTO,
    CIDADE AS CIDADE,
    BAIRRO AS BAIRRO,
    ESTADO AS UF,
    CEP AS CEP,
    FONE AS TELEFONE,
    FAX AS FAX,
    EMAIL AS EMAIL,
    OBS AS OBSERVACOES,
    CELULAR AS CELULAR
FROM CLIFOR
WHERE CLIFOR = 'F'