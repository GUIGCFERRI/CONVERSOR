select fornecedor.cd_fornecedor as codigo,
fornecedor.nm_fornecedor as nome,
fornecedor.nm_fantasia as fantasia,
fornecedor.endereco,
fornecedor.bairro,
cidade.nm_cidade as cidade,
cidade.uf,
fornecedor.cep,
fornecedor.fone as telefone,
fornecedor.fax,
fornecedor.pessoa_contato as contato,
fornecedor.cnpj as cnpj_cnpf,
fornecedor.inscricao as ie_rg,
fornecedor.observacao_fornecedor as observacoes,
fornecedor.e_mail as email,
fornecedor.celular
from fornecedor
left join cidade on fornecedor.cd_cidade = cidade.cd_cidade
