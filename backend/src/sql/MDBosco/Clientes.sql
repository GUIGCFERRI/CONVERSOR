SELECT 
  CODIGO
, CNPJCPF AS CNPJ_CNPF
, RGINSCRICAO AS IE_RG
, NOME
, ENDERECO
, NUMERO
, BAIRRO
, CIDADE
, ESTADO AS UF
, TELEFONE
, FAX
, EMAIL
, CEP
, CAST (ULTIMACOMPRA AS date) AS ULTIMA_VENDA
, CAST (NASCIMENTO AS date) AS NASCIMENTO
, MAE
, CONJUGUE
, REFERENCIA_1 AS CONTATO
, TELEFONE_1 AS CELULAR
, REFERENCIA_2 PERSONAL1
, TELEFONE_2 AS PERSONAL2
, TRABALHO AS LOCTRA
, ENDERECOTRABALHO AS LOCAL
, CARGO AS PROFISSAO
, OBSERVACOES
FROM CLIENTES
WHERE tipo = 'C'
