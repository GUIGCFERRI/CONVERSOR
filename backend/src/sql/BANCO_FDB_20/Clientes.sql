SELECT
    CLIENTE.ID AS CODIGO,
    CLIENTE.NOME AS NOME,
    CLIENTE.FANTASIA AS FANTASIA,
    CLIENTE.EMAIL AS EMAIL,
    CLIENTE.CPF_CNPJ AS CNPJ_CNPF,
    case when CLIENTE.RG = '' or CLIENTE.RG is null then CLIENTE.INSCRICAO_ESTADUAL else CLIENTE.RG END AS IE_RG,
    CLIENTE.SEXO AS SEXO,
    CLIENTE.INSCRICAO_MUNICIPAL AS IM,
    CLIENTE.DATA_NASCIMENTO AS NASCIMENTO,
    CLIENTE.ESTADOCIVIL AS EST_CIVIL,
    CLIENTE.LOGRADOURO AS ENDERECO,
    CLIENTE.NUMERO AS NUMERO,
    CLIENTE.COMPLEMENTO AS COMPLEMENTO,
    CLIENTE.CEP AS CEP,
    CLIENTE.BAIRRO AS BAIRRO,
    CLIENTE.CIDADE AS CIDADE,
    CLIENTE.UF AS UF,
    CLIENTE.FONE1 AS TELEFONE,
    CLIENTE.FAX AS FAX,
    CLIENTE.CELULAR AS CELULAR,
    CLIENTE.CONTATO AS CONTATO,
    CLIENTE.LIMITE AS LIMITE_CREDITO,
    CLIENTE.NOMEDOPAI AS PAI,
    CLIENTE.NOMEDAMAE AS MAE
FROM CLIENTE
