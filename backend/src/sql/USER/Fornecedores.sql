SELECT
	FORNECEDOR.CODIGO AS CODIGO,
	FORNECEDOR.RAZAO AS NOME,
	FORNECEDOR.ENDERECO AS ENDERECO,
	FORNECEDOR.NUMERO AS NUMEROI,
	FORNECEDOR.BAIRRO AS BAIRRO,
	FORNECEDOR.CIDADE AS CIDADE,
	FORNECEDOR.ESTADO AS UF,
	FORNECEDOR.CEP AS CEP,
	FORNECEDOR.FAX AS FAX,
	FORNECEDOR.TELEFONE1 AS TELEFONE,
	FORNECEDOR.TELEFONE2 AS CELULAR,
	FORNECEDOR.CNPJ AS CNPJ_CNPF,
	FORNECEDOR.INSC AS IE_RG,
	FORNECEDOR.NOME AS FANTASIA,
	FORNECEDOR.EMAIL AS EMAIL,
	FORNECEDOR.COMPLEMENTO AS COMPLEMENTO
FROM FORNECEDOR
