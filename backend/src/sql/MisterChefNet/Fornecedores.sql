select Fornecedores.[C�digo Fornecedor] as codigo,
Fornecedores.[Nome Fornecedor] as nome,
Fornecedores.[Endere�o] as endereco,
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
fornecedores.[Observa��o] as observacoes,
fornecedores.[Inscri��o Estadual] as ie_rg,
fornecedores.Numero,
fornecedores.Complemento
from fornecedores





