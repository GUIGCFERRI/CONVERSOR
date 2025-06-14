SELECT 
  ID AS CODIGO
, NOME
, CASE SEXO WHEN 'FEMININO' THEN 'F' WHEN 'MASCULINO' THEN 'M' END AS SEXO
, ESTADOCIVIL AS EST_CIVIL
, CPF AS CNPJ_CNPF
, RG AS IE_RG
, STR_TO_DATE(DATANACIMENTO, '%d/%m/%Y') AS NASCIMENTO
, ENDERECO
, BAIRRO
, CIDADE
, UF
, CEP
, TELEFONE
, CELULAR
, EMAIL
, OBSERVACAO AS OBSERVACOES
, LIMITECREDITO AS LIMITE_CREDITO
FROM CADCLIENTE
