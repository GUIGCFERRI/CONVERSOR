SELECT 
  tec_customers.id AS CODIGO,
  tec_customers.name AS NOME,
  tec_customers.endereco AS ENDERECO,
  tec_customers.phone AS TELEFONE,
  tec_customers.bairro AS BAIRRO,
  tec_customers.municipio AS CIDADE,
  tec_customers.cep AS CEP,
  tec_customers.uf AS UF,
  tec_customers.cf1 AS CELULAR,
  tec_customers.cf2 AS FAX,
  tec_customers.email AS EMAIL,
  tec_customers.cnpj AS CNPJ_CNPF,
  tec_customers.IE AS IE_RG,
  tec_customers.IM AS IM
FROM tec_customers