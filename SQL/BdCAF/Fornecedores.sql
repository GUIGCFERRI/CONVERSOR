select fornecedores.codigo,
cidades.Cidade,
fornecedores.Descricao as nome,
fornecedores.Fantasia,
fornecedores.Endereco,
fornecedores.bairro,
fornecedores.cep,
fornecedores.uf,
fornecedores.telefone,
fornecedores.fax,
fornecedores.Cgc as cnpj_cnpf,
fornecedores.Email,
fornecedores.ie as ie_rg,
fornecedores.Contato1 as contato,
fornecedores.NumLogr as numero
from fornecedores
left join cidades on fornecedores.CodCidade=cidades.codigo

