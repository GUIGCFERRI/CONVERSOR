SELECT 
       substring (fornecedor.for_cd, 3,7) as codigo
      ,fornecedor.for_nm as nome
      ,fornecedor.for_contato as contato
      ,fornecedor.for_cpfcnpj as cnpj_cnpf
      ,fornecedor.for_ie as ie_rg
      ,fornecedor.for_endereco as endereco
      ,fornecedor.for_bairro as bairro
      ,fornecedor.for_endnum as numero
      ,fornecedor.for_cep as cep
      ,cidade.cid_nm as cidade
      ,fornecedor.for_uf as uf
      ,fornecedor.for_fone as telefone
      ,fornecedor.for_fax as fax
      ,fornecedor.for_email as email
      ,fornecedor.for_obs as observaoes
  FROM bd_apollo.dbo.fornecedor
  left join bd_apollo.dbo.cidade on cidade.cid_cd = fornecedor.for_cidade 
