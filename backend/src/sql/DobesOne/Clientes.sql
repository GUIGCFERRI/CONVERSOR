SELECT
	c."CLICod" AS codigo,
	c."CLINome" AS nome,
	c."CLIFantasia" AS fantasia,
	c."CLIContato" AS contato,
	c."CLIEnd" AS endereco,
	c.CLINUMERO AS numero,
	c.CLICOMPLEMENTO AS complemento,	
	c."CLIBairro" AS bairro,
	c."CLICep" AS cep,
	c."CLIFone1" AS telefone,
	c."CLIFone2" AS celular,
	c."CLIFax" AS fax,
	case when c.CLICPF = '' or c.CLICPF is null then c.CLICNPJ else c.CLICPF END AS CNPJ_CNPF,
	case when c.CLIRG = '' or c.CLIRG is null then c.CLIIE else c.CLIRG END AS IE_RG,
	COALESCE(c."CLICadastro", CURRENT_DATE) AS CADASTRO,
	c."CLIEmail" AS email,
	c."CLINasc" AS nascimento,
	c."CLIPai" AS pai,
	c."CLIMae" AS mae,
	c.CLICJ AS conjuge,
	c."CLIObs" AS observacoes,
	c."CLITrab" AS LOCTRA,
	c."CLILIMCred" AS LIMITE_CREDITO,
	c.CLIULTCMP AS ULTIMA_VENDA,
	c.CLICOBENDERECO AS COB_ENDERECO,
	c.CLICOBNUMERO AS COB_NUMERO,
	c.CLICOBCEP AS COB_CEP,
	c.CLICOBCOMPLEMENTO AS COB_COMPLEMENTO,
	c.CLICOBBAIRRO AS COB_BAIRRO,
	c.CLISUFRAMA AS SUFRAMA,
	CASE c.CLIINDINSCESTADUAL when '1' THEN 'C'
	WHEN '2' THEN 'I'
	WHEN '9' THEN 'N'
	END AS INDIEDEST,
	ci."CIDNome" AS cidade,
	ci.CIDUF AS uf,
	co."CIDNome" AS COB_CIDADE,
	co.CIDUF AS COB_UF
FROM
	RET028 c
LEFT JOIN RET501 ci ON ci."CIDCod" = c."CIDCod" 
LEFT JOIN RET501 co ON co."CIDCod" = c."CIDCOD_COB" 
WHERE c."CLICod" <> '000000' AND c."CLICod" <> '999999'
