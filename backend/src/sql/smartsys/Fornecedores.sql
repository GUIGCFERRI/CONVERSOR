SELECT 
    cf.id as CODIGO
  , cf.nome as FANTASIA
  , cf.razao as NOME
  , cf.cpfcnpj as CNPJ_CNPF
  , cf.ierg as IE_RG 
  , cf.rua as ENDERECO
  , cf.numero
  , cf.bairro
  , cf.complemento as CONTATO
  , cf.municipio as CIDADE
  , cf.uf
  , cf.cep
  , cf.fone as TELEFONE
  , cf.celular
--  , cf.data_nascimento as 
--  , cf.data_cadastro
  , cf.email
  , cf.obs as OBSERVACOES
  , cf.referencia as COMPLEMENTO 
--  , cf.credito
FROM clifor cf
WHERE tipo = 'FORNECEDOR'
