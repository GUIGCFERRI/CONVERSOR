select Fornecedores.[Código Fornecedor] as codigo,
Fornecedores.[Nome Fornecedor] as nome,
Fornecedores.[Endereço] as endereco,
fornecedores.bairro,
fornecedores.Cidade,
fornecedores.Estado as uf,
fornecedores.CEP,
--CONCAT(fornecedores.DDD,Fornecedores.Telefone) as telefone,
Fornecedores.Telefone,
fornecedores.fax,
fornecedores.[e-mail] as email,
fornecedores.Contato,
fornecedores.cgc as cnpj_cnpf,
fornecedores.[Observação] as observacoes,
fornecedores.[Inscrição Estadual] as ie_rg,
fornecedores.Numero,
fornecedores.Complemento
from fornecedores





