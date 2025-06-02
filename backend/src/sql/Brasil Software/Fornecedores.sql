select
    fornecedor.codigo as codigo,
    fornecedor.razao_social as nome,
    fornecedor.nome_fantasia as fantasia,
    fornecedor.endereco,
    fornecedor.bairro,
    fornecedor.cep,
    cidade.nome as cidade,
    estado.sigla as uf,
    fornecedor.telefone,
    fornecedor.fax,
    fornecedor.email,
    fornecedor.cgc_cpf as cnpj_cnpf,
    fornecedor.inscricao_estadual as ie_rg,
    fornecedor.inscricao_municipal as im,
    fornecedor.observacao,
    fornecedor.numero
from fornecedor
left join cidade on cidade.codigo = fornecedor.codigo_cidade
left join estado on estado.codigo = cidade.codigo_estado
