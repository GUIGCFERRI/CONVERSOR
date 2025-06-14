SELECT
    FORNECEDORES.CODFORNECEDOR AS CODIGO,
    CIDADES.CIDADE,
    CIDADES.UF,
    FORNECEDORES.CEP,
    FORNECEDORES.RAZAOSOCIAL AS NOME,
    FORNECEDORES.FANTASIA,
    FORNECEDORES.ENDERECO,
    FORNECEDORES.NUMERO,
    FORNECEDORES.COMPLEMENTO,
    FORNECEDORES.BAIRRO,
    FORNECEDORES.CNPJ AS CNPJ_CNPF,
    FORNECEDORES.INSC AS IE_RG,
    FORNECEDORES.FONE1 AS TELEFONE,
    FORNECEDORES.FAX,
    FORNECEDORES.EMAIL,
    FORNECEDORES.CONTATO,
    FORNECEDORES.CELULAR
FROM FORNECEDORES
LEFT JOIN CIDADES ON FORNECEDORES.CODCIDADE = CIDADES.CODCIDADE
