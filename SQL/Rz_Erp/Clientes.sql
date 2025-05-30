SELECT 
       Clientes.CodCli AS CODIGO
      ,Clientes.Cnpj AS CNPJ_CNPF
      ,Clientes.Cliente AS NOME
      ,CIDADES.CIDADE AS CIDADE
      ,CIDADES.UF AS UF
      ,Clientes.Cep AS CEP
      ,Clientes.Endereco AS ENDERECO
      ,Clientes.Bairro AS BAIRRO
      ,Clientes.Fone AS TELEFONE
      ,Clientes.Celular AS CELULAR
      ,Clientes.Mail AS EMAIL
      ,Clientes.IE AS IE_RG
      ,Clientes.RSocial AS FANTASIA
      ,Clientes.Numero AS NUMERO
  FROM Rz_Erp.dbo.Clientes
LEFT JOIN Rz_Erp.dbo.CIDADES ON CLIENTES.CODCIDADE = CIDADES.CODCIDADE
where clientes.CodCli > 0
