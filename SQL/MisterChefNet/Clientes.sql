SELECT clientes.[Código Cliente] as codigo,
clientes.[Nome Cliente] as nome,
clientes.[Endereço] as endereco,
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
clientes.[Inscrição Estadual] as ie_rg,
clientes.[Observação] as observacoes,
clientes.contato,
Clientes.Numero,
clientes.Complemento,
--CONCAT(clientes.DDD_Celular,clientes.Telefone_Celular) as celular
clientes.Telefone_Celular as celular
from clientes
where clientes.[Nome Cliente]<>''





