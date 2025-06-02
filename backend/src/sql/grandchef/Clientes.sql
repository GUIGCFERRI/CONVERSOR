select 
clientes.id as codigo,
clientes.nome,
clientes.`Sobrenome` as fantasia,
clientes.cpf as cnpj_cnpf,
clientes.rg as ie_rg,
clientes.email,
clientes.fone1 as telefone
from clientes 
