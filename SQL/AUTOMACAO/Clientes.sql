select
  Codigo AS CODIGO,
  Nome AS NOME,
  Nome_Fanta AS FANTASIA,
  Endereco,
  Numero,
  Bairro,
  Cidade,
  Estado AS UF,
  CEP,
  Telefone,
  Celular,
  Email,
  CONCAT (COALESCE(CPF,''),  COALESCE(CNPJ,'')) AS CNPJ_CNPF,
  IE AS IE_RG,
  Complemento
from clientes