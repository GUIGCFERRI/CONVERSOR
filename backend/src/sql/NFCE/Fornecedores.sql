SELECT Codigo AS CODIGO
      ,Nome as FANTASIA
      ,RazaoSocial AS NOME
      ,Endereco AS ENDERECO
      ,Numero AS NUMERO
      ,Bairro AS BAIRRO
      ,Complemento AS COMPLEMENTO
      ,Cidade AS CIDADE
      ,Estado AS UF
      ,Cep AS CEP
      ,ContatoFone1 AS TELEFONE
      ,ContatoCelular AS CELULAR
      ,ContatoEmail AS EMAIL
      ,DocCNPJ AS CNPJ_CNPF
      ,DocCGF AS IE_RG
  FROM NFCE.dbo.Fornecedor
  WHERE Nome <> ''
