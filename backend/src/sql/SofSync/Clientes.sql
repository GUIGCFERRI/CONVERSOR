select [Cadastro de Clientes].[C�digo do Cliente] as codigo,
[Cadastro de Clientes].[Raz�o Social] as nome,
[Cadastro de Clientes].[Nome do Cliente] as nome,
[Cadastro de Clientes].[Endere�o] as endereco,
[Cadastro de Clientes].Bairro,
[Cadastro de Clientes].Cidade,
[Cadastro de Clientes].UF,
[Cadastro de Clientes].[Fone Resid] as telefone,
[Cadastro de Clientes].CEP,
[Cadastro de Clientes].CGC as cnpj_cnpf,
[Cadastro de Clientes].[Inscri��o Estadual] as ie_rg,
[Cadastro de Clientes].contato,
COALESCE([Cadastro de Clientes].[Dt Cadastro],GETDATE()) as cadastro,
[Cadastro de Clientes].[E-mail] email,
[Cadastro de Clientes].Num as numero
from [Cadastro de Clientes]





