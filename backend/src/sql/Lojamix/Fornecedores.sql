SELECT
       entidade.id_entidade as codigo
      ,entidade.nome as nome
      ,case when pessoa_juridica.cnpj = '' or pessoa_juridica.cnpj is null then pessoa_fisica.cpf else pessoa_juridica.cnpj END as cnpj_cnpf
      ,case when pessoa_juridica.ie = '' or pessoa_juridica.ie is null then pessoa_fisica.rg else pessoa_juridica.ie END as ie_rg
      ,entidade.logradouro as endereco
      ,entidade.numero_endereco as numero
      ,entidade.bairro as bairro
      ,complemento as complemento
      ,entidade.cep as cep
      ,cidade.nome as cidade
      ,cidade.uf as uf
      ,entidade.observacao as observacoes
      ,CONCAT (entidade.fone1_ddd, entidade.fone1_numero) as telefone
      ,CONCAT (entidade.celular_ddd, entidade.celular_numero) as celular
      ,entidade.email_principal as email
  FROM Lojamix.dbo.entidade
  left join Lojamix.dbo.cidade on cidade.id_cidade = entidade.id_cidade
  left join Lojamix.dbo.pessoa_fisica on pessoa_fisica.id_entidade = entidade.id_entidade
  left join Lojamix.dbo.pessoa_juridica on pessoa_juridica.id_entidade = entidade.id_entidade
where entidade.flag_fornecedor = '1'
