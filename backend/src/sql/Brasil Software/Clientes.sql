select
    cliente.codigo as codigo,
    cliente.razao_social as nome,
    cliente.nome_fantasia as fantasia,
    cliente.endereco as endereco,
    cliente.bairro as bairro,
    cliente.cep as cep,
    cidade.nome as cidade,
    estado.sigla as uf,
    cliente.telefone as telefone,
    cliente.fax as fax,
    cliente.email as email,
    case when cliente.identidade = '' or cliente.identidade is null then cliente.inscricao_estadual else cliente.identidade END AS IE_RG,
    cliente.cgc_cpf as cnpj_cnpf,
    cliente.inscricao_municipal as im,
    cliente.limite_credito as limite_credito,
    cliente.data_ultima_compra as ultima_compra,
    cliente.data_nascimento as nascimento,
    cliente.observacao as observacoes,
    cliente.data_cadastro as cadastro,
    cliente.numero as numero,
    cliente.complemento_endereco as complemento
from cliente
left join cidade on cidade.codigo = cliente.codigo_cidade
left join estado on estado.codigo = cidade.codigo_estado
