SELECT
       Codigo as codigo
      ,RazaoSocial as nome
      ,Nome as fantasia
      ,case when DocCpf = '' or DocCpf is null then DocCNPJ else DocCpf END AS CNPJ_CNPF
      ,case when DocRg = '' or DocRg is null then DocCGF else DocRg END AS IE_RG
      ,Endereco as endereco
      ,Complemento as complemento
      ,NUMERO as numero
      ,Bairro as bairro
      ,Cidade as cidade
      ,Estado as uf
      ,Cep as cep
      ,ContatoFone1 as telefone
      ,ContatoFax as fax
      ,ContatoCelular as celular
      ,EMAIL as email
      ,observacoes as observacoes
      ,NomePai as pai
      ,NomeMae as mae
      ,EstadoCivil as est_civil
      ,LimiteCredito as limite_credito
      --,DataCadastro as cadastro
  FROM CLIENTE
  WHERE RazaoSocial <> ''
