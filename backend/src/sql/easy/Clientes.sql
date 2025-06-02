select ep001.clientes.codigo_cli as codigo,
ep001.clientes.nome01_cli as nome,
ep001.clientes.fantas_cli as fantasia,
ep001.clientes.endere_cli as endereco,
ep001.clientes.numero_cli as numero,
ep001.clientes.comple_cli as complemento,
ep001.clientes.bairro_cli as bairro,
concat(ep001.clientes.cep001_cli,ep001.clientes.cep002_cli) as cep,
ep001.clientes.cpf001_cli as cnpj_cnpf,
ep001.clientes.rg0001_cli as ie_rg,
ep001.clientes.limite_cli as limite_credito,
ep001.clientes.fone01_cli as telefone,
ep001.clientes.fax001_cli as fax,
ep001.clientes.emaill_cli as email,
ep001.clientes.celula_cli as celular,
ep001.clientes.dcadas_cli as cadastro
from ep001.clientes

