SELECT 
  COD_CADASTRO AS CODIGO
, RAZAO AS NOME
, FANTASIA
, CNPJ AS CNPJ_CNPF
, ESTADUAL AS IE_RG
, MUNICIPAL AS IM
, ENDERECO
, NREND1 AS NUMERO
, COMPLEMENTAR AS COMPLEMENTO
, BAIRRO
, CEP
, CIDADE
, ESTADO AS UF
, TELEFONE
, FAX
, CELULAR
, CONTATO
, OBS AS OBSERVACOES
, E_MAIL AS EMAIL
FROM CADASTRO
WHERE TIPO = 'F' AND COD_CADASTRO <> '0'
-- WHERE EMPRESA = '0' --- AJUSTAR CASO UTILIZE MULTILOJAS
