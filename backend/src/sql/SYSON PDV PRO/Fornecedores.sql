SELECT 
  ID AS CODIGO
, REZAO_SOCIAL AS NOME
, FANTASIA
, CONCAT (IFNULL(VENDEDOR,''),' Tel.: ',IFNULL(TEL_VENDEDOR,'')) AS CONTATO
, CPF_CNPJ AS CNPJ_CNPF
, ENDERECO
, BAIRRO
, CIDADE
, CEP
, TELEFONE
, CELULAR
, EMAIL
, OBSERVACAO AS OBSERVACOES
FROM CADFORNECEDOR
