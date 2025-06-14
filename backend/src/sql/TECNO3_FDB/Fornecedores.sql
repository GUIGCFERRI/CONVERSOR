SELECT
    PESSOAS.IDPESSOAS AS CODIGO,
    PESSOAS.NOME AS NOME,
    PESSOAS.NOMEFANTASIA AS FANTASIA,
    PESSOAS.CPFCNPJ AS CNPJ_CNPF,
    case when PESSOAS.INSCRICAOMUNICIPAL = '' or PESSOAS.INSCRICAOMUNICIPAL is null then PESSOAS.RGNUMERO else PESSOAS.INSCRICAOMUNICIPAL END AS IE_RG,
    PESSOAS.INSCRICAOESTADUAL AS IM,
    PESSOASENDERECO.LOGRADOURO AS ENDERECO,
    PESSOASENDERECO.NUMERO AS NUMERO,
    PESSOASENDERECO.COMPLEMENTO AS COMPLEMENTO,
    PESSOASENDERECO.BAIRRO AS BAIRRO,
    CIDADE.cid_desc AS cidade, 
    ESTADO.est_sigla AS UF,
    PESSOASENDERECO.CEP AS CEP,
    replace (PESSOAS.DDDFONE1 ||' - '|| PESSOAS.FONE1, '-', '') AS TELEFONE,
    replace (PESSOAS.DDDFONE2 ||' - '|| PESSOAS.FONE2, '-', '') AS CELULAR,
    replace (PESSOAS.DDDFAX ||' - '|| PESSOAS.FAX, '-', '') AS FAX
FROM PESSOAS
LEFT JOIN PESSOASENDERECO ON PESSOASENDERECO.IDPESSOAS = PESSOAS.IDPESSOAS
LEFT JOIN CIDADE ON CIDADE.CID_ID = PESSOASENDERECO.IDCIDADES
LEFT JOIN ESTADO ON ESTADO.est_id = CIDADE.est_id
WHERE PESSOAS.TIPOPESSOA = 'FOR' AND PESSOASENDERECO.tipoendereco = 'P'
--GROUP BY 1,2,3,4,5,6,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23