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
, ENDCOB AS COB_ENDERECO
, NREND2 AS COB_NUMERO
, BAIRROCOB AS COB_BAIRRO
, CEPCOB AS COB_CEP
, CIDADECOB AS COB_CIDADE
, ESTADOCOB AS COB_UF
, OBS AS OBSERVACOES
, CADASTRADO_EM AS CADASTRO 
, LIMITE AS LIMITE_CREDITO
, E_MAIL AS EMAIL
FROM CADASTRO
WHERE TIPO = 'C' AND COD_CADASTRO <> '0'
-- WHERE EMPRESA = '0' --- AJUSTAR CASO UTILIZE MULTILOJAS
