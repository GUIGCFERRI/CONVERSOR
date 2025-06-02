SELECT
	f."FORCod" AS codigo,
	f."FORRazao" AS nome,
	f."FORFant" AS fantasia,
	f."FOREnd" AS endereco,
	f.FORNUMERO AS numero,
	f.FORCOMPLEMENTO AS complemento,	
	f."FORBairro" AS bairro,
	f."FORCep" AS cep,
	f."FORFone1" AS telefone,
	f."FORFone2" AS celular,
	f."FORFax" AS fax,
	f."FORContato" AS contato,
	f.FORIE AS IE_RG,
	case when f.FORCPF = '' or f.FORCPF is null then f.FORCNPJ else f.FORCPF END AS CNPJ_CNPF,
	f.FORIM AS im,	
	f."FOREmail" AS email,
	f.FOROBS AS observacoes,
--	f.FOROBSMEMO AS observacoes,
	ci."CIDNome" AS cidade,
	ci.CIDUF AS uf
FROM
	RET007 f
LEFT JOIN RET501 ci ON ci."CIDCod" = f."CIDCod" 
WHERE f."FORCod" <> '000000' AND f."FORCod" <> '999999'
