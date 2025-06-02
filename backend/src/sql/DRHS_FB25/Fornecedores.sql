SELECT
    CODIGO AS CODIGO,
    NOME AS NOME,
    NOMEFANTASIA AS FANTASIA,
    case when CNPJ = '' or CNPJ is null then CPF else CNPJ END as CNPJ_CNPF,
    case when RG = '' or RG is null then CCE else RG END as IE_RG,
    IM AS IM,
    RUA AS ENDERECO,
    NUMERO AS NUMERO,
    COMPLEMENTO AS COMPLEMENTO,
    BAIRRO AS BAIRRO,
    MUNICIPIO AS CIDADE,
    UF AS UF,
    CEP AS CEP,
    replace(FONECOM,'(  )      -','') AS TELEFONE,
    replace(FONECEL,'(  )      -','') AS CELULAR,
    replace(FONEFAX,'(  )      -','') AS FAX,
    EMAIL AS EMAIL,
    OBS AS OBSERVACOES,
    case when ATIVO = 'S' then 'Ativo' else 'Inativo' end as situacao
FROM PESSOASEMPRESAS
WHERE FORNECEDORES = 'S' ----FORNECEDORES
