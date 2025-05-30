SELECT
    COD_CLIFOR AS CODIGO,
    NOME AS NOME,
    FANTASIA AS FANTASIA,
    NOM_CONTAT AS CONTATO,
    CGC AS CNPJ_CNPF,
    INSC_EST AS IE_RG,
    ENDERECO AS ENDERECO,
    COMPLEMENTO AS COMPLEMENTO,
    BAIRRO AS BAIRRO,
    NUMERO AS NUMERO,
    CIDADE AS CIDADE,
    COD_CEPEND AS CEP, 
    ESTADO AS UF,
    replace (replace (replace(DDDFAX || FAX ,'(',''),')',''),'-','') AS FAX,
    replace (replace (replace(DDDFONE1 || TELEFONE1 ,'(',''),')',''),'-','') AS TELEFONE,
    replace (replace (replace(DDDFONE2 || TELEFONE2 ,'(',''),')',''),'-','') AS CELULAR,
    E_MAIL AS EMAIL,
    OBSERVACAO AS OBSERVACOES,
    case when ATIVO = 'S' then 'Ativo' else 'Inativo' end as SITUACAO
FROM CLIFOR
WHERE SISTEMA = '1' ----FORNECEDORES
