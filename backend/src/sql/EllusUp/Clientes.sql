SELECT
       Clientes.Id AS CODIGO
      ,Clientes.Nome AS NOME
      ,Clientes.NomeAbreviado AS FANTASIA
      ,Clientes.CNPJ AS CNPJ_CNPF
      ,case when Clientes.InscricaoEstadual = '' or Clientes.InscricaoEstadual is null then Clientes.Identidade else Clientes.InscricaoEstadual END as IE_RG
      ,Clientes.DataNascimento AS NASCIMENTO
      ,Clientes.NomePai AS PAI
      ,Clientes.NomeMae AS MAE
      ,Clientes.Observacoes AS OBSERVACOES
      ,Clientes.DataCadastro AS CADASTRO
      ,Clientes.LimiteCredito AS LIMITE_CREDITO
      ,Enderecos.Endereco AS ENDERECO
      ,Enderecos.Numero AS NUMERO
      ,Enderecos.Complemento AS COMPLEMENTO
      ,Enderecos.Bairro AS BAIRRO
      ,Enderecos.nmMunicipio AS CIDADE
      ,Enderecos.UF AS UF
      ,Enderecos.CEP AS CEP
      ,Enderecos.Fone AS TELEFONE
      ,Enderecos.Celular AS CELULAR
      ,Enderecos.Fax AS FAX
      ,Enderecos.PessoaContato AS CONTATO0
      ,Enderecos.Email AS EMAIL
  FROM EllusUp.dbo.Clientes
  LEFT JOIN EllusUp.dbo.Enderecos ON Enderecos.IdEntidade = Clientes.Id
  WHERE Clientes.Id > '000000'
