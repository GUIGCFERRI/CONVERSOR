SELECT
	F.CODIGO,
	F.RAZAO_SOCIAL AS NOME,
	F.NOME_FANTASIA AS FANTASIA,
	F.ENDERECO,
	F.COMPLEMENTO_ENDERECO AS COMPLEMENTO,	
	F.NUMERO,	
	F.BAIRRO,
	F.CEP,
	F.TELEFONE,
	F.FAX,
	F.EMAIL,
	F.CGC_CPF AS CNPJ_CNPF,
	F.INSCRICAO_ESTADUAL AS IE_RG,
	F.INSCRICAO_MUNICIPAL AS IM,
	F.OBSERVACAO AS OBSERVACOES,
	CI.NOME AS CIDADE,
	E.SIGLA AS UF
FROM
	FORNECEDOR F
LEFT JOIN CIDADE CI ON CI.CODIGO = F.CODIGO_CIDADE  	
LEFT JOIN ESTADO E ON E.CODIGO = CI.CODIGO_ESTADO 
