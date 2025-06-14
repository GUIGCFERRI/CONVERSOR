SELECT
    TBPESSOA.PES_CODIGO AS CODIGO,
    TBPESSOA.PES_NOME AS NOME,
    TBPESSOA.PES_FANTASIA AS FANTASIA,
    TBPESSOA.PES_CNPJ AS CNPJ_CNPF,
    TBPESSOA.PES_INSCESTAD AS IE_RG,
    TBPESSOA.PES_ENDERECO AS ENDERECO,
    TBPESSOA.PES_NUMRUA AS NUMERO,
    TBPESSOA.PES_COMPLEMENTO AS COMPLEMENTO,
    TBPESSOA.PES_BAIRRO AS BAIRRO,
    TBCIDADE.CID_NOME AS CIDADE,
    TBCIDADE.CID_UF AS UF,
    TBPESSOA.PES_CEP AS CEP,
    TBPESSOA.PES_CONTATO AS CONTATO,
    TBPESSOA.PES_EMAIL AS EMAIL,
    TBPESSOA.PES_CELULAR AS CELULAR,
    TBPESSOA.PES_TELEFONE1 AS TELEFONE
FROM TBPESSOA
LEFT JOIN TBCIDADE ON TBPESSOA.PES_CODCIDADE = TBCIDADE.CID_CODIGO
WHERE TBPESSOA.PES_TIPO <> 'C'
