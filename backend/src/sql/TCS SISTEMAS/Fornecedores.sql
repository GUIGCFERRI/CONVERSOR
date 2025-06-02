SELECT
    F.IDFORNECEDOR AS CODIGO,
    F.RAZAO AS NOME,
    F.FANTASIA AS FANTASIA,
    F.CONTATO AS CONTATO,
    replace (replace (replace(F.CGCMF,'/',''),'.',''),'-','') AS CNPJ_CNPF,
    F.CGCICM AS IE_RG,
    F.ENDERECO AS ENDERECO,
    F.END_NRO AS NUMERO,
    F.END_COMPLEMENTO AS COMPLEMENTO,
    B.DESCRICAO AS BAIRRO,
    CD.DESCRICAO AS CIDADE,
    CD.ESTADO AS UF,
    replace(F.CEP,'-','') AS CEP,
    replace (replace (replace (replace(F.FONE,'(',''),')',''),'-',''),' ','') AS TELEFONE,
    replace (replace (replace (replace(F.FAX,'(',''),')',''),'-',''),' ','') AS FAX,
    F.EMAIL AS EMAIL,
    case when F.SITUACAO = 'A' then 'Ativo' else 'Inativo' end as SITUACAO
FROM FORNECEDORES AS F
LEFT JOIN BAIRROS B ON F.BAIRRO = B.IDBAIRRO
LEFT JOIN CIDADES CD ON F.CIDADE = CD.IDCIDADE