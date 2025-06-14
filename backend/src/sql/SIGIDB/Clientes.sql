SELECT
	CLI_IDCODIGO AS CODIGO,
	CLI_NOME AS NOME,
	CLI_NOMEF AS FANTASIA,
	CASE WHEN CLIENTES.CLI_CNPJ = '' OR CLIENTES.CLI_CPF  IS NULL THEN CLIENTES.CLI_CNPJ  ELSE CLIENTES.CLI_CPF  END AS CNPJ_CNPF,
	CASE WHEN CLIENTES.CLI_RG  = '' OR CLIENTES.CLI_RG  IS NULL THEN CLIENTES.CLI_IE  ELSE CLIENTES.CLI_RG  END IE_RG,
	CLI_ENDE AS ENDERECO,
	CLI_NRO AS NUMERO,
	CLI_BAIRRO AS BAIRRO,
	CLICOD_CEP AS CEP,
	CLI_CIDADE AS CIDADE,
	CLI_UF AS UF,
	CLI_FONE AS TELEFONE,
	CLI_FAX AS FAX,
	CLI_CEL AS CELULAR,
	CLI_EMAIL AS EMAIL,
	CLI_CREDITO AS OBSERVACOES,
	CLI_PAI AS PAI,
	CLI_MAE AS MAE
FROM CLIENTES