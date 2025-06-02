SELECT 
       FORNECEDOR.CdFornecedor AS CODIGO
      ,FORNECEDOR.NomeFornecedor AS NOME
      ,FORNECEDOR.RazaoSocialFornecedor AS FANTASIA
      ,FORNECEDOR.LogradouroFornecedor AS ENDERECO
      ,FORNECEDOR.CompLogrFornecedor AS COMPLEMENTO
      ,FORNECEDOR.BairroFornecedor AS BAIRRO
      ,FORNECEDOR.CidadeFornecedor AS CIDADE
      ,FORNECEDOR.SiglaUFFornecedor AS UF
      ,FORNECEDOR.CEPFornecedor AS CEP
      ,FORNECEDOR.FoneCelularFornecedor AS CELULAR
      ,FORNECEDOR.FoneComercial1Fornecedor AS TELEFONE
      ,FORNECEDOR.FoneFaxFornecedor AS FAX
      ,FORNECEDOR.EmailFornecedor AS EMAIL
      ,FORNECEDOR.CPF_CNPJFornecedor AS CNPJ_CNPF
      ,FORNECEDOR.InscEst_CartIdFornecedor AS IE_RG
      ,FORNECEDOR.NrEnderecoFornecedor AS NUMERO
  FROM PoliSystemServerSQLDB.dbo.FORNECEDOR
