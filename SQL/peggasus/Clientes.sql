SELECT
       Cliente.clieCliente AS CNPJ_CNPF
      ,Cliente.clieNome AS NOME
      ,Municipio.muniNome AS CIDADE
      ,Municipio.muniUF AS UF
      ,Cliente.clieEndereco AS ENDERECO
      ,Cliente.clieNumeroResidencial AS NUMERO
      ,Cliente.clieComplemento AS COMPLEMENTO
      ,Cliente.clieBairro AS BAIRRO
      ,Cliente.clieCEP AS CEP
      ,Cliente.clieTelefone AS TELEFONE
      ,Cliente.clieFax AS FAX
      ,Cliente.clieCelular AS CELULAR
      ,Cliente.clieEmail AS EMAIL
  FROM Cliente
  LEFT JOIN Municipio ON Cliente.clieMunicipio = Municipio.muniMunicipio
