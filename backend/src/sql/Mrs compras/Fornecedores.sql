select
    fornecedores.codigo as codigo,
    fornecedores.nome_fantasia as fantasia,
    fornecedores.razao_social as nome,
    fornecedores.cpf as cnpj_cnpf,
    fornecedores.rg as ie_rg,
    fornecedores.endereco as endereco,
    fornecedores.complemento as complemento,
    fornecedores.numero as numero,
    fornecedores.bairro as bairro,
    fornecedores.cidade as cidade,
    fornecedores.cep as cep,
    fornecedores.estado as uf,
    fornecedores.telefone as telefone,
    fornecedores.celular as celular,
    fornecedores.fax as fax,
    fornecedores.email_nfe as email,
    fornecedores.observacao as observacoes
from fornecedores