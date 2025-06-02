SELECT 
  pessoas.id AS CODIGO, 
  pessoas.nome AS NOME,
  pessoas.nomeFantasia AS FANTASIA,
  pessoas.contato AS CONTATO,
  pessoas.logradouro AS ENDERECO,
  pessoas.complemento AS COMPLEMENTO,
  pessoas.numero AS NUMERO,
  pessoas.bairro AS BAIRRO,
  pessoas.cidade AS CIDADE,
  pessoas.uf AS UF,
  pessoas.CEP AS CEP,
  pessoas.celularPessoal AS CELULAR,
  pessoas.telefoneResidencial AS TELEFONE,
  case when pessoas.cnpj = '' or pessoas.cnpj is null then pessoas.cpf else pessoas.cnpj END AS CNPJ_CNPF,
  case when pessoas.inscricaoEstadual = '' or pessoas.inscricaoEstadual is null then pessoas.registroGeral else pessoas.inscricaoEstadual END AS IE_RG,
  pessoas.inscricaoMunicipal AS IM,
  pessoas.dataNascimento AS NASCIMENTO,
  pessoas.emailPessoal AS EMAIL,
  pessoas.limite AS LIMITE_CREDITO,
  pessoas.observacao AS OBSERVACOES
FROM pessoas
WHERE pessoas.cliente = '1'
