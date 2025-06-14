SELECT
	CODIGOPARCEIRO AS CODIGO,
--	CLIENTEFORNECEDOR,
	DESCRICAO AS NOME,
	NOMEFANTASIA AS FANTASIA,	
	CONTATO,
	CPFCGC CNPJ_CNPF,
	case when RG = '' or RG is null then INSCRICAOESTADUAL else RG END AS IE_RG,
	INSCRICAOMUNICIPAL AS IM,	
	NOMEPAI AS PAI,
	NOMEMAE AS MAE,
	CAST(DATANASCIMENTO AS DATE) AS NASCIMENTO,
	CAST(DATACADASTRO AS DATE) AS CADASTRO,
	ENDERECO,
	NUMEROLOGRADOURO AS NUMERO,
	COMPLEMENTOLOGRADOURO AS COMPLEMENTO,	
	BAIRRO,
	CIDADE,
	ESTADO AS UF,
	CEP,
	FONE1 AS TELEFONE,
	FONE2 AS CELULAR,
	FAX,
	LIMITECREDITO AS LIMITE_CREDITO,
	ESTADOCIVIL AS EST_CIVIL,
	CONJUGE,
	LOCALTRABALHO AS LOCTRA,
	OBSERVACAO AS OBSERVACOES,
	EMAIL
FROM
	CADPARCEIRO
