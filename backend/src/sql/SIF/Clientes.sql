SELECT 
       Clientes.Cli_CodCli AS CODIGO
      ,Clientes.Cli_NOME AS NOME
      ,Clientes.Cli_Nascimento AS NASCIMENTO
      ,Clientes.Cli_CGC AS CNPJ_CNPF
      ,Clientes.Cli_CGF AS IE_RG
      ,Clientes.Cli_Ender AS ENDERECO
      ,Clientes.Cli_Bairro AS BAIRRO
      ,Clientes.Cli_Estado AS UF
      ,Clientes.Cli_CEP AS CEP
      ,Clientes.Cli_Fone1 AS TELEFONE
      ,Clientes.Cli_Fone2 AS CELULAR
      ,Clientes.Cli_Fax AS FAX
      ,Clientes.Cli_Contato AS CONTATO
      ,Clientes.Cli_Limite AS LIMITE_CREDITO
      ,Clientes.Cli_Obs AS OBSERVACOES
      ,Clientes.Cli_Cidade AS CIDADE
      ,Clientes.Cli_NumCasa AS NUMERO
      ,Clientes.Cli_complemento AS COMPLEMENTO
      ,Clientes.cli_fantasia AS FANTASIA
  FROM Sif.dbo.Clientes
