select
  cliente.CliCod as codigo,
  cliente.CliNom as nome,
  clienteendereco.CliRua as endereco,
  clienteendereco.CliBai as bairro,
  clienteendereco.CliCep as cep,
  clienteendereco.CliTel as telefone,
  cidade.cidnom as cidade,
  cidade.estcod as uf,
  clienteendereco.CliComplemento as complemento,
  cliente.CliFax as fax,
  cliente.CliCel as celular,
  cliente.CliCon as contato,
  case when cliente.CliCpf = '' or cliente.CliCpf is null then cliente.CliCnpj else cliente.CliCpf END AS CNPJ_CNPF,
  case when cliente.CliRg = '' or cliente.CliRg is null then cliente.CliIes else cliente.CliRg END AS IE_RG,
  clienteemails.CliEmail as email,
  cliente.CliVlrLimCre as limite_credito,
  cliente.CliDtaCad as cadastro
from cliente
left join clienteemails on clienteemails.clicod = cliente.CliCod
left join clienteendereco on clienteendereco.clicod = cliente.CliCod
left join cidade on cidade.cidcod = clienteendereco.CliCidCod