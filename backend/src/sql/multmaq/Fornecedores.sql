SELECT
	IDTERCEIRO AS CODIGO,
	NOME,
	FANTASIA,
	CONTATO,
	ENDERECO,
	NUMERO,
	COMPLEMENTO,
	REFERENCIA AS PERSONAL1,
	BAIRRO,
	CEP,
	CIDADE,
	UF,
	TELEFONE1 AS TELEFONE,
	TELEFONE2 AS CELULAR,
	TELEFONE3 AS FAX,
	CPFCGC AS CNPJ_CNPF,
	CASE WHEN IDENTIDADE = '' OR IDENTIDADE IS NULL THEN INSCEST ELSE IDENTIDADE END AS IE_RG,
	INSCMUN AS IM,
	CASE WHEN EMAIL = '' OR EMAIL IS NULL THEN EMAILNFE ELSE EMAIL END AS EMAIL,
	OBSERVACOES
FROM
	GER_TER
WHERE IDTIPOTER = '1'	
