SELECT
       Cli_For.NomeCliFor AS FANTASIA
      ,Cli_For.CodCliFor AS PERSONAL2
      ,Cli_For.RazaoSocial AS NOME
      ,Cli_For.CPFCGCCLIFOR AS CNPJ_CNPF
      ,Cli_For.RGIECLIFOR AS IE_RG
      ,Cli_For.InscricaoMunicipal AS IM
      ,Cli_For.EnderecoCliFor AS ENDERECO
      ,Cli_For.NumeroLogradouro AS NUMERO
      ,Cli_For.BairroCliFor AS BAIRRO
      ,Cli_For.Complemento AS COMPLEMENTO
      ,Cli_For.email AS EMAIL
      ,Cli_For.CepCliFor AS CEP
      ,CIDADE.Cidade AS CIDADE
      ,Cli_For.UfCliFor AS UF
      ,Cli_For.FoneCliFor AS TELEFONE
      ,Cli_For.FaxCliFor AS FAX
      ,Cli_For.CelCliFor AS CELULAR
      ,Cli_For.CONJUGE AS CONJUGE
      ,Cli_For.ESTADOCIVIL AS EST_CIVIL
      ,Cli_For.DTNASCCLI AS NASCIMENTO
      ,Cli_For.Sexo AS SEXO
      ,Cli_For.Naturalidade AS NATURALIDADE
      ,Cli_For.NOMEMAE AS MAE
      ,Cli_For.NOMEPAI AS PAI
      ,Cli_For.OBSERVACAO AS OBSERVACOES
      ,LimiteCredito AS LIMITE_CREDITO
      ,Cli_For.NomeContato AS CONTATO
  FROM dbcronos.dbo.Cli_For
  LEFT JOIN dbcronos.dbo.Cidade ON CIDADE.IdCidade = dbcronos.dbo.Cli_For.IdCidade
  WHERE dbcronos.dbo.Cli_For.TIPOCLIENTE = 'C'
