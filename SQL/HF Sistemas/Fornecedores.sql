select
  fornecedores_clientes.id as codigo,
  fornecedores_clientes.nome_razao as nome,
  fornecedores_clientes.nome_fantasia as fantasia,
  fornecedores_clientes.cpf_cnpj as cnpj_cnpf,
  fornecedores_clientes.rg_icms as ie_rg,
  fornecedores_clientes.telefone as telefone,
  fornecedores_clientes.celular as celular,
  fornecedores_clientes.cep as cep,
  fornecedores_clientes.endereco as endereco,
  fornecedores_clientes.complemento as complemento,
  fornecedores_clientes.numero as numero,
  fornecedores_clientes.bairro as bairro,
  fornecedores_clientes.cidade as cidade,
  fornecedores_clientes.estado as uf,
  fornecedores_clientes.email as email,
  fornecedores_clientes.obs as observacoes
from fornecedores_clientes
where fornecedores_clientes.tipo = 'F'
