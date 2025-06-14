SELECT --FORN.[FOR_CODIGO] AS CODIGO
       FORN.[FOR_NOME] AS NOME
      ,FORN.[FOR_CGC] AS CNPJ_CNPF
      ,FORN.[FOR_INSCRICAO] AS IE_RG
      ,FORN.[FOR_CONTATO] AS CONTATO
      ,FORN.[FOR_TELEFONE] AS TELEFONE
      ,FORN.[FOR_FAX] AS FAX
      ,FORN.[FOR_OBSERVACAO] AS OBSERVACOES
      ,FORN.[FOR_FANTASIA] AS FANTASIA
      ,FORN.[FOR_EMAIL] AS EMAIL
      ,FORN.[FOR_TELEFONE2] AS CELULAR
	  ,ENDE.[END_CEP] AS CEP
	  ,ENDE.[END_ENDERECO] AS ENDERECO
	  ,ENDE.[END_NUMERO] AS NUMERO
	  ,ENDE.[END_COMPLEMENTO] AS COMPLEMENTO
	  ,ENDE.[END_BAIRRO] AS BAIRRO
	  ,ENDE.[END_CIDADE] AS CIDADE 
	  ,ENDE.[END_UF] AS UF
  FROM [MARTINSPADARIA11242].[dbo].[FORNECEDORES] AS FORN
  LEFT JOIN [ENDERECO] ENDE ON [END_CODIGO] = FORN.FOR_CHAVE