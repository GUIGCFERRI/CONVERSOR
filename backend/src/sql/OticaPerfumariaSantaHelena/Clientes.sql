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
      ,CLIENTE.dsLimCredito AS LIMITE_CREDITO
      ,P_Juridica.CGC
      ,P_Fisica.dsCPF AS CNPJ_CNPF
      ,P_Fisica.dsIdentidade AS IE_RG
      ,P_Juridica.dsInscricaoEstadual
      ,CAST (P_Fisica.dtNascimento AS DATE) AS NASCIMENTO
      ,P_Fisica.dsNaturalidade AS NATURALIDADE
      ,CLIENTE.dsInscricaoMunicipal
      ,P_Juridica.nmRazao AS FANTASIA
      ,P_Juridica.nmContato AS CONTATO
      ,TELEFONE.nmTelefone AS TELEFONE
      ,TELEFONE.dsTelefone AS CELULAR
      ,CAST (Pessoa.dtCadastro AS DATE) AS CADASTRO
  FROM OticaPerfumariaSantaHelena.dbo.Pessoa
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.Endereco ON Endereco.cdPessoa = PESSOA.cdPessoa
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.Cliente ON Cliente.cdPessoa = PESSOA.cdPessoa
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.Telefone ON Telefone.cdPessoa = PESSOA.cdPessoa
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.P_Fisica ON P_Fisica.cdPessoa = PESSOA.cdPessoa
  LEFT JOIN OticaPerfumariaSantaHelena.dbo.P_Juridica ON P_Juridica.cdPessoa = PESSOA.cdPessoa
  WHERE PESSOA.SER = 'C' OR PESSOA.SER = 'T' OR PESSOA.SER = 'V' OR PESSOA.SER = 'U'
