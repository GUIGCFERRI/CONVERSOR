select clientes.codigo,
substring( clientes.nome from 1 for 60)as nome,
substring( clientes.endereco from 1 for 60) as endereco,
clientes.bairro,
clientes.cidade,
clientes.uf, 
replace(clientes.cep,'-','') as cep,
replace(replace(replace(replace(clientes.fone,'(',''),')',''),'-',''),' ','') as telefone,
replace(replace(replace(replace(clientes.fax,'(',''),')',''),'-',''),' ','') as fax,
clientes.contato, 
case when clientes.tipo_cliente = 'J' then
clientes.cnpj else
clientes.cpf end "CNPJ_CNPF",
case when clientes.tipo_cliente='J' then
clientes.inscricao_estadual else
clientes.ci end "IE_RG",
clientes.data_ficha as cadastro,
clientes.data_nasc as nascimento,
clientes.conjuge,
replace(replace(replace(replace(clientes.celular,'(',''),')',''),'-',''),' ','') as celular,
substring( clientes.nome_fantasia from 1 for 30)as fantasia,
clientes.endereco_numero as numero
from clientes
where clientes.codigo >1
