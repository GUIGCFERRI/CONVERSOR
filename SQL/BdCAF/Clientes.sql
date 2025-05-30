select Clientes.codigo,
cidades.cidade,
clientes.Nome,
clientes.NomeFant as fantasia,
clientes.fone1 as telefone,
clientes.fone2 as celular,
clientes.fax,
clientes.CpfCgc as cnpj_cnpf,
substring(clientes.ie, 1, 20) as ie_rg,
concat(clientes.TpLogr,'',Clientes.Endereco) as endereco,
clientes.NumLogr as numero,
clientes.CompLogr as complemento,
clientes.Bairro,
clientes.cep,
clientes.uf,
clientes.email,
clientes.obs as observacoes
from clientes
left join cidades on clientes.CodCidade=cidades.codigo
