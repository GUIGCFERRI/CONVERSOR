SELECT
       Fornecedor.Codigo as CODIGO
      ,Fornecedor.Nome AS NOME
      ,Fornecedor.Endereco AS ENDERECO
      ,Fornecedor.Numero AS NUMERO
      ,Fornecedor.Bairro AS BAIRRO
      ,Fornecedor.Cidade AS CIDADE
      ,Fornecedor.UF AS UF
      ,Fornecedor.CEP AS CEP
      ,Fornecedor.Complemento AS COMPLEMENTO
      ,Fornecedor.Contato AS CONTATO
      ,Fornecedor.Fone AS TELEFONE
      ,Fornecedor.Celular AS CELULAR
      ,Fornecedor.Fax AS FAX
      ,Fornecedor.CPF_CNPJ AS CNPJ_CNPF
      ,Fornecedor.RG_IE AS IE_RG
      ,Fornecedor.Email AS EMAIL
      ,Fornecedor.Observacao AS OBSERVACOES
  FROM Store.dbo.Fornecedor