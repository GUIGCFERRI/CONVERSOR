SELECT 
       CodCliente as codigo
      ,RazaoSocial as nome
      ,NomeCliente as fantasia
      ,CGC_CPF as cnpj_cnpf
      ,case when Identidade_RG = '' or Identidade_RG is null then Inscricao_RG else Identidade_RG END AS IE_RG
      ,InscricaoMunicipal as im
      ,Endereco as endereco
      ,NumeroEnd as numero
      ,Complemento as complemento
      ,Bairro as bairro
      ,Cep as cep
      ,Cidade as cidade
      ,Estado as uf
      ,telefone1 as telefone
      ,EMail as email
      ,LimiteCredito as limite_credito
      ,cast (DataCadastro as date) as cadastro
      ,cast (DataNascimento as date) as nascimento
      ,Contato as contato
      ,Observacao as observacoes
      ,EstadoCivil as est_civil
      ,NomePai as pai
      ,NomeMae as mae
      ,NomeConjuge as conjuge
      ,Sexo as sexo
  FROM SOBERANA.dbo.Clientes
