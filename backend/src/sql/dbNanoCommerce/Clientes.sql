SELECT
       Cliente.Codigo AS CODIGO
      ,Cliente.Nome AS NOME
      ,Cliente.RGIE AS IE_RG
      ,Cliente.CPF AS CNPJ_CNPF
      ,Cliente.Endereco AS ENDERECO
      ,Cliente.Numero AS NUMERO
      ,Cliente.Complemento AS COMPLEMENTO
      ,Cliente.Bairro AS BAIRRO
      ,REPLACE (Cliente.Cep, '-' , '') AS CEP
      ,Cliente.Cidade AS CIDADE
      ,SUBSTRING (Cliente.Estado, 1, 2) AS UF
      ,Cliente.Telefone AS TELEFONE
      ,Cliente.Fax AS FAX
      ,Cliente.Celular AS CELULAR
      ,Cliente.Email AS EMAIL
      ,Cliente.Data AS CADASTRO
      ,Cliente.Fantasia AS FANTASIA
      ,Cliente.Observacao AS OBSERVACOES
      ,Cliente.Nascimento AS NASCIMENTO
      ,Cliente.Sexo AS SEXO
      ,Cliente.Limite AS LIMITE_CREDITO
      ,Cliente.NomeConjuge AS CONJUGE
  FROM dbNanoCommerce.dbo.Cliente