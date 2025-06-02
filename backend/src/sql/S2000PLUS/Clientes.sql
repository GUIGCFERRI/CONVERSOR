select cliente.CLI_CODIGO as codigo,
cliente.cli_nome as nome,
cliente.CLI_CPFCGC as cnpj_cnpf,
cliente.CLI_DTCAD as cadastro,
cliente.CLI_FANTASIA as fantasia,
cliente.CLI_RGINSC as ie_rg,
cliente.CLI_ENDERECO as endereco,
cliente.cli_bairro as bairro,
CIDADE.CID_NOME as cidade,
cidade.UF_SIGLA as uf,
cliente.cli_cep as cep,
concat(cliente.CLI_DDDADM,cliente.CLI_TELADM) as telefone,
CLIENTE.CLI_EMAILADM as email,
cliente.cli_contcom as contato,
cliente.CLI_OBS as observacoes,
cliente.CLI_ENDCOMPL as complemento
from cliente
left join cidade on cliente.CID_CODIGO=cidade.CID_CODIGO


