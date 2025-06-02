SELECT 
       Clientes.C�digo AS CODIGO
      ,Clientes.Nome AS NOME
      ,Clientes.DataDaInclus�o AS CADASTRO
      ,Clientes.CEP AS CEP
      ,Clientes.Endere�o AS ENDERECO
      ,Clientes.N�mero AS NUMERO
      ,Clientes.Complemento AS COMPLEMENTO
      ,Clientes.Bairro AS BAIRRO
      ,Clientes.Cidade AS CIDADE
      ,Clientes.UF AS UF
      ,Clientes.Telefones AS TELEFONE
      ,Clientes.FAX AS FAX
      ,Clientes.EMail AS EMAIL
      ,case when Clientes.CNPJ = '' or Clientes.CNPJ is null then Clientes.CPF else Clientes.CNPJ END AS CNPJ_CNPF
      ,case when Clientes.IE = '' or Clientes.IE is null then Clientes.RG else Clientes.IE END AS IE_RG
      ,Clientes.Raz�oSocial AS FANTASIA
      ,Clientes.Contato AS CONTATO
      ,Clientes.DataDeNascimento AS NASCIMENTO
      ,Clientes.Sexo AS SEXO
      ,Clientes.Cr�dito AS LIMITE_CREDITO
      ,Clientes.Observa��es AS OBSERVACOES
  FROM EmporiumGR.dbo.Clientes
  WHERE Clientes.C�digo <> '0'