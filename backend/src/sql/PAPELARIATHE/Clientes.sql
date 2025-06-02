SELECT
       Clientes.CodCliente AS PERSONAL2
      ,Clientes.RazaoSocial AS NOME
      ,Clientes.NomeCliente AS FANTASIA
      ,case when Clientes.Inscricao_RG = '' then Clientes.Identidade_RG else Clientes.Inscricao_RG end as IE_RG
      ,Clientes.InscricaoMunicipal AS IM
      ,Clientes.CGC_CPF AS CNPJ_CNPF
      ,Clientes.Endereco AS ENDERECO
      ,Clientes.NumeroEnd AS NUMERO
      ,CONCAT (Clientes.Complemento, ' - ' ,CLIENTES.PontoReferencia) AS COMPLEMENTO
      ,Clientes.Bairro AS BAIRRO
      ,Clientes.Cep AS CEP
      ,Clientes.Cidade AS CIDADE
      ,Clientes.Estado AS UF
      ,Clientes.Telefone1 AS TELEFONE
      ,Clientes.Telefone2 AS CELULAR
      ,Clientes.EMail AS EMAIL
      ,Clientes.LimiteCredito AS LIMITE_CREDITO
      ,CAST(Clientes.DataCadastro AS DATE) AS CADASTRO
      ,CAST(Clientes.DataNascimento AS DATE) AS NASCIMENTO
      ,Clientes.Contato AS CONTATO
      ,Clientes.Observacao AS OBSERVACOES
      ,Clientes.EstadoCivil AS EST_CIVIL
      ,Clientes.NomePai AS PAI
      ,Clientes.NomeMae AS MAE
      ,Clientes.NomeConjuge AS CONJUGE
      ,Clientes.Profissao AS PROFISSAO
  FROM papelariathe.dbo.Clientes
