select fornecedor.forn_id_fornecedor as codigo,
fornecedor.forn_tx_nome as nome,
fornecedor.forn_tx_nomefantasia as fantasia,
fornecedor.forn_tx_cnpjcpf as cnpj_cnpf,
fornecedor.forn_tx_telefone as telefone,
fornecedor.forn_tx_fax as fax,
fornecedor.forn_tx_celular as celular,
fornecedor.forn_tx_inscricaoestadual as ie_rg,
fornecedor.forn_tx_email as email,
fornecedor.forn_tx_observacao as observacoes,
fornecedor.forn_tx_contato as contato,
fornecedor.forn_tx_logradouro as endereco,
fornecedor.forn_tx_complemento as complemento,
fornecedor.cep_tx_cep as cep,
bairro.bair_tx_nome as bairro,
MUNICIPIO.muni_tx_nome as cidade,
uf.uf_tx_sigla as uf
from fornecedor
left join bairro on fornecedor.bair_id_bairro=bairro.bair_id_bairro
left join municipio on bairro.muni_id_municipio=municipio.muni_id_municipio
left join uf on MUNICIPIO.uf_id_estado=uf.uf_id_estado


