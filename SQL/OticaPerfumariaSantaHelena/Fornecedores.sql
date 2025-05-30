SELECT 
       Pessoa.cdPessoa AS CODIGO
      ,Pessoa.nmPessoa AS NOME
      ,Pessoa.dsEmail AS EMAIL
      ,Endereco.nmLogradouro AS ENDERECO
      ,Endereco.dsComplemento AS COMPLEMENTO
      ,Endereco.dsCEP AS CEP
      ,Endereco.dsBairro AS BAIRRO
      ,Endereco.dsCidade AS CIDADE
      ,Endereco.dsUF AS UF
      ,Endereco.nrNumero AS NUMERO
      ,P_Juridica.CGC AS CNPJ_CNPF
      ,P_Juridica.dsInscricaoEstadual AS IE_RG
      ,CLIENTE.dsInscricaoMunicipal AS IM
      ,P_Juridica.nmRazao AS FANTASIA
      ,P_Juridica.nmContato AS CONTATO
      ,TELEFONE.nmTelefone AS TELEFONE
      ,TELEFONE.dsTelefone AS CELULAR
  FROM OticaPerfumariaSantaHelena.dbo.Pessoa
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.Endereco ON Endereco.cdPessoa = PESSOA.cdPessoa
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.Cliente ON Cliente.cdPessoa = PESSOA.cdPessoa
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.Telefone ON Telefone.cdPessoa = PESSOA.cdPessoa
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.P_Juridica ON P_Juridica.cdPessoa = PESSOA.cdPessoa
  WHERE PESSOA.SER = 'F'
