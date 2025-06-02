SELECT
       Pessoa.Id AS CODIGO
      ,Pessoa.Contato AS CONTATO
      ,Pessoa.CPF_CNPJ AS CNPJ_CNPF
      ,Pessoa.DataCadastro AS CADASTRO
      ,case when Pessoa.InscricaoEstadual ='' then Pessoa.RG else Pessoa.InscricaoEstadual end as IE_RG
      ,Pessoa.InscricaoMunicipal AS IM
      ,Pessoa.NomeFantasia AS FANTASIA
      ,Pessoa.Observacao AS OBSERVACOES
      ,Pessoa.RazaoSocial AS NOME
      ,Pessoa.Sexo AS SEXO
      ,Pessoa.Email AS EMAIL
      ,MIN (CIDADE.NOME) AS CIDADE
      ,MIN (RUA.NOME) AS ENDERECO
      ,MIN (ENDERECO.NUMERO) AS NUMERO
      ,MIN(ENDERECO.COMPLEMENTO) AS COMPLEMENTO
      ,MIN (BAIRRO.NOME) AS BAIRRO
      ,MIN (CEP.CEP) AS CEP
      ,MIN (UF.Sigla) AS UF
  FROM Raffinato.dbo.Pessoa
  LEFT JOIN Raffinato.dbo.EnderecoPessoa ON ENDERECOPESSOA.IDPESSOA=PESSOA.ID
  LEFT JOIN Raffinato.dbo.ENDERECO ON ENDERECO.ID = ENDERECOPESSOA.IDENDERECO
  LEFT JOIN Raffinato.dbo.Cidade ON CIDADE.Id = ENDERECO.IDCIDADE
  LEFT JOIN Raffinato.dbo.RUA ON RUA.ID = ENDERECO.IDRUA
  LEFT JOIN Raffinato.dbo.Bairro ON BAIRRO.Id = ENDERECO.IDBAIRRO
  LEFT JOIN Raffinato.dbo.CEP ON CEP.Id = ENDERECO.IDCEP
  LEFT JOIN Raffinato.dbo.UF ON UF.Id = CIDADE.IDUF
  GROUP BY
       Pessoa.Id
      ,Pessoa.Contato
      ,Pessoa.CPF_CNPJ
      ,Pessoa.DataCadastro
      ,Pessoa.InscricaoEstadual
      ,Pessoa.RG 
      ,Pessoa.InscricaoMunicipal
      ,Pessoa.NomeFantasia
      ,Pessoa.Observacao
      ,Pessoa.RazaoSocial
      ,Pessoa.Sexo
      ,Pessoa.Email