select
    clienteeventual.id as codigo,
    clienteeventual.nome as nome,
    clienteeventual.endereco as endereco,
    clienteeventual.bairro as bairro,
    estado.sigla as uf,
    clienteeventual.telefone as telefone,
    clienteeventual.inscricaoestadual as ie_rg,
    municipio.descricao as cidade,
    clienteeventual.cep as cep,
    clienteeventual.cnpj as cnpj_cnpf,
    clienteeventual.numero as numero
from clienteeventual
left join municipio on clienteeventual.id_municipio = municipio.id
left join estado on clienteeventual.id_estado = estado.id
