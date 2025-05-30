select
  fornecedor.Codigo as codigo,
  fornecedor.Nome as nome,
  fornecedor.Fantasia as fantasia,
  fornecedor.Cnpj as cnpj_cnpf,
  fornecedor.Inscricao as ie_rg,
  fornecedor.Endereco as endereco,
  fornecedor.Numero as numero,
  fornecedor.Complemento as complemento,
  fornecedor.Bairro as bairro,
  fornecedor.Cep as cep,
  fornecedor.Cidade as cidade,
  fornecedor.Fone as telefone,
  fornecedor.Email as email,
  fornecedor.Celular as celular,
  fornecedor.Contato as contato,
  fornecedor.UF as uf
from fornecedor
