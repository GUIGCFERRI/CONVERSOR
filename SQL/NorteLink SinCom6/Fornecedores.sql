SELECT 
  f.codigo
, f.nome
, f.nome_fantasia as FANTASIA
, f.endereco
, f.endereco_complemento as COMPLEMENTO
, f.endereco_numero as NUMERO
, f.bairro
, f.cidade
, f.estado as UF
, f.cep
, f.fone as TELEFONE
, f.fax
, case when f.cpf = '' or f.cpf is null then f.cnpj else f.cpf END as CNPJ_CNPF
, case when f.di = '' or f.di is null then f.insc else f.di END as IE_RG
, f.contatos as CONTATO
, f.observacao as OBSERVACOES
, f.email
FROM fornecedores f
