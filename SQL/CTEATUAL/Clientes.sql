select
    cadastro_clientes.id as codigo,
    cadastro_clientes.cnpj_cpf as cnpj_cnpf,
    cadastro_clientes.ie as ie_rg,
    cadastro_clientes.razao_social as nome,
    cadastro_clientes.nome_fantasia as fantasia,
    logradouro.descricao as endereco,
    cadastro_clientes.numero as numero,
    cadastro_clientes.complemento as complemento,
    bairro.descricao as bairro,
    cep.cep as cep,
    cidades.descricao as cidade,
    cidades.uf as uf,
    cadastro_clientes.telefone as telefone,
    cadastro_clientes.email as email
from cadastro_clientes
left join cep on cep.id = cadastro_clientes.cep 
left join logradouro on logradouro.id = cep.id_logradouro
left join bairro on bairro.id = logradouro.id_bairro
left join cidades on cidades.id = bairro.id_cidade