SELECT 
PESSOA.Codigo,
pessoa.nome,
pessoa.cpf as cnpj_cnpf,
pessoa.rg as ie_rg,
pessoa.Data_Nasc as nascimento,
pessoa.Endereco as endereco,
CONCAT(pessoa.DDD1,pessoa.Fone_Numero) as telefone,
concat(pessoa.DDD2,pessoa.Fone2_Numero) as celular,
pessoa.numero,
cidade.Cidade,
cidade.Estado as uf,
pessoa.bairro,
pessoa.cep,
pessoa.contato,
pessoa.Observacao as observacoes,
pessoa.email,
pessoa.Nome_Fantasia as fantasia,
case when pessoa.inativo = 'N' then 'Ativo' else 'Inativo' end as SITUACAO
from MERCEARIAMIGUEL_10075.dbo.pessoa
left join  MERCEARIAMIGUEL_10075.dbo.cidade on pessoa.Cidade=cidade.Codigo
left join MERCEARIAMIGUEL_10075.dbo.cliente on cliente.pessoa = pessoa.codigo
where pessoa.codigo in (select cliente.Pessoa from MERCEARIAMIGUEL_10075.dbo.cliente)
