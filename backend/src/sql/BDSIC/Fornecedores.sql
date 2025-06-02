select 
clientes.Cli_codigo as codigo,
clientes.cli_nome as nome,
clientes.Cli_nfantasia as fantasia,
clientes.Cli_endereco as endereco,
clientes.Cli_bairro as bairro,
clientes.cli_cep as cep,
clientes.Cli_cidade as cidade,
clientes.cli_uf as uf,
clientes.cli_fone as telefone,
clientes.cli_cpfcgc as cnpj_cnpf,
clientes.cli_ie as ie_rg,
clientes.Cli_email as email,
clientes.Cli_celular as celular,
clientes.cli_fax as fax,
clientes.Cli_endnum as numero,
clientes.Cli_compldoend as complemento
from BDSIC.dbo.Clientes
where clientes.cli_clifor in('Fornecedor','Cliente e For')