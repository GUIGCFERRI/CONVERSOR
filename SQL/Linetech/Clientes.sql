select clientes.codigo as codigo,
clientes.nome as nome,
clientes.fantasia as fantasia,
clientes.nascimento as nascimento,
clientes.endereco as endereco,
clientes.numero as numero,
clientes.complemento as complemento,
clientes.bairro as bairro,
cidade.nome as cidade,
clientes.email as email,
clientes.cep as cep,
clientes.telefone AS telefone,
clientes.cpfcnpj as cnpj_cnpf,
clientes.inscricaoestadual as ie_rg,
clientes.observacoes as observacoes
from clientes
left join cidade on cidade.codigo = clientes.cidade
