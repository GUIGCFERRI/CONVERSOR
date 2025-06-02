select
  pessoa.ID as codigo,
  pessoa.NOME as nome,
  pessoa.EMAIL as email,
pessoa_endereco.logradouro as ENDERECO,
pessoa_endereco.numero as numero,
pessoa_endereco.complemento as complemento,
pessoa_endereco.bairro as bairro,
pessoa_endereco.cidade as cidade,
pessoa_endereco.cep as cep,
pessoa_endereco.uf as uf,
pessoa_endereco.fone as telefone,
pessoa_juridica.cnpj as cnpj_cnpf,
pessoa_juridica.inscricao_estadual as ie_rg
from pessoa
left join pessoa_endereco on pessoa.id = pessoa_endereco.id_pessoa
left join pessoa_juridica on pessoa.id = pessoa_juridica.id_pessoa
where pessoa.cliente = 'S'