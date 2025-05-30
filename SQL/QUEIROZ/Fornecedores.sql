SELECT 
       Fornecedores.CODIGO AS CODIGO
      ,Fornecedores.NOME AS NOME
      ,Fornecedores.FANTASIA AS FANTASIA
      ,Fornecedores.INSCEST AS IE_RG
      ,Fornecedores.CPF_CGC AS CNPJ_CNPF
      ,Fornecedores.ENDERECO AS ENDERECO
      ,Fornecedores.Numero AS NUMERO
      ,Fornecedores.Complemento AS COMPLEMENTO
      ,Fornecedores.vCidade AS CIDADE
      ,Fornecedores.vBairro AS BAIRRO
      ,Fornecedores.ESTADO AS UF
      ,Fornecedores.CEP AS CEP
      ,Fornecedores.TELEFONE AS TELEFONE
      ,Fornecedores.FAX AS FAX
      ,Fornecedores.CONTATO AS CONTATO
      ,Fornecedores.OBSERVACAO AS OBSERVACOES
      ,Fornecedores.EMAIL AS EMAIL
  FROM Queiroz.dbo.Fornecedores
