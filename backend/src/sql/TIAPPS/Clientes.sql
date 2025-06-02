select
    cli.codigo as codigo,
    cli.nome as nome,
    cli.fantasia as fantasia,
    cli.cpfcnpj as cnpj_cnpf,
    case when cli.rg = '' or cli.rg is null then cli.inscricaoestadual else cli.rg END as IE_RG,
    cli.endereco as endereco,
    cli.numero as numero,
    cli.complemento as complemento,
    cli.bairro as bairro,
    cid.nome as cidade,
    cli.cep as cep,
    cli.telefone as telefone,
    cli.email as email,
    cli.pai as pai,
    cli.mae as mae,
    cli.nomeconjuge as conjuge,
    cli.profissao as profissao,
    cli.nascimento as nascimento,
    cli.observacoes as observacoes,
    cli.limitecredito as limite_credito,
    case when cli.inativo = 'false' then 'Ativo' else 'Inativo' end as situacao
from clientes as cli
left join cidade cid on cli.cidade = cid.codigo
