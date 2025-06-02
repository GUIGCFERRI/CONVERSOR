select    
    fornecedor.id as codigo,
    fornecedor.razaosocial as nome,
    fornecedor.nomefantasia as fantasia,
    fornecedor.endereco as endereco,
    fornecedor.bairro as bairro,
    municipio.descricao as cidade,
    fornecedor.cep as cep,
    estado.sigla as uf,
    fornecedor.telefone as telefone,
    fornecedor.inscricaoestadual as ie_rg,
    fornecedor.cnpj as cnpj_cnpf,
    fornecedor.numero as numero,
    fornecedor.complemento as complemento
from fornecedor 
left join municipio on fornecedor.id_municipio = municipio.id
left join estado on fornecedor.id_estado = estado.id
