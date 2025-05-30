SELECT 
  c.cliId as CODIGO
, c.cliNome as NOME
, c.cliCpfCgc as CNPJ_CNPF
, c.cliRgInsc as IE_RG
, c.cliFantasia as FANTASIA
, c.cliFatEnd as ENDERECO
, c.cliFatEndNum as NUMERO
, c.cliFatEndComp as COMPLEMENTO
, c.cliFatBairro as BAIRRO
, c.cliFatCidade as CIDADE
, c.cliFatUf as UF
, c.cliFatCep as CEP
, c.cliObsVend as OBSERVACOES
, c.cliFone as TELEFONE
, c.cliFax as FAX
, c.cliCelular as CELULAR
, c.cliEmail as EMAIL
, c.cliInscricaoMunicipal as IM
FROM cliente c 
WHERE  c.cliTipoCad <> '0'