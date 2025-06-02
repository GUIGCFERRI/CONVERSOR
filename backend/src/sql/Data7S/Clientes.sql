SELECT
       Cliente.CodCliente as codigo
      ,Cliente.Nome as nome
      ,Cliente.NomeFantasia as fantasia
      ,Cliente.Contato as contato
      ,Cliente.CNPJ_CPF as cnpj_cnpf
      ,case when Cliente.RG = '' or Cliente.RG is null then Cliente.InscricaoEstadual else Cliente.RG END AS IE_RG
      ,Cliente.InscricaoMunicipal as im
      ,Cliente.Endereco as endereco
      ,Cliente.Numero as numero
      ,Cliente.Complemento as complemento
      ,Cliente.Bairro as bairro
      ,Cliente.CEP as cep
      ,Municipio.NomeCompleto as cidade
      ,Municipio.UF as uf
      ,Cliente.Telefone as telefone
      ,Cliente.Celular as celular
      ,Cliente.Fax as fax
      ,Cliente.EMail as email
      ,Cliente.LimiteCredito as limite_credito
      ,Cliente.Observacao as observacoes
      ,Cliente.DataNascimento as nascimento
      ,Cliente.NomePai as pai
      ,Cliente.NomeMae as mae
      ,Cliente.NomeConjugue as conjuge
      ,Cliente.Sexo as sexo
      ,Cliente.Naturalidade as naturalidade
      ,Cliente.EstadoCivil as est_civil
      ,cast (Cliente.DataCadastro as date) as cadastro
  FROM Data_Se7e_FRANGO.dbo.Cliente
left join Data_Se7e_FRANGO.dbo.Municipio on Municipio.codmunicipio = Cliente.CodMunicipio
