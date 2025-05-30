SELECT
  clientes.Codigo AS CODIGO,
  clientes.Nome AS NOME,
  clientes.NomeFantasia AS FANTASIA,
  clientes.Endereco AS ENDERECO,
  clientes.Complemento AS COMPLEMENTO,
  clientes.Municipio AS CIDADE,
  clientes.UF AS UF,
  clientes.CEP AS CEP,
  clientes.CPF AS CNPJ_CNPF,
  clientes.InscricaoMunicipal AS IM,
  clientes.Telefone AS TELEFONE,
  clientes.E_mail AS EMAIL,
  clientes.Contato AS CONTATO,
  clientes.Observacao AS OBSERVACOES
FROM CLIENTES

