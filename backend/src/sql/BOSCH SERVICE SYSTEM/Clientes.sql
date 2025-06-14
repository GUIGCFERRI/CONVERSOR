SELECT
    ICODCLI AS CODIGO,
    CNOME AS NOME,
    CNOMEFAN AS FANTASIA,
    CRGINS AS IE_RG,
    CCPFCNPJ AS CNPJ_CNPF,
    CINSMUN AS IM,
    CENDERECORES AS ENDERECO,
    CNUMERORES AS NUMERO,
    CBAIRRORES AS BAIRRO,
    CCOMPLERES AS COMPLEMENTO,
    CCIDADERES AS CIDADE,
    CESTADORES AS UF,
    CCEPRES AS CEP,
    CFONE1RES AS TELEFONE,
    CFONE2RES AS CELULAR,
    CFAX1RES AS FAX,
    CEMAIL AS EMAIL,
    CESTCIV AS EST_CIVIL,
    CNOMEPAI AS PAI,
    CNOMEMAE AS MAE,
    CNOMCONJ AS CONJUGE, 
    VLIMITE AS LIMITE_CREDITO,
    CSEXO AS SEXO,
    case when CSITUACAO = 'A' then 'Ativo' else 'Inativo' end as SITUACAO,
    DDATNAS AS DATA_NASCIMENTO,
    DDATCAD AS CADASTRO
FROM CADCLI