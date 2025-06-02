SELECT 
       Cliente.Codigo AS CODIGO
      ,Cliente.Descricao AS NOME	
      ,Cliente.RazaoSocial AS FANTASIA
      ,Cliente.CNPJ_CPF AS CNPJ_CNPF
      ,Cliente.IE AS IE_RG
      ,Cliente.Contato AS CONTATO
      ,Cliente.ComercialRua AS ENDERECO
      ,Cliente.ComercialNumero AS NUMERO
      ,Cliente.ComercialComplemento AS COMPLEMENTO
      ,Cliente.ComercialBairro AS BAIRRO
      ,Cliente.ComercialCidade AS CIDADE
      ,Cliente.ComercialUF AS UF
      ,Cliente.ComercialCEP AS CEP
      ,Cliente.ComercialFone AS TELEFONE
      ,Cliente.ComercialFax AS FAX
      ,Cliente.ComercialCelular AS CELULAR
      ,CAST (Cliente.DataCadastro AS DATE) AS CADASTRO
      ,CAST (Cliente.DataNascimento AS DATE) AS NASCIMENTO
      ,Cliente.Email AS EMAIL
      ,Cliente.EstadoCivil AS EST_CIVIL
      ,Cliente.ValorCredito AS LIMITE_CREDITO
      ,Cliente.NomePai AS PAI
      ,Cliente.NomeMae AS MAE
      ,Cliente.Sexo AS SEXO
      ,Cliente.Obs AS OBSERVACOES
      ,Cliente.Naturalidade AS NATURALIDADE
  FROM DBGarraX.dbo.Cliente
  WHERE CLIENTE.CODIGO > '0'
