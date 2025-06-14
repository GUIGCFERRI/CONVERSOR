SELECT
    FORNECEDOR.IDFORNECEDOR AS CODIGO,
    FORNECEDOR.RAZAOSOCIAL AS NOME,
    FORNECEDOR.NOMEFANTASIA AS FANTASIA,
    FORNECEDOR.CONTATO AS CONTATO,
    FORNECEDOR.CGC AS CNPJ_CNPF,
    FORNECEDOR.INSCEST AS IE_RG,
    FORNECEDOR.NU_INSCMUNICIPAL AS IM,
    FORNECEDOR.ENDERECO AS ENDERECO,
    FORNECEDOR.NUMERO AS NUMERO,
    FORNECEDOR.COMPL AS COMPLEMENTO,
    FORNECEDOR.BAIRRO AS BAIRRO,
    FORNECEDOR.CIDADE AS CIDADE,
    FORNECEDOR.UF AS UF,
    FORNECEDOR.CEP AS CEP,
    FORNECEDOR.TELEFONE AS TELEFONE,
    FORNECEDOR.FAX AS FAX,
    FORNECEDOR.CELULAR AS CELULAR,
    FORNECEDOR.EMAIL AS EMAIL,
    FORNECEDOR.OBS AS OBSERVACOES
FROM FORNECEDOR
