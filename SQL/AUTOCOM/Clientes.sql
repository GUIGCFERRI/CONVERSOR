select
    pessoa.id as codigo,
    pessoa.nome_razao_social as nome,
    pessoa.apelido_nome_fantasia as fantasia,
    pessoa.cpf_cnpj as cnpj_cnpf,
    pessoa.inscricao_estadual as ie_rg,
	max(endereco.logradouro) as endereco,
	max(endereco.numero) as numero,
	max(endereco.complemento) as complemento,
	max(bairro.nome) as bairro,
	max(cidade.nome) as cidade,
	estado.sigla as uf,
	max(cep.codigo) as cep
from pessoa
left join endereco on pessoa.id = endereco.id_pessoa
left join bairro on endereco.id_bairro = bairro.id
left join cidade on endereco.id_cidade = cidade.id
left join estado on cidade.id_estado = estado.id
left join cep on endereco.id_cep = cep.id
left join contato on pessoa.id = contato.id_pessoa
group by 
    pessoa.id,
    pessoa.nome_razao_social,
    pessoa.apelido_nome_fantasia,
    pessoa.cpf_cnpj,
    pessoa.inscricao_estadual,
	estado.sigla
	order by 1
