SELECT
    CLIENTE.ID_CLIENTE AS CODIGO,
    CLIENTE.NOME_CLIENTE AS NOME,
    CLIENTE.CPF_CNPJ AS CNPJ_CNPF,
    CLIENTE.LOGRADOURO AS ENDERECO,
    CLIENTE.NUMERO AS NUMERO,
    CLIENTE.COMPLEMENTO AS COMPLEMENTO,
    CLIENTE.BAIRRO AS BAIRRO,
    CIDADE.NOME_CIDADE AS CIDADE,
    ESTADO.SIGLA_UF AS UF,
    replace(CLIENTE.CEP,'.','') AS CEP,
    CLIENTE.TELEFONE AS TELEFONE,
    CLIENTE.EMAIL AS EMAIL,
    CAST (DATA_CADASTRO AS DATE) AS CADASTRO
FROM CLIENTE
LEFT JOIN CIDADE ON CIDADE.CODIGO_CIDADE_IBGE = CLIENTE.CODIGO_CIDADE
LEFT JOIN ESTADO ON ESTADO.CODIGO_ESTADO_IBGE = CIDADE.CODIGO_ESTADO_IBGE