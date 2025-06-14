SELECT
	C.T001_CODIGO_CLIENTE AS PERSONAL1,
	C.T001_DATA_CADASTRO AS CADASTRO,
	C.T001_NOME_CLIENTE AS NOME,
	C.T001_NOME_FANTASIA AS FANTASIA,
	C.T001_EMAIL AS EMAIL,
	C.T001_LIMITE_CREDITO AS LIMITE_CREDITO,
	CONCAT (C.T001_OBSERVACOES,' - ',C.T001_OBS_CREDITO) AS OBSERVACOES,
	C.T001_DATA_ANIVERSARIO AS NASCIMENTO,
	C.T001_ENDERECO AS ENDERECO,
	C.T001_BAIRRO AS BAIRRO,
	C.T001_CIDADE AS CIDADE,
	CONCAT (C.T001_PONTO_DE_REFERENCIA,' - ',C.T001_COMPLEMENTO) AS COMPLEMENTO,
	C.T001_CEP AS CEP,
	C.T001_NUMERO_NFE AS NUMERO,
	CASE WHEN C.T001_CPF = '' OR C.T001_CPF IS NULL THEN C.T001_CNPJ ELSE C.T001_CPF END AS CNPJ_CNPF,
	CASE WHEN C.T001_RG = '' OR C.T001_RG IS NULL THEN C.T001_INSC_ESTADUAL ELSE C.T001_RG END AS IE_RG,
	C.T001_SEXO AS SEXO,
	C.T001_NOME_DO_CONTATO AS CONTATO,
	C.T001_TELEFONE_01 AS TELEFONE,
	C.T001_TELEFONE_02 AS FAX,
--	C.T001_FAX AS FAX,
	C.T001_CELULAR AS CELULAR,
	C.T001_ID_LIMITE_CREDITO AS LIMITE_CREDITO,
	C.T001_CEP_COB AS COB_CEP,
	C.T001_ENDERECO_COB AS COB_ENDERECO,
	C.T001_BAIRRO_COB AS COB_BAIRRO,
	C.T001_CIDADE_COB AS COB_CIDADE,	
	CASE
		C.T001_ID_CONTRIBUINTE_ICMS WHEN '1' THEN 'C'
		WHEN '2' THEN 'I'
		WHEN '9' THEN 'N'
	END AS SITUACAO,
	C.T001_NOME_MAE AS MAE,
	ES.T050_SIGLA_UF AS UF,
	EC.T050_SIGLA_UF AS COB_UF
FROM
	GCOTB001_CLIENTE C
LEFT JOIN GCOTB050_ESTADO ES ON ES.T050_CODIGO_ESTADO = C.T001_CODIGO_ESTADO_T050 
LEFT JOIN GCOTB050_ESTADO EC ON EC.T050_CODIGO_ESTADO = C.T001_CODIGO_UF_COB_T050 
--WHERE T001_LOJA_T078 = '1'	