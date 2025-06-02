SELECT
  codigoCliente AS CODIGO,
  nome AS NOME,
  CONCAT (COALESCE(cpf,''), COALESCE(cnpj,'')) AS CNPJ_CNPF,
  CONCAT (COALESCE(ie,''), COALESCE(rg,'')) AS IE_RG,
  CONCAT (COALESCE(ddd1,''), COALESCE(telefone,'')) AS TELEFONE,
  CONCAT (COALESCE(ddd2,''), COALESCE(celular,'')) AS CELULAR,
  email AS EMAIL,
  cep AS CEP,
  endereco AS ENDERECO,
  numero AS NUMERO,
  bairro AS BAIRRO,
  complemento AS COMPLEMENTO,
  cidade,
  uf, 
  referencia AS OBSERSERVACOES,
  apelido AS FANTASIA,
  contato AS CONTATO
FROM CLIENTE