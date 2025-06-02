select fornecedor.`codigo`,
fornecedor.`Razaosocial` as nome,
fornecedor.`endereco`,
fornecedor.bairro,
fornecedor.`cidade`,
fornecedor.uf,
fornecedor.cep,
fornecedor.`fone` as telefone,
fornecedor.fax,
fornecedor.`cgccpf` as cnpj_cnpf,
fornecedor.rg_ie as ie_rg,
`fornecedor`.`observacao` as observacoes,
fornecedor.`NomeFantasia` as fantasia,
fornecedor.`email`,
fornecedor.`numero`
from fornecedor
where fornecedor.`codigo`<>'00000'




