SELECT 
       Clientes.IdCliente AS CODIGO
      ,Clientes.NomeCliente AS NOME
      ,Clientes.NomeFantasia AS FANTASIA
      ,Clientes.Cnpj AS CNPJ_CNPF
      ,case when Clientes.RG = '' or Clientes.RG is null then Clientes.InscEst else Clientes.RG END as IE_RG
      ,Clientes.Cep AS CEP
      ,CONCAT (Clientes.DDD,Clientes.Telefone) AS TELEFONE
      ,CONCAT (Clientes.DDD_Cel, Clientes.Celular) AS CELULAR
      ,Clientes.Fax AS FAX
      ,Clientes.Observacao AS OBSERVACOES
      ,Clientes.Contato AS CONTATO
      ,Clientes.DataCadastro AS CADASTRO
      ,Clientes.Email AS EMAIL
      ,Clientes.Endereco AS ENDERECO
      ,Clientes.Numero AS NUMERO
      ,Clientes.Complemento AS COMPLEMENTO
      ,Clientes.Bairro AS BAIRRO
      ,Clientes.Cidade AS CIDADE
      ,Clientes.Estado AS UF
      ,Clientes.LimiteCredito AS LIMITE_CREDITO
      ,Clientes.DataNascto AS NASCIMENTO
      ,Clientes.NomeMae AS MAE
      ,Clientes.NomePai AS PAI
      ,Clientes.Sexo AS SEXO
      ,Clientes.EstadoCivil AS EST_CIVIL
  FROM EverMark.dbo.Clientes