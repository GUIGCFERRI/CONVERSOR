select
    pr.codigo as codigo,
    pr.nome as nome,
    pr.nome_fantasia as fantasia,
    pr.cpf_cnpj as cnpj_cnpf,
    case when pr.insc_estadual = '' or pr.insc_estadual is null then pr.rg else     pr.insc_estadual end as ie_rg,
    pr.endereco as endereco,
    pr.numero as numero,
    pr.complemento as complemento,
    pr.bairro as bairro,
    c.nome as cidade,
    c.sigla_estado as uf,
    pr.cep as cep,
    min (prct.contato) as telefone,
    min (prccel.contato) as celular,
    min (prcemail.contato) as email,
    pr.nome_pai as pai,
    pr.nome_mae as mae,
    pr.sexo as sexo,
    pr.observacao as observacoes,
    pr.limite_credito as limite_credito,
    pr.data_cadastro as cadastro,
    pr.data_nascimento as nascimento,
    case when pr.inativo = '1' then 'Inativo' else 'Ativo' end as situacao
from participante as pr
left join cidade c on pr.codigo_cidade = c.codigo
left join participante_contato prct on pr.codigo = prct.codigo_participante AND prct.tipo_contato LIKE '%TELEFONE%'
left join participante_contato prccel on pr.codigo = prccel.codigo_participante AND prccel.tipo_contato like '%CELULAR%'
left join participante_contato prcemail on pr.codigo = prcemail.codigo_participante AND prcemail.tipo_contato like '%EMAIL%'
where pr.codigo > '0' and pr.tipo_participante = '0' ----CLIENTES
group by 1,2,3,4,5,6,7,8,9,10,11,12,16,17,18,19,20
order by pr.nome asc