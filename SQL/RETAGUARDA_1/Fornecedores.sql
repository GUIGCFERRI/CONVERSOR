SELECT 
       Fornecedor.Bairro AS BAIRRO
      ,Fornecedor.Cep AS CEP
      ,Fornecedor.Cidade AS CIDADE
      ,Fornecedor.Cod_Fornecedor AS CODIGO
      ,Fornecedor.Comp_Endereco AS COMPLEMENTO
      ,Fornecedor.Cpf_Cnpj AS CNPJ_CNPF
      ,Fornecedor.Email AS EMAIL
      ,Fornecedor.Endereco AS ENDERECO
      ,Fornecedor.Estado AS UF
      ,Fornecedor.Nome_Fornecedor AS NOME
      ,Fornecedor.Num_Endereco AS NUMERO
      ,Fornecedor.Obs AS OBSERVACOES
      ,Fornecedor.Rg_Inscricao AS IE_RG
  FROM Retaguarda.dbo.Fornecedor
