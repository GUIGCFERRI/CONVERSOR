SELECT
CLIENTE.ID AS CODIGO,
CLIENTE.NOME AS NOME,
CLIENTE.FANTASIA_APELIDO AS FANTASIA,
CLIENTE.CNPJ_CPF AS CNPJ_CNPF,
CLIENTE.IE_RG AS IE_RG,
CLIENTE_ENDERECO.LOGRADOURO AS ENDERECO,
CLIENTE_ENDERECO.NUMERO AS NUMERO,
CLIENTE_ENDERECO.BAIRRO AS BAIRRO,
CLIENTE_ENDERECO.CEP AS CEP,
CLIENTE_ENDERECO.CIDADE AS CIDADE,
CLIENTE_ENDERECO.FONE AS TELEFONE,
CLIENTE.EMAIL AS EMAIL
--CLIENTE.DATA_CADASTRO AS CADASTRO
FROM CLIENTE
LEFT JOIN CLIENTE_ENDERECO ON CLIENTE.ID = CLIENTE_ENDERECO.ID_CLIENTE
