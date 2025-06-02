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
    prct.contato as telefone,
    prccel.contato as celular,
    prcemail.contato as email,
    pr.observacao as observacoes,
    case when pr.inativo = '1' then 'Inativo' else 'Ativo' end as situacao
from participante as pr
left join cidade c on pr.codigo_cidade = c.codigo
left join participante_contato prct on pr.codigo = prct.codigo_participante AND prct.tipo_contato = 'TELEFONE'
left join participante_contato prccel on pr.codigo = prccel.codigo_participante AND prccel.tipo_contato = 'CELULAR'
left join participante_contato prcemail on pr.codigo = prcemail.codigo_participante AND prcemail.tipo_contato = 'EMAIL'
where pr.codigo > '0' and pr.tipo_participante = '1' ----FORNECEDORES