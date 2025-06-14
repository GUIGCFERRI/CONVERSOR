SELECT FORNECEDORES.NUMERO AS CODIGO,
FORNECEDORES.RAZAO_SOCIAL AS NOME,
FORNECEDORES.NOME_FANTASIA AS FANTASIA,
FORNECEDORES.INSC_ESTADUAL AS IE_RG,
FORNECEDORES.ENDERECO,
FORNECEDORES.COMPLEMENTO,
FORNECEDORES.BAIRRO,
FORNECEDORES.CIDADE,
FORNECEDORES.UF,
FORNECEDORES.CEP,
FORNECEDORES.DDD||FORNECEDORES.TELEFONE1 AS TELEFONE,
FORNECEDORES.FAX,
FORNECEDORES.CELULAR,
FORNECEDORES.CONTATO,
FORNECEDORES.OBSERVACOES,
FORNECEDORES.CNPJ AS CNPJ_CNPF,
FORNECEDORES.EMAIL,
FORNECEDORES.END_NUM AS NUMERO
FROM FORNECEDORES
