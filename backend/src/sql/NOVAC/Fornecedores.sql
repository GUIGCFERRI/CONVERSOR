SELECT
    COLABORADOR.CODCOLABORADOR AS CODIGO,
    COLABORADOR.RAZAO AS NOME,
    COLABORADOR.FANTASIA AS FANTASIA,
    COLABORADOR.CNPJ AS CNPJ_CNPF,
    COLABORADOR.INSC AS IE_RG,
    COLABORADOR.INSCMUN AS IM,
    MUNICIPIO.MUNICIPIO AS CIDADE,
    LOGRADOURO.logradouro AS ENDERECO,
    LOGRADOURO.cep AS CEP,
    BAIRRO.bairro AS BAIRRO, 
    ESTADO.SIGLA AS UF,
    COLABORADOR.FONE1 AS TELEFONE,
    COLABORADOR.FONE2 AS CELULAR,
    COLABORADOR.FONE3 AS FAX,
    COLABORADOR.EMAIL AS EMAIL,
    COLABORADOR.NUMERO AS NUMERO,
    COLABORADOR.OBS as OBSERVACOES,
    COLABORADOR.COMPLEMENTO AS COMPLEMENTO
FROM COLABORADOR
LEFT JOIN ESTADO  ON ESTADO.codestado = COLABORADOR.codestado
LEFT JOIN MUNICIPIO ON MUNICIPIO.codmunicipio = COLABORADOR.codmunicipio
LEFT JOIN BAIRRO ON BAIRRO.codbairro = COLABORADOR.codbairro
LEFT JOIN LOGRADOURO ON LOGRADOURO.codlogradouro = COLABORADOR.codlogradouro
WHERE COLABORADOR.FORNECEDOR = 'S'
