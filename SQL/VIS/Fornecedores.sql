select 
    participante.codigo as codigo,
    participante.nome as nome,
    participante.endereco as endereco,
    participante.numero as numero,
    participante.complemento as complemento,
    participante.bairro as bairro,
    cidade.nome as cidade,
    cidade.sigla_estado as uf,
    participante.observacao as observacoes,
    participante.apelido as contato,
    participante.nome_fantasia as fantasia,
    participante.cpf_cnpj as cnpj_cnpf,
    case when participante.rg = '' or participante.rg is null then participante.insc_estadual else participante.rg END AS IE_RG,
    participante.cep as cep,
    participante.email as email
from participante
left join cidade on cidade.codigo = participante.codigo_cidade
where participante.tipo_participante = '1'