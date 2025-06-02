SELECT
  id AS CODIGO,
  for_email AS EMAIL,
  for_fone AS TELEFONE,
CONCAT ((COALESCE(for_cnpj,'')),(COALESCE(FOR_CPF,''))) as cnpj_cnpf,
  for_nome as nome,
  for_cep as cep,
  for_rua as endereco,
  for_bairro as bairro,
  for_complemento as complemento,
  for_contato as contato,
  for_ie as ie_rg,
  for_cel as celular,
  for_numero as numero
  from FORNECEDOR
