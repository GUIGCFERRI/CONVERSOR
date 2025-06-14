SELECT
       CodCliente as CODIGO
      ,RazaoSocial AS NOME
      ,NomeCliente AS FANTASIA
      ,CGC_CPF AS CNPJ_CNPF
      ,Inscricao_RG AS IE_RG 
      ,InscricaoMunicipal AS IM
      ,Endereco AS ENDERECO
      ,NumeroEnd AS NUMERO
      ,Complemento AS COMPLEMENTO
      ,Bairro AS BAIRRO
      ,Cep AS CEP
      ,Cidade AS CIDADE
      ,Estado AS UF
      ,Telefone1 AS TELEFONE
      ,Telefone2 AS CELULAR 
      ,LimiteCredito AS LIMITE_CREDITO 
      ,DataCadastro AS CADASTRO
      ,DataNascimento AS NASCIMENTO
      ,Contato AS CONTATO
      ,Observacao AS OBSERVACOES
      ,EstadoCivil AS EST_CIVIL
      ,NomePai AS PAI
      ,NomeMae AS MAE
      ,NomeConjuge AS CONJUGE
      ,Sexo AS SEXO
      ,Profissao AS PROFISSAO
      ,Nacionalidade AS NATURALIDADE
  FROM ChaveiroAbriu.dbo.Clientes
