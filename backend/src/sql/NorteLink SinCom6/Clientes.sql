SELECT 
  c.codigo
, c.cadastro
, c.nome
, c.apelido as FANTASIA
, c.endereco
, c.endereco_numero as NUMERO
, c.referencia as COMPLEMENTO
, c.bairro
, c.cidade
, c.uf
, c.cep
, c.fone as TELEFONE
, c.fax
, c.datanasc as NASCIMENTO
, case when c.cpf = '' or c.cpf is null then c.cnpj else c.cpf END as CNPJ_CNPF
, case when c.di = '' or c.di is null then c.insc else c.di END as IE_RG
, c.limite as LIMITE_CREDITO
, c.email
, c.conjuge 
, c.observacao as OBSERVACOES
, c.celular
, c.pai
, c.mae
, c.indiedest
FROM clientes c
