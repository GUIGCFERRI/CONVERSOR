 select cliente.cd_cliente as codigo,
 cliente.nm_fantasia as fantasia,
 cliente.nm_clifor as nome,
 cliente.endereco,
 cliente.bairro,
 cliente.cep,
 cliente.fone as telefone,
 cliente.fax as fax,
 cliente.pessoa_contato as contato, 
 cliente.dt_cadastro as cadastro,
 cliente.cgc_cpf as cnpj_cnpf,
 cliente.dt_aniversario as nascimento,
 cliente.inscricao as ie_rg,
 cliente.observacao_clifor as observacoes,
 cliente.celular,
 cliente.nm_conjuge as conjuge,
 cliente.nm_pai as pai,
 cliente.nm_mae as mae,
 cidade.nm_cidade as cidade,
 cidade.uf as uf,
 cliente.e_mail as email
 from cliente
 left join cidade on cliente.cd_cidade = cidade.cd_cidade
