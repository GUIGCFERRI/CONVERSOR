SELECT 
       Fornecedores.For_CodFor AS CODIGO
      ,Fornecedores.For_Fantasia AS FANTASIA
      ,Fornecedores.For_Razao AS NOME
      ,Fornecedores.For_CGC AS CNPJ_CNPF
      ,Fornecedores.For_CGF AS IE_RG
      ,Fornecedores.For_Ender AS ENDERECO
      ,Fornecedores.For_Bairro AS BAIRRO
      ,Fornecedores.For_Cidade AS CIDADE
      ,Fornecedores.For_Estado AS UF
      ,Fornecedores.For_CEP AS CEP
      ,Fornecedores.For_Fone1 AS TELEFONE
      ,Fornecedores.For_Fone2 AS CELULAR
      ,Fornecedores.For_Fax1 AS FAX  
      ,Fornecedores.For_Contato AS CONTATO
      ,Fornecedores.For_Obs AS OBSERVACOES
  FROM Sif.dbo.Fornecedores
