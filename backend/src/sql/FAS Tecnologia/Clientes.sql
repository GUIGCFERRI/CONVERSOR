SELECT
  id AS CODIGO,
  nome AS NOME,
  cpf_cnpj AS CNPJ_CNPF,
  endereco,
  bairro,
  cidade,
  cep,
  uf,
  inscricao_estadual AS IE_RG,
  telefone_fixo AS TELEFONE,
  telefone_celular AS CELULAR,
  complemento,
  observacao as OBSERVACOES,
  email
FROM CLIENTE
