select 
cliente.cod_cliente as codigo,
cliente.nome,
case when cliente.cpf<>'' then cliente.cpf else  cliente.cnpj end "CNPJ_CNPF",
case when cliente.ie <>'' then cliente.ie else  cliente.rg end "IE_RG",
cliente.complemento,
cliente.contato,
cliente.ddd_fone1||cliente.fone1 as telefone,
cliente.ddd_fone2||cliente.fone2 as celular,
cliente.email,
cliente.rua as endereco,
cliente.numero,
cliente.bairro,
ibge.tx_municipio as cidade,
ibge.tx_uf as uf,
cliente.cep as cep
from cliente
left join ibge on ibge.nu_cepfinal = cast (cliente.cep as integer)