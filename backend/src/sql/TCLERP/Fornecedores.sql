select
max(pessoa.ID) as codigo,
max(pessoa.NOME) as nome,
pessoa.EMAIL as email,
pessoa_endereco.logradouro as ENDERECO,
pessoa_endereco.numero as numero,
pessoa_endereco.complemento as complemento,
pessoa_endereco.bairro as bairro,
cast(pessoa_endereco.cidade as varchar(50)) as cidade,
pessoa_endereco.cep as cep,
pessoa_endereco.uf as uf,
pessoa_endereco.fone as telefone,
pessoa_juridica.cnpj as cnpj_cnpf,
pessoa_juridica.inscricao_estadual as ie_rg
from pessoa
left join pessoa_endereco on pessoa.id = pessoa_endereco.id_pessoa
left join pessoa_juridica on pessoa.id = pessoa_juridica.id_pessoa
where pessoa.FORNECEDOR = 'S' and pessoa_endereco.logradouro is not null and pessoa_endereco.cidade <> '000000'
group by 3,4,5,6,7,9,10,11,12,13