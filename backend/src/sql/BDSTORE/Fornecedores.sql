SELECT 
  A.CODIGOAGENTE AS CODIGO
, A.RAZAO AS NOME
, A.FANTASIA
, A.RESPONSAVEL AS CONTATO
, A.CNPJ_CPF AS CNPJ_CNPF
, CASE WHEN A.RG = '' OR A.RG IS NULL THEN A.IE ELSE A.RG END AS IE_RG
--, A.INSCRICAOMUNICIPAL AS IM
, A.ENDERECO
, A.NUMERO
, CONCAT (A.COMPLEMENTO,', ',A.PONTOREFERENCIA) AS COMPLEMENTO
, A.BAIRRO
, C.DESCRICAO AS CIDADE
, A.UF
, REPLACE (A.CEP,'.','') AS CEP
, A.TELEFONE
, A.CELULAR
, A.EMAIL
, A.OBSERVACAO AS OBSERVACOES
FROM BDStore.dbo.AGENTES AS A
LEFT JOIN BDStore.dbo.TABELA_CIDADES C ON A.IBGE = C.IBGE
WHERE A.TIPOFORNECEDOR=1
