select cliente.clie_id_cliente as codigo,
cliente.clie_tx_nome as nome,
cliente.clie_tx_nomefantasia as fantasia,
cliente.clie_tx_telefone as telefone,
cliente.clie_tx_fax as fax,
cliente.clie_tx_celular as celular,
cliente.clie_tx_email as email,
cliente.clie_tx_cnpjcpf as cnpj_cnpf,
cliente.clie_tx_inscricaoestadual as ie_rg,
cliente.clie_tx_pessoacontato as contato,
endereco.ende_tx_logradouro as endereco,
endereco.ende_tx_complemento as complemento,
endereco.cep_tx_cep as cep,
bairro.bair_tx_nome as bairro,
MUNICIPIO.muni_tx_nome as cidade,
UF.uf_tx_sigla as uf
from cliente 
left join ENDERECO_CLIENTE on cliente.clie_id_cliente=ENDERECO_CLIENTe.clie_id_cliente
left join endereco on ENDERECO_CLIENTE.ende_id_endereco=endereco.ende_id_endereco
left join bairro on endereco.bair_id_bairro=bairro.bair_id_bairro
left join MUNICIPIO on bairro.muni_id_municipio=MUNICIPIO.muni_id_municipio
left join uf on MUNICIPIO.uf_id_estado=uf.uf_id_estado




