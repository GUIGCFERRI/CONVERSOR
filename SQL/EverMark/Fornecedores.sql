SELECT 
       Fornecedores.IdFornecedor AS CODIGO
      ,Fornecedores.NomeFornecedor AS NOME
      ,Fornecedores.Cnpj AS CNPJ_CNPF
      ,case when Fornecedores.InscEst = '' or Fornecedores.InscEst is null then Fornecedores.Identidade else Fornecedores.InscEst END as IE_RG
      ,Fornecedores.Endereco AS ENDERECO
      ,Fornecedores.Numero AS NUMERO
      ,Fornecedores.Bairro AS BAIRRO
      ,Fornecedores.Cidade AS CIDADE
      ,Fornecedores.Estado AS UF
      ,Fornecedores.Cep AS CEP
      ,CONCAT (Fornecedores.DDD,Fornecedores.Telefone) AS TELEFONE
      ,CONCAT (Fornecedores.DDD_Cel, Fornecedores.Celular) AS CELULAR
      ,Fornecedores.Contato AS CONTATO
      ,Fornecedores.Observacao AS OBSERVACOES
      ,Fornecedores.EmailFornecedor AS EMAIL
  FROM EverMark.dbo.Fornecedores