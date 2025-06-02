SELECT 
       CAD_Cliente.Codigo AS CODIGO
      ,CAD_Cliente.RazaoSocial AS NOME
      ,CAD_Cliente.NomeFantasia AS FANTASIA
      ,CAD_Cliente.CNPJ_CPF AS CNPJ_CNPF
      ,CAD_Cliente.Inscricao_RG AS IE_RG
      ,CAD_Cliente.Contato AS CONTATO
      ,CAD_Cliente.Endereco AS ENDERECO
      ,CAD_Cliente.NumeroEnd AS NUMERO
      ,CAD_Cliente.Complemento AS COMPLEMENTO
      ,CAD_Cliente.Bairro AS BAIRRO
      ,CAD_Cliente.Cep AS CEP
      ,CAD_Cliente.Cidade AS CIDADE
      ,CAD_Cliente.Estado AS UF
      ,CAD_Cliente.Telefone1 AS TELEFONE
      ,CAD_Cliente.LimiteCredito AS LIMITE_CREDITO
      ,CAD_Cliente.EmailNFe AS EMAIL
      ,CAD_Cliente.Observacao AS OBSERVACOES
      ,CAD_Cliente.DataNascimento AS NASCIMENTO
  FROM [BDANDRESSASTORE_PD].[dbo].[CAD_Cliente]
