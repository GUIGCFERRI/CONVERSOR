SELECT 
  c.Codigo
, c.razaosocial as NOME
, c.NomeFantasia as FANTASIA
, c.Contato
, c.NomePai as PAI
, c.NomeMae as MAE
, c.Endereco
, c.numero
, c.Bairro
, c.pontoreferencia as COMPLEMENTO
, c.Cidade
, c.UF
, c.CEP
, c.InscMunicipal as IM
, case when c.CPF = '' or c.CPF is null then c.CNPJ else c.CPF END AS CNPJ_CNPF
, case when c.RG = '' or c.RG is null then c.IE else c.RG END AS IE_RG
, c.DataNasceu as NASCIMENTO
, c.FAX
, c.Celular
, c.FoneResidencia as TELEFONE
, c.FoneEmpresa as PERSONAL1
, c.DataCadastro as CADASTRO
, c.UltimaCompra as ULTIMA_VENDA
, c.Limite as LIMITE_CREDITO
, c.EMail
, c.conjuge
, c.observacao as OBSERVACOES
, c.cepcobranca as COB_CEP
, c.ufcobranca as COB_UF
, c.cidadecobranca as COB_CIDADE
, c.enderecocobranca as COB_ENDERECO
, c.endnumcobranca as COB_NUMERO
, c.pontorefcobranca as COB_COMPLEMENTO 
, c.bairrocobranca as COB_BAIRRO
FROM clientes c
