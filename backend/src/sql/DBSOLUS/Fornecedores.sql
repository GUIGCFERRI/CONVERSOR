SELECT 
  CODFORN as CODIGO
, RAZAOSOCIAL as NOME
, FANTASIA
,case when REPLACE(replace(CPF,'-',''),'.','') = '' or REPLACE(replace(CPF,'-',''),'.','') is null then REPLACE (REPLACE(replace(CNPJ,'-',''),'.',''), '/','')  else REPLACE(replace(CPF,'-',''),'.','') END AS CNPJ_CNPF
,case when RG = '' or RG is null then IE else RG END AS IE_RG
, ENDERECO
, BAIRRO
, CEP
, CIDADE
, ESTADO as UF
, EMAIL
, FONE as TELEFONE
, FAX
, OBS as OBSERVACOES
, CONTATO
, NRCASA as NUMERO
FROM dbsolus.dbo.CDFORNECEDOR
