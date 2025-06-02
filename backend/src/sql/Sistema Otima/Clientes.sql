SELECT 
       id as codigo
      ,nome as nome
      ,documento as cnpj_cnpf
      ,telefone as telefone
      ,endereco as endereco
      ,bairro as bairro
      ,cidade as cidade
      ,estado as uf
      ,cep as cep
      ,complemento as complemento
      ,email as email
      ,observacao as observacoes
      ,case when ativo = 'S' then 'Ativo' else 'Inativo' end as situacao
      ,data_nascimento as nascimento
  FROM OTIMA.dbo.cliente
  where nome <> ''
