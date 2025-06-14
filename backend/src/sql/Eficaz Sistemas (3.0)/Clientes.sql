SELECT 
  C.CLI_CODIGO AS CODIGO
, C.CLI_DTCADASTRO AS CADASTRO
, C.CLI_RAZAOSOCIAL AS NOME
, C.CLI_NOMEFANTASIA AS FANTASIA
, C.CLI_LOGRADOURO AS PERSONAL1
, C.CLI_NUMERO AS NUMERO
, C.CLI_COMPLEMENTO AS COMPLEMENTO
, C.CLI_ENDERECO AS ENDERECO
, C.CLI_BAIRRO AS BAIRRO
, REPLACE (C.CLI_CEP,'.','') AS CEP
, C.CLI_TELEFONE AS TELEFONE
, C.CLI_DTNASCIMENTO AS NASCIMENTO
, C.CLI_NOMECONJUGE AS CONJUGE
, C.CLI_NOMEMAE AS MAE
, C.CLI_NOMEPAI AS PAI
, C.CLI_LOCALTRABALHO AS LOCTRA
, C.CLI_ESTADOCIVIL AS EST_CIVIL
, C.CLI_SEXO AS SEXO
, C.CLI_PROFISSAO AS PROFISSAO
, CASE WHEN C.CLI_CPF = '' OR C.CLI_CPF IS NULL THEN C.CLI_CNPJ ELSE C.CLI_CPF END AS CNPJ_CNPF
, CASE WHEN C.CLI_RG = '' OR C.CLI_RG IS NULL THEN C.CLI_INSCRICAO ELSE C.CLI_RG END AS IE_RG
, C.CLI_INSCRICAOMUNICIPAL AS IM
, C.CLI_EMAIL AS EMAIL
, C.CLI_LIMITECREDITOTOTAL AS LIMITE_CREDITO
, C.CLI_OBSERVACOES AS OBSERVACOES
, CI.CID_NOME AS CIDADE
, CI.CID_UF AS UF
FROM CLIENTES C
LEFT JOIN CIDADES CI ON CI.CID_CODIGO = C.CLI_CID_CODIGO  
