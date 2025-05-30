select
    pessoa.id as codigo,
    pessoa.nome_razao as nome,
    pessoa.apelido_fantasia as fantasia,
    pessoa.cpf_cnpj as cnpj_cnpf,
    pessoa.rg_insc as ie_rg,
    pessoa.insc_municipal as im,
    pessoa.endereco as endereco,
    pessoa.endereco_numero as numero,
    pessoa.complemento as complemento,
    pessoa.bairro as bairro,
    municipio.descricao as cidade,
    uf.sigla as uf,
    pessoa.cep as cep,
    pessoa.fone1 as telefone,
    pessoa.fone2 as celular,
    pessoa.email as email,
    pessoa.obs as observacoes,
    --pessoa.cad_data as cadastro,   
    pessoa.tipo_cad_cliente,
    pessoa.tipo_cad_fornecedor
from public.pessoa
left join public.municipio on municipio.id = pessoa.id_municipio
left join public.uf on uf.id = municipio.id_uf
where tipo_cad_fornecedor <> '1'
