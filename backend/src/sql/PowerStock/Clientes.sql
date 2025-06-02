select clientes.`codigo_cliente`,
clientes.nome,
clientes.`logradouro` as endereco,
clientes.`numero`,
clientes.`complemento`,
clientes.`bairro`,
clientes.`cidade`,
clientes.uf,
clientes.cep,
clientes.fone as telefone,
clientes.fax,
clientes.email,
clientes.contato,
clientes.`cnpj_cpf` as cnpj_cnpf,
clientes.`insc_rg` as ie_rg,
clientes.`fantasia`,
clientes.`celular`,
clientes.obs as observacoes,
case when clientes.`dataCadastro` is null then CURRENT_DATE
else clientes.`dataCadastro` end as data_cadastro
from clientes



















