SELECT PESSOAS.COD_PESSOA AS CODIGO,
PESSOAS.PESSOA AS NOME,
PESSOAS.FANTASIA AS FANTASIA,
PESSOAS.ENDER AS ENDERECO,
PESSOAS.ENDER_NUM AS NUMERO,
PESSOAS.COMPLEMENTO,
PESSOAS.BAIRRO,
PESSOAS.CIDADE,
PESSOAS.ESTADO AS UF,
PESSOAS.CEP,
PESSOAS.CPF_CNPJ AS CNPJ_CNPF,
PESSOAS.RG AS IE_RG,
PESSOAS.EMAIL,
PESSOAS.TEL1 AS TELEFONE,
PESSOAS.CEL AS CELULAR,
PESSOAS.FAX
FROM PESSOAS
WHERE PESSOAS.CLIENTE='S' AND PESSOAS.COD_PESSOA>0


