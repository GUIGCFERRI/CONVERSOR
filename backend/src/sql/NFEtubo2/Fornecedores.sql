SELECT
  Codigo
, case when DocCpf = '' or DocCpf is null then DocCNPJ else DocCpf END AS CNPJ_CNPF
, case when DocRg = '' or DocRg is null then DocCGF else DocRg END AS IE_RG
, Nome AS FANTASIA
, RazaoSocial AS NOME
, Endereco
, Numero
, Bairro
, Complemento
, Cidade
, Estado AS UF
, Cep
, ContatoNome AS CONTATO
, ContatoFone1 AS TELEFONE
, ContatoFone2 AS FAX
, ContatoCelular
, ContatoEmail AS EMAIL
FROM Fornecedor
--WHERE Codigo <> '1'
