SELECT 
       Cliente.ID as codigo
      ,Cliente.Nome as nome
      ,Cliente.Fantasia as fantasia
      ,Cliente.Responsavel as contato
      ,Cliente.CPF_CNPJ as cnpj_cnpf
      ,case when Cliente.RG = '' or Cliente.RG is null then Cliente.IE else Cliente.RG END AS IE_RG
      ,Cliente.Endereco as endereco
      ,Cliente.Numero as numero
      ,Cliente.PontoRef as complemento
      ,Cidades.nome as cidade
      ,Cidades.uf as uf
      ,Cliente.Bairro as bairro
      ,Cliente.CEP as cep
      ,Cliente.Email as email
      ,Cliente.Telefone1 as telefone
      ,Cliente.Telefone2 as celular
      ,cast (Cliente.DtNascimento as date) as nascimento
      ,Cliente.Sexo as sexo
      ,Cliente.Observacao as observacoes
      ,Cliente.Pai as pai
      ,Cliente.Mae as mae
      ,Cliente.LimiteCred as limite_credito
      ,cast (Cliente.DtCadastro as date) as cadastro
  FROM NewCommerce.dbo.Cliente
left join NewCommerce.dbo.Cidades on cidades.id = Cliente.ID_Cidade
