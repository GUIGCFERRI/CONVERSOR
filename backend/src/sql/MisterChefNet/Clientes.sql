SELECT clientes.[C�digo Cliente] as codigo,
clientes.[Nome Cliente] as nome,
clientes.[Endere�o] as endereco,
clientes.Bairro as bairro,
clientes.cidade,
clientes.Estado as uf,
clientes.cep,
--concat(clientes.DDD,clientes.Telefone) as telefone,
clientes.Telefone,
clientes.fax,
clientes.[e-mail] as email,
case when clientes.cgc is null or clientes.cgc='' then clientes.CPF
else clientes.cgc end as cnpj_cnpf,
clientes.[Inscri��o Estadual] as ie_rg,
clientes.[Observa��o] as observacoes,
clientes.contato,
Clientes.Numero,
clientes.Complemento,
--CONCAT(clientes.DDD_Celular,clientes.Telefone_Celular) as celular
clientes.Telefone_Celular as celular
from clientes
where clientes.[Nome Cliente]<>''





