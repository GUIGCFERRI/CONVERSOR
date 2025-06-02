select fornecedores.codigo,
fornecedores.razao as nome,
fornecedores.`endereco`,
fornecedores.`numero`,
fornecedores.`complemento`,
fornecedores.`bairro`,
fornecedores.cep,
fornecedores.`cidade`,
fornecedores.uf,
fornecedores.`cnpj` as cnpj_cnpf,
fornecedores.`insc_est` as ie_rg,
fornecedores.fone as telefone,
`fornecedores`.fax,
`fornecedores`.`contato`,
fornecedores.`email`,
fornecedores.obs as observacoes,
fornecedores.`fantasia`,
fornecedores.celular
from fornecedores
where fornecedores.razao<>''

















