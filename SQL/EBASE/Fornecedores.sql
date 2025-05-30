SELECT
       Clientes.Codigo as CÓDIGO
      ,Clientes.NomeCliente AS NOME
      ,Clientes.Apelido AS FANTASIA
      ,Clientes.CpfCnpj AS CNPJ_CNPF
      ,case when Clientes.IE = '' or Clientes.IE is null then Clientes.RG else Clientes.IE END as IE_RG
      ,Clientes.Endereco AS ENDERECO
      ,Clientes.Bairro AS BAIRRO
      ,Clientes.Complemento AS COMPLEMENTO
      ,Clientes.Telefone AS TELEFONE
      ,Clientes.Telefone2 AS CELULAR
      ,Clientes.Email AS EMAIL
      ,Clientes.Limite AS LIMITE_CREDITO
      ,CidadeS.NomeCidade AS CIDADE
      ,CidadeS.Estado as UF
      ,Clientes.Cep AS CEP
      ,Clientes.NumeroImovel AS NUMERO
      ,Clientes.Telefone3 AS FAX
  FROM dbCaixaCris.dbo.Clientes
LEFT JOIN dbCaixaCris.dbo.Cidades ON CIDADES.CODIGO = CLIENTES.CIDADE
WHERE TipoCadastro = '2'