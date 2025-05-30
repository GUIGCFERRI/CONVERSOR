select cliente.id_cliente as codigo,
case when cliente.`CNPJ_cliente` ='' then cliente.`CPF_cliente` 
else cliente.`CNPJ_cliente` end as cnpj_cnpf,
cliente.`xNome_cliente` as nome,
cliente.`xLgr_cliente` as endereco,
cliente.`nro_cliente` as numero,
cliente.`xCpl_cliente` as complemento,
cliente.`xBairro_cliente` as bairro,
cliente.`xMun_cliente` as cidade,
cliente.`UF_cliente` as uf,
cliente.`CEP_cliente` as cep,
cliente.`fone_cliente` as telefone,
cliente.`IE_cliente` as ie_rg,
cliente.`email_cliente` as email
from cliente

