SELECT 
       Fornecedor.Codigo AS CODIGO
      ,Fornecedor.Nome AS NOME
      ,Fornecedor.CPF AS CNPJ_CNPF
      ,Fornecedor.Endereco AS ENDERECO
      ,Fornecedor.Numero AS NUMERO
      ,Fornecedor.Complemento AS COMPLEMENTO
      ,Fornecedor.Bairro AS BAIRRO
      ,REPLACE (Fornecedor.Cep, '-' , '') AS CEP
      ,Fornecedor.Cidade AS CIDADE
      ,SUBSTRING (Fornecedor.Estado, 1, 2) AS UF
      ,Fornecedor.Telefone AS TELEFONE
      ,Fornecedor.Fax AS FAX
      ,Fornecedor.Celular AS CELULAR
      ,Fornecedor.Email AS EMAIL
      ,Fornecedor.IE AS IE_RG
      ,Fornecedor.Contato AS CONTATO
      ,Fornecedor.Fantasia AS FANTASIA
      ,Fornecedor.Obs AS OBSERVACOES
  FROM dbNanoCommerce.dbo.Fornecedor