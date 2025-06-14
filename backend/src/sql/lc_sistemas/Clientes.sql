SELECT CLIENTE.`ID` AS CLIENTE,
CLIENTE.`CPF_CNPJ` AS CNPJ_CNPF,
CLIENTE.IE AS IE_RG,
CLIENTE.IM,
CASE CLIENTE.IE_INDICADOR 
	WHEN '1' THEN 'C'
	WHEN '2' THEN 'I'
	WHEN '9' THEN 'N'	
END AS INDIEDEST,
CLIENTE.NOME,
CLIENTE.`RAZAO_SOCIAL` AS FANTASIA,
CLIENTE.ENDERECO,
CLIENTE.REFERENCIA AS COMPLEMENTO,
CLIENTE.`NUMERO`,
CLIENTE.CEP,
CLIENTE.BAIRRO,
CLIENTE.TELEFONE,
CLIENTE.FAX,
CLIENTE.LIMITE_CREDITO,
CLIENTE.OBS AS OBSERVACOES,
CLIENTE.`EMAIL_ADI` AS EMAIL,
CLIENTE.PAI_ADI AS PAI,
CLIENTE.MAE_ADI AS MAE,
CLIENTE.ESTCIVIL_ADI AS EST_CIVIL,
CLIENTE.NASCIMENTO_ADI AS NASCIMENTO,
CLIENTE.EMPRESA AS LOCTRA,
CLIENTE.CONJUJE AS CONJUGE,
CLIENTE.DATA_CADASTRO AS CADASTRO,
CIDADES.`NOME` AS CIDADE,
`ESTADOS`.`UF`
FROM CLIENTE
LEFT JOIN CIDADES ON CLIENTE.`ID_CIDADE`=CIDADES.`ID`
LEFT JOIN ESTADOS ON CLIENTE.`ID_ESTADO`=ESTADOS.ID
