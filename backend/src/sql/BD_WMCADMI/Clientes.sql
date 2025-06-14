SELECT
    CODCLIFOR AS CODIGO,
    TIPO_CADASTRO,
    NOME_RAZAO AS NOME,
    NOME_FANTASIA AS FANTASIA,
    CONTATO AS CONTATO,
    CNPJ_CPF AS CNPJ_CNPF,
    RG_IE AS IE_RG,
    ENDERECO AS ENDERECO,
    NUMERO AS NUMERO,
    COMPLEMENTO AS COMPLEMENTO,
    BAIRRO AS BAIRRO,
    CIDADE AS CIDADE,
    ESTADO AS UF,
    CEP AS CEP,
    TELEFONE AS TELEFONE,
    CELULAR AS CELULAR,
    ENDEMAIL AS EMAIL,
    TIPO_SEXO AS SEXO,
    VLR_LIMITE AS LIMITE_CREDITO,
    NOME_PAI AS PAI,
    NOME_MAE AS MAE,
    ESTADO_CIVIL AS EST_CIVIL,
    CONJUGUE AS CONJUGE,
    DATA_NASCI AS NASCIMENTO,
    DATA_INCLU AS CADASTRO
FROM CLIEFORNE
WHERE TIPO_CADASTRO = 'C'