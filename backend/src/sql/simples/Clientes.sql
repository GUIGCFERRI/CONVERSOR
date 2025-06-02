select `clientes`.codigo,
clientes.`nomerazao` as nome,
clientes.fone as telefone,
clientes.`cpfcnpj` as cnpj_cnpf,
clientes.`inscest` as ie_rg,
clientes.cep,
clientes.`logradouro` as endereco,
clientes.numero,
clientes.`bairro`,
SUBSTRING(clientes.uf from 1 for 2) as uf,
clientes.cidade
from clientes


