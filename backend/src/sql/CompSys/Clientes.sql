select
    c.idcliente as codigo,
    case when c.razaosocial= '' or c.razaosocial is null then c.nome else c.razaosocial end as nome,
    c.nomefantasia as fantasia,
    case when c.cnpj = '' or c.cnpj is null then c.cpf else c.cnpj END as cnpj_cnpf,
    c.inscricaoestadual as ie_rg,
    c.inscricaomunicipal as im,
    e.logradouro as endereco,
    e.numero as numero,
    e.complemento as complemento,
    e.bairro as bairro,
    e.cep as cep,
    m.descricao as cidade,
    uf.sigla as uf,
    ct.email as email,
    ct.telefone as telefone,
    ct.celular as celular,
    c.limitedecredito as limite_credito,
    case when c.ativo = '1' then 'Ativo' else 'Inativo' end as situacao
from cliente as c
left join contato ct on c.idcontato = ct.idcontato
left join endereco e on c.idendereco = e.idendereco
left join municipio m on e.idmunicipio = m.idmunicipio
left join unidadefederativa uf on e.idunidadefederativa = uf.idunidadefederativa