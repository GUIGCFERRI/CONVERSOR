select fornecedores.IdFornecedor as codigo,
fornecedores.NomeFornecedor as nome,
fornecedores.Cnpj as cnpj_cnpf,
fornecedores.InscEst as ie_rg,
fornecedores.Endereco,
fornecedores.numero,
Fornecedores.Bairro,
fornecedores.cidade,
fornecedores.Estado as uf,
fornecedores.cep,
concat(fornecedores.ddd,fornecedores.telefone) as telefone,
fornecedores.Observacao as observacoes,
fornecedores.NomeFantasia as fantasia
from fornecedores


