SELECT
  clientes.id as codigo,
  clientes.nome_razao as nome,
  clientes.contato as contato,
  clientes.cep as cep,
  uf.uf AS UF,
  municipio.descricao AS CIDADE,
  clientes.longradouro as endereco,
  clientes.bairro as bairro,
  clientes.numero as numero,
  clientes.complemento as complemento,
  clientes.cnpj_cpf as cnpj_cnpf,
  clientes.inscricao as ie_rg,
  clientes.telefone as telefone,
  clientes.celular as celular,
  clientes.email as email,
  clientes.data_cadastro as cadastro,
  clientes.info_complementar as observacoes,
  clientes.nome_fantasia as fantasia,
  clientes.data_nascimento as nascimento
from clientes
left join uf on uf.id = clientes.iduf
left join municipio on municipio.id = clientes.idmunicipio