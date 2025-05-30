SELECT
  controle as codigo,
  -- substring(controle, 3,7) as codigo,
  Nome AS NOME,
  Endereco,
  Bairro,
  Cidade,
  Estado AS UF,
  Cep,
  Telefone,
  CONCAT (COALESCE(Cgc, ''),  COALESCE(Cpf,'')) AS CNPJ_CNPF,
  Pai,
  Mae,
  Identidade AS IE_RG,
  Fantasia,
  Email,
  Numero
FROM TBCLIENTES
