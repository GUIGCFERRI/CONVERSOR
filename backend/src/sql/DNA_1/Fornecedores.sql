SELECT
    FORNECEDOR.FORNECEDOR AS CODIGO,
    FORNECEDOR.NOME AS NOME,
    FORNECEDOR.FANTASIA AS FANTASIA,
    FORNECEDOR.CONTATO AS CONTATO,
    FORNECEDOR.CNPJCPF AS CNPJ_CNPF,
    FORNECEDOR.IERG AS IE_RG,
    FORNECEDOR.ENDERECO AS ENDERECO,
    FORNECEDOR.NUMERO AS NUMERO,
    FORNECEDOR.COMPLEMENTO AS COMPLEMENTO,
    BAIRRO.NOME AS BAIRRO,
    CIDADE.NOME AS CIDADE,
    CIDADE.UF AS UF,
    FORNECEDOR.CEP AS CEP,
    FORNECEDOR.EMAIL AS EMAIL,
    FORNECEDOR.TELEFONE1 AS TELEFONE,
    FORNECEDOR.TELEFONE2 AS CELULAR,
    FORNECEDOR.OBS AS OBSERVACOES
FROM FORNECEDOR
LEFT JOIN CIDADE ON CIDADE.CIDADE = FORNECEDOR.CIDADE
LEFT JOIN BAIRRO ON BAIRRO.BAIRRO = FORNECEDOR.BAIRRO
