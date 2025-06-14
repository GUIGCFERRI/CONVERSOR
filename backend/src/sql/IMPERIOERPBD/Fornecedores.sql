SELECT PARTICIPANTE.ID AS CODIGO,
PARTICIPANTE.NOME_RAZAOSOCIAL AS NOME,
PARTICIPANTE.APELIDO_FANTASIA AS FANTASIA,
PARTICIPANTE.CONTATO,
PARTICIPANTE.EMAIL,
SUBSTRING (PARTICIPANTE.CPF_CNPJ FROM 1 FOR 18)AS CNPJ_CNPF,
PARTICIPANTE.INSCRICAO_ESTADUAL AS IE_RG,
PARTICIPANTE.LOGRADOURO AS ENDERECO,
PARTICIPANTE.NUMERO,
PARTICIPANTE.COMPLEMENTO,
PARTICIPANTE.CEP,
PARTICIPANTE.BAIRRO,
CIDADE.DESCRICAO AS CIDADE,
ESTADO.DESCRICAO AS UF,
PARTICIPANTE.FONE1 AS TELEFONE,
PARTICIPANTE.CELULAR
FROM PARTICIPANTE
LEFT JOIN CIDADE ON PARTICIPANTE.CIDADE_ID=CIDADE.ID
LEFT JOIN ESTADO ON PARTICIPANTE.UF_ID=ESTADO.ID
WHERE PARTICIPANTE.TIPO_PARTICIPANTE='F'



