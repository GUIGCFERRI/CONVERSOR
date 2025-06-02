select
    c.id as codigo,
    c.nomerazaosocial as nome,
    c.nomefantasia as fantasia,
    c.cpfcnpj as cnpj_cnpf,
    case when c.rg = '' or c.rg is null then c.inscricaoestadual else c.rg END AS ie_rg,
    c.inscricaomunicipal as im,
    e.logradouro as endereco,
    e.numero as numero,
    e.complemento as complemento,
    e.bairro as bairro,
    e.cep as cep,
    m.nome as cidade,
    es.sigla as uf,
    t.numerotelefone as telefone,
    c.datanascimento as nascimento,
    c.naturalidade as naturalidade,
    c.pai as pai,
    c.mae as mae,
    case when c.ativo = 'true' then 'Ativo' else 'Inativo' end as SITUACAO
from cliente as c
left join cliente_endereco ce on c.id = ce.clienteid
left join endereco e on ce.enderecoid = e.id
left join municipio m on e.municipioid = m.id
left join estado es on m.estadoid = es.id
left join cliente_telefone ct on c.id = ct.clienteid
left join telefone t on ct.telefoneid = t.id
