SELECT
    CLIENTES.COD_CLIENTE AS CODIGO,
    CLIENTES.NOME AS NOME,
    CLIENTES.RAZAO_SOCIAL AS FANTASIA,
    case when CLIENTES.CNPJ = '' or CLIENTES.CNPJ is null then CLIENTES.CPF else CLIENTES.CNPJ END AS CNPJ_CNPF,
    case when CLIENTES.IE = '' or CLIENTES.IE is null then CLIENTES.RG else CLIENTES.IE END AS IE_RG,
    CLIENTES.ENDERECO AS ENDERECO,
    CLIENTES.NUMERO AS NUMERO,
    CLIENTES.BAIRRO AS BAIRRO,
    CLIENTES.CIDADE AS CIDADE,
    CLIENTES.UF AS UF,
    CLIENTES.CEP AS CEP,
    CLIENTES.TELEFONE AS TELEFONE,
    CLIENTES.CELULAR AS CELULAR,
    CLIENTES.EMAIL AS EMAIL,
    CLIENTES.ESTADO_CIVIL AS EST_CIVIL,
    CLIENTES.CONJUGE AS CONJUGE,
    CLIENTES.PAI AS PAI,
    CLIENTES.MAE AS MAE,
    CLIENTES.SEXO AS SEXO,
    CLIENTES.LIMITE AS LIMITE_CREDITO,
    CLIENTES.DATA_NASCIMENTO AS NASCIMENTO,
    CLIENTES.DATA_CADASTRO AS CADASTRO,
    CLIENTES.INFORMACOES_ADICIONAIS AS OBSERVACOES
FROM CLIENTES
WHERE CLIENTES.NOME IS NOT NULL AND CLIENTES.DATA_CADASTRO IS NOT NULL
