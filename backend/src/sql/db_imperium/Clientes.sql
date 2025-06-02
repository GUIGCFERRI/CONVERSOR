select cliente.`idCliente` as codigo,
cliente.`nome`,
cliente.`endereco`,
cliente.bairro,
cliente.cidade,
cliente.uf,
cliente.cep,
cliente.cpf as cnpj_cnpf,
cliente.rg as ie_rg,
cliente.fone as telefone,
cliente.celular,
cliente.`numero`,
cliente.`complemento`,
cliente.`email`,
cliente.`fantasia` 
from cliente



