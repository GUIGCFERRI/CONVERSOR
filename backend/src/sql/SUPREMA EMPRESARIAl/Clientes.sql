SELECT
    FORNECEDOR.FORNECEDOR AS CODIGO,
    FORNECEDOR.NOME AS NOME,
    FORNECEDOR.CONTATO AS CONTATO,
    FORNECEDOR.CPF AS CNPJ_CNPF,
    FORNECEDOR.IE AS IE_RG,
    FORNECEDOR.IM AS IM,
    FORNECEDOR.ENDERECO AS ENDERECO,
    FORNECEDOR.COMPLEMENTO AS COMPLEMENTO,
    FORNECEDOR.NRO AS NUMERO,
    BAIRRO.NOME AS BAIRRO,
    CIDADE.NOME AS CIDADE,
    FORNECEDOR.CEP AS CEP,
    CIDADE.UF AS UF,
    FORNECEDOR.EMAIL AS EMAIL,
    FORNECEDOR.TELEFONE AS TELEFONE,
    FORNECEDOR.OBS AS OBSERVACOES
FROM FORNECEDOR
LEFT JOIN BAIRRO ON BAIRRO.BAIRRO = FORNECEDOR.BAIRRO
LEFT JOIN CIDADE ON CIDADE.CIDADE = FORNECEDOR.CIDADE
