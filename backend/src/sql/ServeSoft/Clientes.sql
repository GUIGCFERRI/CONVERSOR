SELECT CLIENTE.CLIENTE_ID AS CODIGO,
CLIENTE.NOME_FANTASIA AS FANTASIA,
CLIENTE.RAZAO_SOCIAL AS NOME,
CLIENTE.CNPJ_CPF AS CNPJ_CNPF,
CLIENTE.IE_RG,
CLIENTE.ENDERECO,
CLIENTE.NUMERO,
CLIENTE.COMPLEMENTO,
CLIENTE.BAIRRO,
CLIENTE.CEP,
MUNICIPIO.NOME AS CIDADE,
MUNICIPIO.UF,
CLIENTE.TELEFONE1 AS TELEFONE,
CLIENTE.TELEFONE2 AS CELULAR,
CLIENTE.EMAIL,
CAST(CLIENTE.DATA_CADASTRO AS DATE) AS CADASTRO,
CLIENTE.OBSERVACAO AS OBSERVACOES
FROM CLIENTE
LEFT JOIN MUNICIPIO ON CLIENTE.CODIGO_MUNICIPIO=MUNICIPIO.MUNICIPIO_ID
WHERE CLIENTE.CLIENTE_ID>0


