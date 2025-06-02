select cliente.codcli as codigo,
cliente.razao as nome,
cliente.fantasia,
cliente.cpf as cnpj_cnpf,
cliente.rg as ie_rg,
cliente.endereco,
cliente.numero,
cliente.complemento,
cliente.bairro,
cliente.cidade,
cliente.uf,
cliente.cep,
cliente.fone as telefone,
cliente.celular,
cliente.fax,
cliente.email
from cliente
where cliente.codcli>0