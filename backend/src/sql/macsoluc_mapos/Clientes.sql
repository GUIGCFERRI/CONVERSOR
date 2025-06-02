select
  idClientes AS CODIGO,
  nomeCliente AS NOME,
  sexo,
  documento AS CNPJ_CNPF,
  telefone,
  celular,
  email,
  dataCadastro AS CADASTRO,
  rua AS ENDERECO,
  numero,
  bairro,
  cidade,
  estado AS UF,
  cep
  from clientes