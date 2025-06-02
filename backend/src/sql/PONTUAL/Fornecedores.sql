SELECT
       Clientes.CodCliente AS CODIGO
      ,Clientes.RazaoSocial AS NOME
      ,Clientes.NomeCliente AS FANTASIA
      ,Clientes.CGC_CPF AS CNPJ_CNPF
      ,case when Clientes.Identidade_RG = '' or Clientes.Identidade_RG is null then Clientes.Inscricao_RG else Clientes.Identidade_RG END as IE_RG
      ,Clientes.InscricaoMunicipal AS IM
      ,Clientes.Endereco AS ENDERECO
      ,Clientes.NumeroEnd AS NUMERO
      ,Clientes.Complemento AS COMPLEMENTO
      ,Clientes.Bairro AS BAIRRO
      ,Clientes.Cep AS CEP
      ,Clientes.Cidade AS CIDADE
      ,Clientes.Estado AS UF
      ,Clientes.Telefone1 AS TELEFONE
      ,Clientes.Telefone2 AS CELULAR
      ,Clientes.EMail AS EMAIL
      ,Clientes.Contato AS CONTATO
      ,Clientes.Observacao AS OBSERVACOES
  FROM Pontual.dbo.Clientes
  WHERE Clientes.codtipocliente = '1'
