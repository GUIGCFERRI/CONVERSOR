select
  fornecedores.Codigo as codigo,
  fornecedores.Nome as nome,
  fornecedores.Apelido as fantasia,
  fornecedores.RG as ie_rg,
  fornecedores.CPF as cnpj_cnpf,
  fornecedores.Endereco as endereco,
  fornecedores.Complemento as complemento,
  fornecedores.Bairro as bairro,
  fornecedores.Num as numero,
  fornecedores.Cidade as cidade,
  fornecedores.UF as uf,
  fornecedores.CEP as cep,
  fornecedores.TelComec as telefone,
  fornecedores.TelCelular as celular,
  fornecedores.TelFax as fax,
  fornecedores.Email as email,
  fornecedores.OBS as observacoes
from fornecedores
