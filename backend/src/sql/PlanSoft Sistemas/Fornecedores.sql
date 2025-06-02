select
    fornecedor.codigo as codigo,
    fornecedor.nome as nome,
    fornecedor.email as email,
    fornecedor.cnpj as cnpj_cnpf,
    fornecedor.inscricao_estadual as ie_rg,
    fornecedor.logradouro as endereco,
    fornecedor.numero_logradouro as numero,
    fornecedor.complemento as complemento,
    fornecedor.cep as cep,
    fornecedor.bairro as bairro,
    fornecedor.cidade as cidade,
    fornecedor.uf as uf,
    fornecedor.telefone as telefone
from fornecedor
