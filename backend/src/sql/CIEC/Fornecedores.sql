SELECT
    FOR_CODIGO AS CODIGO,
    FOR_RAZAO AS NOME,
    FOR_FANTA AS FANTASIA,
    FOR_ENDERECO AS ENDERECO,
    FOR_COMPLEM AS COMPLEMENTO,
    FOR_BAIRRO AS BAIRRO,
    FOR_CIDADE AS CIDADE,
    replace (replace(FOR_CEP,'-',''),'.','')  AS CEP,
    FOR_ESTADO AS UF,
    FOR_EMAIL AS EMAIL,
    replace (replace(FOR_FONE,'/',''),'-','') AS TELEFONE,
    FOR_FAX AS FAX,
    FOR_IERG AS IE_RG,
    replace (replace (replace(FOR_CNPJ,'/',''),'-',''),'.','')  AS CNPJ_CNPF,
    FOR_CONTATO AS CONTATO,
    FOR_OBSERVACAO AS OBSERVACOES,
    FOR_NUMERO AS NUMERO
FROM FORNECEDOR