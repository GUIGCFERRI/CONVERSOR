select principais.fornecedor.for_id as codigo,
principais.fornecedor.for_cpfcnpj as cnpj_cnpf,
principais.fornecedor.for_razao_social as nome,
principais.fornecedor.for_logradouro as endereco,
principais.fornecedor.for_bairro as bairro,
principais.fornecedor.for_numero as numero,
principais.fornecedor.for_celular as celular,
principais.fornecedor.for_inscricao_estadual as ie_rg,
principais.fornecedor.for_email as email,
principais.fornecedor.for_fantasia as fantasia,
auxiliares.municipio.nome_municipio as cidade,
auxiliares.uf.sigla as uf
from principais.fornecedor
left join auxiliares.municipio on principais.fornecedor.fk_cod_municipio=auxiliares.municipio.cod_municipio
left join auxiliares.uf on auxiliares.municipio.cod_estado=auxiliares.uf.uf
