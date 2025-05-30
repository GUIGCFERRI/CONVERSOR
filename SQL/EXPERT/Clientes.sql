select
  cad_clientes.id as codigo, 
  cad_clientes.nome_cliente as nome,
  cad_clientes.cpf_cnpj as cnpj_cnpf,
  cad_clientes.rg_ie as ie_rg,
  cad_clientes.cep as cep,
  cad_clientes.endereco as endereco,
  cad_clientes.numero as numero,
  cad_clientes.bairro as bairro,
  cad_clientes.cidade as cidade,
  cad_clientes.uf as uf,
  cad_clientes.email as email,
  cad_clientes.telefone as telefone,
  cad_clientes.celular as celular,
  cad_clientes.data_cadastro as cadstro
from cad_clientes
