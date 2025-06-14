SELECT
  F.CODIGO
, F.RAZAO_SOCIAL AS NOME
, F.NOME AS FANTASIA
, F.CGC AS CNPJ_CNPF
, F.IE AS IE_RG
, F.FONE AS TELEFONE
, F.EMAIL
, F.CONTATO_RESP AS CONTATO
, F.RUA AS ENDERECO
, F.BAIRRO
, F.NUMERO
, CI.NOME AS CIDADE
, CI.UF
, CI.CEP
FROM FORNECEDOR F
LEFT JOIN CIDADE CI ON CI.CODIGO = F.CODCID
