SELECT
    CODIGO,
    NOME,
    APELIDO AS FANTASIA,
    ENDERECO,
    BAIRRO,
    CIDADE,
    CEP,
    UF,
    TELEFONE,
    COALESCE(INSCRICAO, '') || COALESCE(IDENTIDADE, '') AS IE_RG,
    COALESCE(CNPJ, '') || COALESCE(CPF, '') AS CNPJ_CNPF,
    NUM_END AS NUMERO,
    EMAIL
FROM CLIENTES
