SELECT 
       CLIENTE.CdCliente AS CODIGO
      ,CLIENTE.NomeCliente AS NOME
      ,CLIENTE.RazaoSocialCliente AS FANTASIA
      ,CLIENTE.LogradouroCliente AS ENDERECO
      ,CLIENTE.BairroCliente AS BAIRRO
      ,CLIENTE.CidadeCliente AS CIDADE
      ,CLIENTE.SiglaUFCliente AS UF
      ,CLIENTE.CEPCliente AS CEP
      ,CLIENTE.FoneCelularCliente AS CELULAR
      ,CLIENTE.FoneResidencialCliente AS TELEFONE
      ,CLIENTE.FoneFaxCliente AS FAX
      ,CLIENTE.EmailCliente AS EMAIL
      ,CLIENTE.CPF_CNPJCliente AS CNPJ_CNPF
      ,case when CLIENTE.InscrEstadualCliente = '' or CLIENTE.InscrEstadualCliente is null then CLIENTE.DocIdentidadeCliente else CLIENTE.InscrEstadualCliente END as IE_RG
      ,CLIENTE.SiglaSexoCliente AS SEXO
      ,CLIENTE.SiglaEstadoCivilCliente AS EST_CIVIL
      ,CLIENTE.ValorLimiteCreditoCliente AS LIMITE_CREDITO
      ,CLIENTE.ObsCliente AS OBSERVACOES
      ,CLIENTE.NomePaiCliente AS PAI
      ,CLIENTE.NomeMaeCliente AS MAE
      ,CLIENTE.DataNascimentoCliente AS NASCIMENTO
      ,CAST (CLIENTE.DataCadastroCliente AS DATE) AS CADASTRO
      ,CLIENTE.NrEnderecoCliente AS NUMERO
      ,CLIENTE.ComplementoEnderecoCliente AS COMPLEMENTO
  FROM PoliSystemServerSQLDB.dbo.CLIENTE
