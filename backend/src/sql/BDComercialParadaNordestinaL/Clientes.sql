SELECT 
      -- codigo as codigo
       nome as fantasia
      ,jurRazaoSocial as nome
      ,jurContato as contato
      ,cpfCnpj as cnpj_cnpf
      ,rgInscEst as ie_rg
      ,endLogradouro as endereco
      ,endNumero as numero
      ,endComplemento as complemento
      ,endBairro as bairro
      ,endCidade as cidade
      ,endEstado as uf
      ,endCep as cep
      ,endFone as telefone
      ,celular as celular
      ,endFax as fax
      ,email as email
      ,obs as observacoes
      ,fisPai as pai
      ,fisMae as mae
      ,fisConjuge as conjuge
      ,fisSexo as sexo
      ,fisEstadoCivil as est_civil
      ,cast (dataInclusao as date) as cadastro
  FROM BDComercialJoseMarioF.dbo.cliente
