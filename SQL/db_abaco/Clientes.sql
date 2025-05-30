select `cliente`.id as codigo,
cliente.`CLINOM` as nome,
cliente.cliend as endereco,
cliente.clibai as bairro,
cliente.`CLICID` as cidade,
cliente.`CLIEST` as uf,
cliente.`CLICEP` as cep,
cliente.`CLIFO1` as telefone,
cliente.`CLIFO2` as celular,
coalesce(cliente.clicgc,cliente.`CLICPF`) as cnpj_cnpf,
COALESCE(cliente.`CLII_E`,cliente.`CLIR_G`) as ie_rg,
cliente.`CLIOBS` as observacoes,
cliente.`CLI_NUM` as numero,
cliente.`email` as email,
cliente.`ds_razao_social` as fantasia
from cliente

