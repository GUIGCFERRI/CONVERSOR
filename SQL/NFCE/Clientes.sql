SELECT  
      Codigo AS CODIGO
      ,Nome AS FANTASIA	
      ,RazaoSocial AS ENDERECO
      ,Endereco AS ENDERECO
      ,Numero AS NUMERO
      ,Bairro AS BAIRRO
      ,Complemento AS COMPLEMENTO
      ,Cidade AS CIDADE
      ,Estado AS UF
      ,Cep AS CEP
      ,ContatoFone1 AS TELEFONE
      ,REPLACE(REPLACE(REPLACE(REPLACE({FN CONCAT(DocCNPJ, DocCpf)},'.',''),'-',''),'/',''),' ','') AS CNPJ_CNPF
  FROM NFCE.dbo.CLIENTE

