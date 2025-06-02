select clientes.cd_cliente as codigo,
clientes.nome,
case when clientes.classe='Física' then
clientes.cpf else clientes.cgc end "CNPJ_CNPF",
case when clientes.classe='Física' then
clientes.rg else clientes.insc_est end "ie_rg",
clientes.contato,
clientes.cep,
clientes.endereco,
clientes.uf,
clientes.bairro,
clientes.cidade,
clientes.telefone,
clientes.fax,
clientes.celular,
clientes.email,
clientes.data_cadastro as cadastro,
clientes.data_nascimento as nascimento,
clientes.complemento,
clientes.fantasia,
clientes.numero
from clientes

