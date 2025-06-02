SELECT 
  FORNECEDORES.id AS CODIGO,
  FORNECEDORES.nome_razao AS NOME,
  FORNECEDORES.contato AS CONTATO,
  FORNECEDORES.cep AS CEP,
  uf.uf AS UF,
  municipio.descricao AS CIDADE,
  FORNECEDORES.longradouro AS ENDERECO,
  FORNECEDORES.bairro AS BAIRRO,
  FORNECEDORES.numero AS NUMERO,
  FORNECEDORES.complemento AS COMPLEMENTO,
  FORNECEDORES.cnpj_cpf AS CNPJ_CNPF,
  FORNECEDORES.inscricao AS IE_RG,
  FORNECEDORES.telefone AS TELEFONE,
  FORNECEDORES.celular AS CELULAR,
  FORNECEDORES.email AS EMAIL,
  FORNECEDORES.info_complementar AS OBSERVACOES
FROM FORNECEDORES
left join uf on uf.id = fornecedores.iduf
left join municipio on municipio.id = fornecedores.idmunicipio