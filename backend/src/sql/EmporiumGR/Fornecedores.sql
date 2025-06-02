SELECT 
       Fornecedores.C�digo AS CODIGO
      ,Fornecedores.Nome AS NOME
      ,Fornecedores.CEP AS CEP
      ,Fornecedores.Endere�o AS ENDERECO
      ,Fornecedores.N�mero AS NUMERO
      ,Fornecedores.Complemento AS COMPLEMENTO
      ,Fornecedores.Bairro AS BAIRRO
      ,Fornecedores.Cidade AS CIDADE
      ,Fornecedores.UF AS UF
      ,Fornecedores.Telefones AS TELEFONE
      ,Fornecedores.FAX AS FAX
      ,Fornecedores.EMail AS EMAIL
      ,Fornecedores.CNPJ AS CNPJ_CNPF
      ,Fornecedores.IE AS IE_RG
      ,Fornecedores.Raz�oSocial AS FANTASIA
      ,Fornecedores.Contato AS CONTATO
      ,Fornecedores.Observa��es AS OBSERVACOES
  FROM EmporiumGR.dbo.Fornecedores
  WHERE Fornecedores.C�digo <> '0'