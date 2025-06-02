SELECT
    F.CODIGO AS CODIGO,
    F.FORNECEDOR AS NOME,
    F.FOR_FANTASIA AS FANTASIA,
    F.CONTATO AS CONTATO,
    F.NUMCNPJ AS CNPJ_CNPF,
    F.NUMIEST AS IE_RG,
    F.ENDERECO AS ENDERECO,
    F.COMPLEMENTO AS COMPLEMENTO,
    F.FOR_NUMERO AS NUMERO,
    F.BAIRRO AS BAIRRO,
    F.CIDADE AS CIDADE,
    F.UF AS UF,
    replace(F.CEP,'-','') AS CEP,
    replace(replace(replace(replace(F.TELEFONE,'(',''),')',''),' ',' '),'-','')AS TELEFONE,
    replace(replace(replace(replace(F.FAX,'(',''),')',''),' ',' '),'-','')AS FAX,
    F.MAIL AS EMAIL,
    F.OBSERVACAO AS OBSERVACOES
FROM SMFORNECEDOR F
