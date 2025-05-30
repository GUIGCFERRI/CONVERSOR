select
  pessoas.idPessoa as codigo,
  pessoas.razaoSocial as nome,
  pessoas.nomeFantasia as fantasia,
  pessoas.cpfCnpj as cnpj_cnpf,
  pessoas.rgIe as ie_rg,
  pessoas.im as im,
  pessoas.logradouro as endereco,
  pessoas.numero as numero,
  pessoas.complemento as complemento,
  pessoas.bairro as bairro,
  Cidades.cidade as cidade,
  Cidades.uf as uf,
  pessoas.cep as cep,
  pessoas.tel as telefone,
  pessoas.cel as celular,
  pessoas.email as email,
  pessoas.obs as observacoes
from pessoas
left join cidades on cidades.codcidade = pessoas.codCidade
where tpFornecedor = 'S' -- FORNECEDORES
