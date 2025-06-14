SELECT
	ID_EMPRESA AS CODIGO,
	"NOME",
	NOME_FANTASIA AS FANTASIA,
	CNPJ_CPF AS CNPJ_CNPF,
	IE_RG,
	IM,
	ENDERECO,
	ENDERECO_COMPLEMENTO AS COMPLEMENTO,
	ENDERECO_NUMERO AS NUMERO,
	"BAIRRO",
	CEP,
	"TELEFONE",
	TELEFONE2 AS FAX,
	CELULAR,
	CONTATO,	
	"EMAIL",
	CIDADE,
	ESTADO AS UF,
	INSCRICAO_SUFRAMA AS SUFRAMA,
	ESTADO_CIVIL AS EST_CIVIL,
	CONJUGE,
	PROFISSAO,
	SEXO,
    COALESCE(DATA_CADASTRO, CURRENT_DATE) AS CADASTRO,
	DATA_NASCIMENTO AS NASCIMENTO,
	"OBSERVACAO" AS OBSERVACOES,
	LIMITE_CREDITO
FROM
	EMPRESAS
WHERE CLIENTE = 'S'
