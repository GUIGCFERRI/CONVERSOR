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
, c.cliCobEnd as COB_ENDERECO
, c.cliCobEndNum as COB_NUMERO
, c.cliCobBairro as COB_BAIRRO
, c.cliCobCidade as COB_CIDADE
, c.cliCobUf as COB_UF
, c.cliCobCep as COB_CEP
, c.cliDatCad as CADASTRO
, c.cliDatNasc as NASCIMENTO
, c.cliDatUltComp as ULTIMA_VENDA
, c.cliLimitCred as LIMITE_CREDITO
, c.cliObsVend as OBSERVACOES
, c.cliFone as TELEFONE
, c.cliFax as FAX
, c.cliCelular as CELULAR
, c.cliEmail as EMAIL
, c.cliNomePai as PAI
, c.cliNomeMae as MAE
, c.cliLocalTrabalho as LOCTRA
, c.cliNomeConjuge as CONJUGE
, c.cliContribuinteIcms as INDIEDEST
, c.cliInscricaoMunicipal as IM
FROM cliente c 
WHERE  c.cliTipoCad = '0'