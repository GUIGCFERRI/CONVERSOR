select
  codigo as codigo,
  razsoc as nome,
  nomfan as fantasia,
  contato as contato,
  cgc as cnpj_cnpf,
  insest as ie_rg,
  inscmunic as im,
  CONCAT(tipoender, ' ', ender) as endereco,
  numero as numero,
  complemen as complemento,
  bairro as bairro,
  munic as cidade,
  estado as uf,
  cep as cep,
  CONCAT(dddtel, '', telefone) as telefone,
  CONCAT(dddfax, '', telefax) as fax,
  email as email,
  obs as observacoes
from clientes
where tipo_cliente = 'F'
