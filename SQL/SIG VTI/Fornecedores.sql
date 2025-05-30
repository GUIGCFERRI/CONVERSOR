SELECT 
codigo_for AS CODIGO, 
cgccpf_for AS CNPJ_CNPF, 
nome_for AS NOME, 
ender_for AS ENDERECO, 
numer_for AS NUMERO, 
compl_for AS COMPLEMENTO, 
bairro_for AS BAIRRO, 
cidade_for AS CIDADE, 
cep_for AS CEP, 
estado_for AS UF,  
CONCAT (ddd_for,' ', telef_for) AS TELEFONE,  
email_for AS EMAIL, 
inscr_for AS IE_RG 
FROM F001.dbo.AFORNEGE
