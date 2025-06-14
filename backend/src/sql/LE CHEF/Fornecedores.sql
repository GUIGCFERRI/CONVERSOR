SELECT
    CADASTRO.ID_CADASTRO AS CODIGO,
    CADASTRO.RAZAO AS NOME,
    CADASTRO.FANTASIA AS FANTASIA,
    CADASTRO.CONTATO AS CONTATO,
    CADASTRO.CGC AS CNPJ_CNPF,
    CADASTRO.IE AS IE_RG,
    CADASTRO.ENDER AS ENDERECO,
    CADASTRO.NUMERO AS NUMERO,
    CADASTRO.BAIRRO AS BAIRRO,
    CADASTRO.COMPLE AS COMPLEMENTO,
    CADASTRO.CEP AS CEP,
    CADASTRO.CIDADE AS CIDADE,
    CADASTRO.UF AS UF,
    CADASTRO.FONE AS TELEFONE,
    CADASTRO.CELULAR AS CELULAR,
    CADASTRO.FAX AS FAX,
    CADASTRO.EMAIL AS EMAIL,
    CADASTRO.OBS AS OBSERVACOES
FROM CADASTRO
WHERE CADASTRO_ = 'Fornecedor' AND CADASTRO.ID_CADASTRO <> '000000' or cadastro_ = 'Representante' or cadastro_ = 'Cliente/Fornecedor'
