SELECT 
  C.COD_CLIFOR AS CODIGO
, C.NOME
, C.FANTASIA
, C.CGC AS CNPJ_CNPF
, C.INSC_EST AS IE_RG
, C.CIDADE
, C.ESTADO AS UF
, C.COD_CEPEND AS CEP
, C.ENDERECO
, C.COMPLEMENTO
, C.BAIRRO
, C.NUMERO
, C.DDDFAX || FAX AS FAX
, C.DDDFONE1 || C.TELEFONE1 AS TELEFONE
, C.DDDFONE2 || C.TELEFONE2 AS CELULAR
, C.NOM_CONTAT AS CONTATO
, C.OBSERVACAO AS OBSERVACOES
, C.E_MAIL AS EMAIL
FROM CLIFOR C
WHERE C.SISTEMA = '1'
