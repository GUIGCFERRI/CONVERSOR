SELECT 
--  f.NUM as CODIGO
  f.nomealuno as NOME
, f.ENDERECO as FANTASIA 
, f.CGC as CNPJ_CNPF 
, f.IE as IE_RG
, f.CLIENTE as ENDERECO
, f.Numero
, f.C60 as BAIRRO
, f.Municipio as COMPLEMENTO
, f.CROMO as UF
, f.NORMAL as CIDADE
, replace (f.LOCADORA, ".", "") as CEP
, f.C46 as TELEFONE
, f.CELULAR1 as CELULAR
, f.FERRO as FAX
, f.email
FROM fornecedor f
