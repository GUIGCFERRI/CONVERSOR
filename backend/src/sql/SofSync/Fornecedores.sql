select Fornecedores.[Código do Fornecedor] as codigo,
Fornecedores.Fornecedor as nome,
Fornecedores.[Endereço] as endereco,
Fornecedores.Bairro,
Fornecedores.Cidade,
Fornecedores.uf,
fornecedores.Fone1 as telefone,
Fornecedores.cep,
Fornecedores.Contato,
Fornecedores.[CGC/CPF] as cnpj_cnpf,
fornecedores.[Insc Estadual] as ie_rg,
Fornecedores.[E-mail] as email,
Fornecedores.Fantasia,
Fornecedores.Num as numero
from fornecedores



