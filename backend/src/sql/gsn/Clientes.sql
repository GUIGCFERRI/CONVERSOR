select clientes.id as codigo,
clientes.nome,
clientes.fantasia,
clientes.endereco,
clientes.`numender` as numero,
clientes.`Complemento`,
clientes.`bairro`,
clientes.cidade,
clientes.uf,
clientes.cep,
clientes.`cnpj_cpf` as cnpj_cnpf,
clientes.`insc_rg` as ie_rg,
clientes.`fone` as telefone,
clientes.fax,
clientes.`email`
from clientes
where clientes.`cli_forn`='CLIENTE'

