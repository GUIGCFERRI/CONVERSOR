SELECT PESSOA.Codigo,
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
from SISMOURA.dbo.pessoa
left join SISMOURA.dbo.cidade on pessoa.Cidade=cidade.Codigo
left join SISMOURA.dbo.cliente on cliente.pessoa = pessoa.codigo
where pessoa.codigo in(select Fornecedor.Pessoa from SISMOURA.dbo.fornecedor)
