SELECT 
  CODCLI as CODIGO
, RAZAOSOCIAL as NOME
, FANTASIA
,case when REPLACE(replace(CPF,'-',''),'.','') = '' or REPLACE(replace(CPF,'-',''),'.','') is null then REPLACE (REPLACE(replace(CNPJ,'-',''),'.',''), '/','')  else REPLACE(replace(CPF,'-',''),'.','') END AS CNPJ_CNPF
,case when RG = '' or RG is null then IE else RG END AS IE_RG
, ENDERECO
, COMPLEMENTO
, BAIRRO
, CEP
, CIDADE
, ESTADO as UF
, EMAIL
, FONE as TELEFONE
, CELULAR
, FAX
, OBS as OBSERVACOES
, CONTATO
, DTCADAST as CADASTRO
, DTNASC as NASCIMENTO
, LIMITECRED as LIMITE_CREDITO
, NRCASA as NUMERO
FROM dbsolus.dbo.CDCLIENTES