SELECT 
  CODIGO
, BAIRRO
, CELULAR
, CEP
, CIDADE
, UF
, DATA_NASC AS NASCIMENTO
, EMAIL
, ENDERECO
, PONT_REF AS COMPLEMENTO
, FAX
, NOME
, FANTASIA
, PAI
, MAE
, NUMERO
, TEL AS TELEFONE
, CASE WHEN CPF = '' OR CPF IS NULL THEN CNPJ ELSE CPF END AS CNPJ_CNPF
, INSC_RG AS IE_RG
, CONTATO
, LIMITE AS LIMITE_CREDITO
, OBSERVACAO1 AS OBSERVACOES
, CONJUGE
, PROFISSAO
FROM CLIENTE
