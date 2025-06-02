select
  clientes.codigo as codigo,
  clientes.nome as nome,
  clientes.limite as limite_credito,
  clientes.saldodev as valor_a_receber,
  clientes.endereco as endereco,
  clientes.numero as numero,
  clientes.bairro as bairro,
  clientes.cidade as cidade,
  clientes.uf as uf,
  clientes.cep as cep,
  case when clientes.cnpj = '' then clientes.cpf else clientes.cnpj end as cnpj_cnpf,
  case when clientes.identidade = '' then clientes.ie else clientes.identidade end as ie_rg,
  clientes.dtcadastro as cadastro,
  clientes.identidade,
  clientes.ie,
  clientes.fax as fax,
  clientes.celular as celular,
  clientes.telefone as telefone,
  clientes.contato as contato,
  clientes.email as email,
  clientes.obs as observacoes
from clientes

