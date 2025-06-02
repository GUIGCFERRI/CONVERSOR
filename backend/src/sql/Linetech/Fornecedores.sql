select fornecedor.codigo as codigo,
fornecedor.nome as nome,
fornecedor.fantasia as fantasia,
fornecedor.cpfcnpj as cnpj_cnpf,
fornecedor.endereco as endereco,
fornecedor.numero as numero,
fornecedor.complemento as complemento,
fornecedor.bairro as bairro,
cidade.nome as cidade,
fornecedor.email as email,
fornecedor.cep as cep,
fornecedor.telefone as telefone,
fornecedor.inscricaoestadual as ie_rg
 from fornecedor
 left join cidade on cidade.codigo = fornecedor.cidade
