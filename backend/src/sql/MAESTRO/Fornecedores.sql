select ger_Pessoa.pes_Codigo as codigo,
ger_Pessoa.pes_Nome as nome,
ger_Pessoa.pes_CPF_CNPJ as cnpj_cnpf,
case when ger_Pessoa_Fisica.pef_CI_Numero is null then ger_Pessoa_Juridica.psj_IE end as ie_rg,
ger_Pessoa_Juridica.psj_IM as IM,
concat (ger_Logradouro.log_Tipo,' ', ger_Logradouro.log_Nome) as endereco,
ger_Pessoa.pes_Numero as numero,
ger_Pessoa.pes_Complemento as complemento,
ger_Bairro.bai_Nome as bairro,
ger_Pessoa.pes_CEP as cep,
ger_Cidade.cid_Nome as cidade,
ger_Cidade.cid_UF as uf,
ger_Pessoa_Telefone.pst_Telefone as telefone,
ger_Pessoa_Email.pse_Email as email,
ger_Pessoa_Fisica.pef_Conjugue as conjuge,
ger_Pessoa_Fisica.pef_Mae as Mae,
ger_Pessoa_Fisica.pef_Nascimento as nascimento,
ger_Pessoa_Fisica.pef_Pai as pai
from ger_pessoa
left join ger_Logradouro on ger_Logradouro.log_Codigo = ger_Pessoa.pes_log_Codigo 
left join ger_Bairro on ger_Bairro.bai_Codigo = ger_Pessoa.pes_bai_Codigo
left join ger_Cidade on ger_Cidade.cid_Codigo = ger_Pessoa.pes_cid_Codigo
left join ger_Pessoa_Fisica on ger_Pessoa_Fisica.pef_pes_Codigo = ger_Pessoa.pes_Codigo
left join ger_Pessoa_Juridica on ger_Pessoa_Juridica.psj_pes_Codigo = ger_Pessoa.pes_Codigo
left join ger_Pessoa_Email on ger_Pessoa_Email.pse_pes_Codigo = ger_Pessoa.pes_Codigo
left join ger_Pessoa_Telefone on ger_Pessoa_Telefone.pst_pes_Codigo = ger_Pessoa.pes_Codigo
left join ger_Entidade on ger_Entidade.ent_pes_Codigo = ger_Pessoa.pes_Codigo
inner join fnc_Fornecedor_Configuracao on ger_Entidade.ent_Codigo = fnc_Fornecedor_Configuracao.fnc_ent_Codigo 
