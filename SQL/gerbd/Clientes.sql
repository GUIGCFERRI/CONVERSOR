select cliente.`codigo`,
cliente.`cadastro`,
cliente.nome,
cliente.endereco,
cliente.bairro,
cliente.cidade,
cliente.uf,
cliente.cep,
cliente.fone as telefone,
cliente.fax,
cliente.`cgccpf` as cnpj_cnpf,
cliente.rg_ie as ie_rg,
cliente.`nomefan` as fantasia,
cliente.`email`,
cliente.numero,
cliente.`complemento`
from cliente
where cliente.`codigo`>'00000'

