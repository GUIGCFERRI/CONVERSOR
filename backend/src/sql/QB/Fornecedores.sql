select
    codigo,
    razao_social as nome,
    fantasia,
    cpf_cnpj as cnpj_cnpf,
    rg_ie as ie_rg,
    cep,
    logradouro as endereco,
    bairro,
    municipio as cidade,
    estado as uf,
    numero,
    complemento,
    email,
    telefone_residencial as telefone,
    telefone_celular as celular
from pessoa
where tipo = '4'