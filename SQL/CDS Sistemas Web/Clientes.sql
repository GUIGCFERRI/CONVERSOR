SELECT
       codigo as codigo
      ,jurRazaoSocial as nome
      ,nome as fantasia
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
      ,credito as limite_credito
      ,cast (dataInclusao as date) as cadastro
      ,cast (fisDataNasc as date) as nascimento
      ,cast (ultDataVenda as date) as ultima_venda
  FROM BDComercialOrganizacaoVeterinariaLj.dbo.cliente
  where dataInclusao is not null