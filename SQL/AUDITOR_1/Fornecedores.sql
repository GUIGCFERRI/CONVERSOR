SELECT pessoa.ID as codigo,
pessoa.nomerazao as nome,
juridica.fantasia as fantasia,
pessoa.inclusao as cadastro,
pessoa.obs as observacao,
endereco.logradouro as endereco,
endereco.bairro as bairro,
endereco.cep as cep,
endereco.complemento as complemento,
cidade.descricao as cidade,
endereco.numero as numero,
enderecovirtual.descricao as email,
fisica.conjuge as conjuge,
case when fisica.cpf is null then juridica.cnpj else fisica.cpf end as cnpj_cnpf,
case when fisica.rg is null then juridica.inscest else fisica.rg end as ie_rg,
fisica.pai as pai,
fisica.mae as mae,
fisica.nascimento as nascimento,
telefone.telefone as telefone
 FROM PESSOA
left join endereco on endereco.fkpessoa = pessoa.id
left join cidade on cidade.id = endereco.fkcidade
left join enderecovirtual on enderecovirtual.fkpessoa = pessoa.id
left join fisica on fisica.fkpessoa = pessoa.id
left join telefone on telefone.fkpessoa = pessoa.id
left join juridica on juridica.fkpessoa = pessoa.id
where pessoa.id in (select fornecedor.fkpessoa from fornecedor)