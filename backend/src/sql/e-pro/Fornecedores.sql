SELECT 
       for_codigo as codigo
      ,for_razaoSocial as nome
      ,for_cnpj as cnpj_cnpf
      ,for_ie as ie_rg
      ,for_email as email
      ,for_cep as cep
      ,for_logradouro as endereco
      ,for_numero as numero
      ,for_complemento as complemento
      ,for_bairro as bairro
      ,Cidade.cid_nome as cidade
      ,Estado.est_sigla as uf
      ,for_telefone as telefone
      ,for_fax as fax
  FROM [BKP2605203].dbo.Fornecedores
  left join[BKP2605203].dbo.cidade on Fornecedores.for_cidade = Cidade.cid_codigo
  left join[BKP2605203].dbo.Estado on Cidade.cid_estado = Estado.est_codigo
  where for_razaoSocial is not null
