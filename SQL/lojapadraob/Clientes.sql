select cliente.`NOMECLI` as nome,
cliente.`ENDCLI` as endereco,
cliente.`CIDADECLI` as cidade,
cliente.`ESTADOCLI` as uf,
cliente.`FONECLI` as telefone,
cliente.`BAIRROCLI` as bairro,
cliente.`FONEFAX` as fax,
cliente.`CEPCLI` as cep,
cliente.`E_MAIL` as email,
cliente.`CELULAR` as celular,
cliente.`CONTATO`,
cliente.`NOMEFANTASIA` as fantasia,
cliente.obs as observacoes,
cliente.`INSCESTCLI` as ie_rg,
coalesce(cliente.`CGCCLI`,cliente.`CPFCLI`) as cnpj_cnpf,
cliente.numero,
cliente.`COMPLEMENTOCLI` as complemento
from cliente






