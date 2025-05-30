SELECT 
       Fornecedores.Código AS CODIGO
      ,Fornecedores.Nome AS NOME
      ,Fornecedores.CEP AS CEP
      ,Fornecedores.Endereço AS ENDERECO
      ,Fornecedores.Número AS NUMERO
      ,Fornecedores.Complemento AS COMPLEMENTO
      ,Fornecedores.Bairro AS BAIRRO
      ,Fornecedores.Cidade AS CIDADE
      ,Fornecedores.UF AS UF
      ,Fornecedores.Telefones AS TELEFONE
      ,Fornecedores.FAX AS FAX
      ,Fornecedores.EMail AS EMAIL
      ,Fornecedores.CNPJ AS CNPJ_CNPF
      ,Fornecedores.IE AS IE_RG
      ,Fornecedores.RazãoSocial AS FANTASIA
      ,Fornecedores.Contato AS CONTATO
      ,Fornecedores.Observações AS OBSERVACOES
  FROM EmporiumGR.dbo.Fornecedores
  WHERE Fornecedores.Código <> '0'