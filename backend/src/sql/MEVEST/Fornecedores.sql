select
    f.id as codigo,
    f.nomerazaosocial as nome,
    f.nomefantasia as fantasia,
    f.cpfcnpj as cnpj_cnpf,
    f.inscricaoestadual as ie_rg,
    f.inscricaomunicipal as im,
    e.logradouro as endereco,
    e.numero as numero,
    e.complemento as complemento,
    e.bairro as bairro,
    e.cep as cep,
    m.nome as cidade,
    es.sigla as uf,
    t.numerotelefone as telefone,
    em.enderecoemail as email,
    f.observacao as observacoes,
    case when f.ativo = 'true' then 'Ativo' else 'Inativo' end as SITUACAO
from fornecedor as f
left join fornecedor_endereco fe on f.id = fe.fornecedorid
left join endereco e on fe.enderecoid = e.id
left join municipio m on e.municipioid = m.id
left join estado es on m.estadoid = es.id
left join fornecedor_telefone ft on f.id = ft.fornecedorid
left join telefone t on ft.telefoneid = t.id
left join fornecedor_email fm on f.id = fm.fornecedorid
left join email em on fm.emailid = em.id
