select
  -- `idPessoa` AS CODIGO,
  `apelido_NomeFantasia` AS FANTASIA,
  `nome_RazaoSocial` AS NOME,
  `cnpj_Cpf` AS CNPJ_CNPF,
  `rg_inscricaoEstadual` AS IE_RG,
  `cliente`,
  `fornecedor`,
  `email` AS EMAIL,
  `endereco1` AS ENDERECO,
  `numero1` AS NUMERO,
  `bairro1` AS BAIRRO,
  `complemento1` AS COMPLEMENTO,
  `nomeCidade1` AS CIDADE,
  `estado1` AS UF,
  `cep1` AS CEP,
  `fone1` AS TELEFONE,
  `fone3` AS CELULAR
from pessoa
where FORNECEDOR = 'S'
