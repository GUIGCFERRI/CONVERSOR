select
    pessoa.codigo as codigo,
    pessoa.nome as nome,
    pessoa.nome_fantasia as fantasia,
    pessoa.cep as cep,
    pessoa.endereco as endereco,
    pessoa.ponto_referencia as complemento,
    pessoa.numero as numero,
    cidade.nome as cidade,
    estado.sigla as uf,
    bairro.nome as bairro,
    pessoa.telefone as telefone,
    pessoa.email as email,
    pessoa.cnpj_cpf as cnpj_cnpf,
    case when pessoa.rg = '' or pessoa.rg is null then pessoa.inscricao_estadual else pessoa.rg END AS IE_RG,
    pessoa.inscricao_municipal as im,
    pessoa.observacao as observacoes
from pessoa
left join cidade on cidade.codigo = codigo_cidade
left join estado on estado.codigo = cidade.codigo_estado
left join bairro on bairro.codigo = codigo_bairro
where flag_fornecedor = 'S'
