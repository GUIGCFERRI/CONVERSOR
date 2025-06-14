SELECT 
  CLIID AS CODIGO
, CLINOME AS FANTASIA
, CLINOMERAZAO AS NOME
, CLIENDERECO AS ENDERECO
, CLIBAIRRO AS BAIRRO
, CLICEP AS CEP
, CLICIDADE AS CIDADE
, CLIUF AS UF
, CLIFONE01 AS TELEFONE
, CLIFONE02 AS CELULAR
, CLICPF AS CNPJ_CNPF
, CLIRG AS IE_RG
-- , CLIINSCRICAOESTADUAL
, CLIDATACADASTRO AS CADASTRO
, CLICOMENTARIO AS OBSERVACOES
, CLILIMITECREDITO AS LIMITE_CREDITO
, CLIEMAIL AS EMAIL 
, CLINASCIMENTO AS NASCIMENTO
, CLICONTATO AS CONTATO
, CLIINSCRICAOMUNICIPAL AS IM
, (CLIPONTOREFERENCIA ||' '|| CLIENDERECOCOMPLEMENTO) AS COMPLEMENTO
, CLINOMEPAI AS PAI
, CLINOMEMAE AS MAE
, CLICONJUGE AS CONJUGE
, CLITRABALHO AS LOCTRA
, CLIEMPRESAPROFISSAO AS PROFISSAO
FROM CLIENTES