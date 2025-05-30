select
    clientes.codigo,
    clientes.razaosocial as nome,
    clientes.fantasia,
    clientes.cnpj as cnpj_cnpf,
    clientes.inscest as ie_rg,
    clientes.endereco,
    clientes.numero,
    clientes.bairro,
    clientes.cep,
    municipios.nome_munic as cidade,
    municipios.uf,
    clientes.telefone,
    clientes.contato,
    clientes.email,
    clientes.complemento
from clientes
left join municipios on clientes.codcidade = municipios.cod_munic