SELECT 
       Cli_For.Codigo AS CODIGO
      ,Cli_For.Nome AS NOME
      ,Cli_For.Tipo
      ,Cli_For.Fantasia AS FANTASIA
      ,Cli_For.Endereco AS ENDERECO
      ,Cli_For.Numero AS NUMERO
      ,Cli_For.Complemento AS COMPLEMENTO
      ,Cli_For.Bairro AS BAIRRO
      ,Cli_For.Cidade AS CIDADE
      ,Cli_For.UF AS UF
      ,Cli_For.CEP AS CEP
      ,Cli_For.CNPJ AS CNPJ_CNPF
      ,Cli_For.Inscricao AS IE_RG
      ,Cli_For.Obs AS OBSERVACOES
      ,Cli_For.Fone1 AS TELEFONE
      ,Cli_For.Fone2 AS CELULAR
      ,Cli_For.Fax AS FAX
      ,Cli_For.Email AS EMAIL
      ,Cli_For.Contato AS CONTATO
      ,Cli_For.Nascimento AS NASCIMENTO
      ,Cli_For.DataCadastro AS CADASTRO
      ,Cli_For.Limite_Credito AS LIMITE_CREDITO
  FROM ETrade.dbo.Cli_For
  WHERE ETrade.dbo.Cli_For.Tipo = 'C'
