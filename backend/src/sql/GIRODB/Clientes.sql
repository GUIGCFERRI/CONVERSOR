SELECT
    NCODIGO AS CODIGO,
    CPFCNPJ AS CNPJ_CNPF,
    RAZAO AS NOME,
    FANTASIA AS FANTASIA,
    CONTATONOME AS CONTATO,
    ENDERECO,
    NUMERO,
    COMPLEMENTO,
    BAIRRO,
    CEP,
    CIDADE,
    UF,
    COALESCE (DDD,'')||COALESCE(TEL1,'') AS TELEFONE,
    EMAIL,
    NUMRG AS IE_RG
FROM CLIENTES
