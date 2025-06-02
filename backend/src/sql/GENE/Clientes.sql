SELECT
       substring (cast(Tbl_Pessoa.nCdPessoa as varchar(200)), 4,9) AS CODIGO
      ,Tbl_Pessoa.sNmPessoa AS NOME
      ,Tbl_Pessoa.sNrCpfCnpj AS CNPJ_CNPF
      ,Tbl_Pessoa.sNrRgIe AS IE_RG
      ,Tbl_PessoaJuridica.sNrInscricaoMunicipal AS IM
      ,Tbl_PessoaEndereco.sDsRuaLogradouro AS ENDERECO
      ,Tbl_PessoaEndereco.sDsComplemento AS COMPLEMENTO
      ,Tbl_PessoaEndereco.sNrCep AS CEP
      ,Tbl_PessoaEndereco.sNrNumero AS NUMERO
      ,Tbl_Bairro.sNmBairro AS BAIRRO
      ,Tbl_Cidade.sNmCidade AS CIDADE
      ,Tbl_Estado.sCdEstado AS UF
      ,MIN (Tbl_PessoaTelefone.sNrTelefone) AS TELEFONE
      ,Tbl_PessoaFisica.sNmPai AS PAI
      ,Tbl_PessoaFisica.sNmMae AS MAE
      ,Tbl_PessoaFisica.sSgSexo AS SEXO
      ,Tbl_PessoaFisica.sSgEstadoCivil AS EST_CIVIL
      ,Tbl_PessoaFisica.sNmConjuge AS CONJUGE
      ,MIN (Tbl_PessoaObservacao.sDsObservacao) AS OBSERVACOES
      ,Tbl_PessoaCliente.dVlLimiteCredito AS LIMITE_CREDITO
      ,CAST (Tbl_Pessoa.tDtNascimentoFundacao AS DATE) AS NASCIMENTO
      ,CAST (Tbl_Pessoa.tDtCadastro AS DATE) AS CADASTRO      
  FROM GENE.dbo.Tbl_Pessoa
  LEFT JOIN GENE.dbo.Tbl_PessoaCliente ON Tbl_PessoaCliente.nCdPessoa = Tbl_Pessoa.nCdPessoa
  LEFT JOIN GENE.dbo.Tbl_PessoaEndereco ON Tbl_PessoaEndereco.nCdPessoa = Tbl_Pessoa.nCdPessoa
  LEFT JOIN GENE.dbo.Tbl_PessoaFisica ON Tbl_PessoaFisica.nCdPessoa = Tbl_Pessoa.nCdPessoa
  LEFT JOIN GENE.dbo.Tbl_PessoaJuridica ON Tbl_PessoaJuridica.nCdPessoa = Tbl_Pessoa.nCdPessoa
  LEFT JOIN GENE.dbo.Tbl_PessoaObservacao ON Tbl_PessoaObservacao.nCdPessoa = Tbl_Pessoa.nCdPessoa
  LEFT JOIN GENE.dbo.Tbl_PessoaTelefone ON Tbl_PessoaTelefone.nCdPessoa = Tbl_Pessoa.nCdPessoa
  LEFT JOIN GENE.dbo.Tbl_Cidade ON Tbl_Cidade.nCdCidade = Tbl_PessoaEndereco.nCdCidade
  LEFT JOIN GENE.dbo.Tbl_Estado ON Tbl_Estado.nCdEstado = Tbl_Cidade.nCdEstado
  LEFT JOIN GENE.dbo.Tbl_Bairro ON Tbl_Bairro.nCdBairro = Tbl_PessoaEndereco.nCdBairro
  WHERE GENE.dbo.Tbl_Pessoa.nSgTipo = '20'
  GROUP BY
       Tbl_Pessoa.nCdPessoa
      ,Tbl_Pessoa.sNmPessoa
      ,Tbl_Pessoa.sNrCpfCnpj
      ,Tbl_Pessoa.sNrRgIe
      ,Tbl_PessoaJuridica.sNrInscricaoMunicipal
      ,Tbl_PessoaEndereco.sDsRuaLogradouro
      ,Tbl_PessoaEndereco.sDsComplemento
      ,Tbl_PessoaEndereco.sNrCep
      ,Tbl_PessoaEndereco.sNrNumero
      ,Tbl_Bairro.sNmBairro
      ,Tbl_Cidade.sNmCidade
      ,Tbl_Estado.sCdEstado
      ,Tbl_PessoaFisica.sNmPai
      ,Tbl_PessoaFisica.sNmMae
      ,Tbl_PessoaFisica.sSgSexo
      ,Tbl_PessoaFisica.sSgEstadoCivil
      ,Tbl_PessoaFisica.sNmConjuge
      ,Tbl_PessoaCliente.dVlLimiteCredito
      ,Tbl_Pessoa.tDtNascimentoFundacao
      ,Tbl_Pessoa.tDtCadastro 
