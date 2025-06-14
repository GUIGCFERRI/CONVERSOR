SELECT
	C.ID AS CODIGO,
	C.NRS AS NOME,
	C.FN AS FANTASIA,
	C.CS AS CNPJ_CNPF,
	C.RGIE AS IE_RG,
	CASE C.CNTRIB 
	WHEN '1' THEN 'C'
	WHEN '2' THEN 'I'
	WHEN '9' THEN 'N'
	END AS INDIEDEST,
	C.SX AS SEXO,
	C.FONE AS TELEFONE,
	C.CELL1 AS CELULAR,
	C.CELL2 AS FAX,
	C.EMAIL,
	C.NUM AS NUMERO,
	C.CPL AS COMPLEMENTO,
	C.DTNF AS NASCIMENTO,
	C.CRD AS LIMITE_CREDITO,
	C.LMT AS PERSONAL1,
	C.DTCA AS CADASTRO,
	P.PS AS PROFISSAO,
	CI.CITY AS CIDADE,
	CI.UF AS UF,
	B.B AS BAIRRO,
	R.RUA AS ENDERECO,
	R.CEP 
FROM
	CLI C
LEFT JOIN PRSG P ON P.ID = C.IDPRF 
LEFT JOIN ENDR E ON E.ID = C.IDENDR 
LEFT JOIN CITS CI ON CI.ID = E.IDC 
LEFT JOIN BAI B ON B.ID = E.IDB 
LEFT JOIN RUAS R ON R.ID = E.IDR 