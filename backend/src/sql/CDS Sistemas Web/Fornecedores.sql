SELECT 
       idFornecedor as codigo
      ,razaoSocial as nome
      ,nomeFantasia as fantasia
      ,representNome as contato
      ,cnpj as cnpj_cnpf
      ,inscEst as ie_rg
      ,endLogradouro as endereco
      ,endNumero as numero
      ,endComplemento as complemento
      ,endBairro as bairro
      ,endCidade as cidade
      ,endEstado as uf
      ,endCep as cep
      ,endFone as telefone
      ,endFax as fax
      ,email as email
      ,obs as observacoes
  FROM BDComercialOrganizacaoVeterinariaLj.dbo.fornecedor