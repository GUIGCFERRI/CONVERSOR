SELECT
    CODIGO,
    NOMECLIENTE AS NOME,
    ENDERECO,
    NUMERO,
    BAIRRO,
    CIDADE,
    CEP,
    ESTADO AS UF,
    EMAIL,
    TELEFONERES AS TELEFONE,
    CELULAR,
    COALESCE(CPF,'') || COALESCE(CNPJ,'') AS CNPJ_CNPF,
    COALESCE(RG,'') || COALESCE(INSCESTADUAL,'') AS IE_RG
FROM CADASTROCLIENTE