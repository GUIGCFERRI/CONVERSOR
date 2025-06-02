select
    id_fornecedor as codigo,
    nome_fantasia as fantasia,
    razao_social as nome,
    endereco_logradouro as endereco,
    endereco_numero as numero,
    endereco_bairro as bairro,
    endereco_cidade as cidade,
    endereco_uf as uf,
    endereco_cep as cep,
    endereco_complemento as complemento,
    telefone1 as telefone,
    celular1 as celular,
    email as email,
    cnpj as cnpj_cnpf,
    nome_contato1 as contato,
    inscricao_estadual as ie_rg
from fornecedor
where  fornecedor.id_fornecedor > '0'