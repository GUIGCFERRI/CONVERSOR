SELECT FORNECEDORES.ID_CLIENTE AS CODIGO,
FORNECEDORES.NOME,
FORNECEDORES.TELEFONE,
FORNECEDORES.EMAIL,
FORNECEDORES.CPF_CNPJ AS CNPJ_CNPF,
FORNECEDORES.RG AS IE_RG,
FORNECEDORES.ENDERECO,
CIDADES.NOME_CIDADE AS CIDADE,
ESTADOS.SIGLA AS UF,
FORNECEDORES.FAX,
FORNECEDORES.CEP,
FORNECEDORES.BAIRRO,
FORNECEDORES.PESSOA_CONTATO AS CONTATO,
FORNECEDORES.OBS AS OBSERVACOES
FROM FORNECEDORES
LEFT JOIN CIDADES ON FORNECEDORES.ID_CIDADE = CIDADES.ID_CIDADE
LEFT JOIN ESTADOS ON CIDADES.ID_ESTADO = ESTADOS.ID_ESTADO
