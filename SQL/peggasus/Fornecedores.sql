SELECT
       Fornecedor.fornNome AS NOME
      ,Fornecedor.fornCNPJ AS CNPJ_CNPF
      ,Municipio.muniNome AS CIDADE
      ,Municipio.muniUF AS UF
      ,Fornecedor.fornEndereco AS ENDERECO
      ,Fornecedor.fornNumeroResidencial AS NUMERO
      ,Fornecedor.fornComplemento AS COMPLEMENTO
      ,Fornecedor.fornBairro AS BAIRRO
      ,Fornecedor.fornCEP AS CEP
      ,Fornecedor.fornTelefone AS TELEFONE
      ,Fornecedor.fornFax AS FAX
      ,Fornecedor.fornCelular AS CELULAR
      ,Fornecedor.fornInscricaoEstadual AS IE_RG
      ,Fornecedor.fornObservacao AS OBSERVACOES
      ,Fornecedor.fornEmail AS EMAIL
  FROM Fornecedor
LEFT JOIN MUNICIPIO ON FORNECEDOR.fornMunicipio = Municipio.muniMunicipio
