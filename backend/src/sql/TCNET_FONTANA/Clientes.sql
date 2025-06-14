SELECT
    --CLIENTE.CODCADASTRO AS CODIGO,
    CADASTRO.CPFCNPJ AS CNPJ_CNPF,
    CADASTRO.NOME AS NOME,
    CADASTRO.ENDERECO,
    CADASTRO.BAIRRO,
    CIDADE.NOME AS CIDADE,
    CIDADE.CODESTADO AS UF,
    CADASTRO.CEP,
    CADASTRO.FANTASIA,
    CADASTRO.EMAIL,
    CADASTRO.FONE AS TELEFONE,
    CADASTRO.CELULAR,
    CADASTRO.RGINSC AS IE_RG,
    CADASTRO.NUMERO,
    CADASTRO.COMPLEMENTO
FROM CLIENTE
LEFT JOIN CADASTRO ON CLIENTE.CODCADASTRO = CADASTRO.CODIGO
LEFT JOIN CIDADE ON CADASTRO.CODCIDADE = CIDADE.CODIGO
