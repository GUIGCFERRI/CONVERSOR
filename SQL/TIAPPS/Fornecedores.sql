select
    f.codigo as codigo,
    f.nome as nome,
    f.fantasia as fantasia,
    f.cpfcnpj as cnpj_cnpf,
    f.inscricaoestadual as ie_rg,
    f.endereco as endereco,
    f.numero as numero,
    f.complemento as complemento,
    f.bairro as bairro,
    f.cidade as cidade,
    f.cep as cep,
    f.telefone as telefone,
    f.email as email,
    f.observacoes as observacoes,
    case when f.inativo = 'false' then 'Ativo' else 'Inativo' end as situacao
from fornecedor as f