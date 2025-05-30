select Pessoas_Pessoa.id as codigo,
Pessoas_Cidades.Descricao as cidade,
pessoas_estados.UF,
Pessoas_Pessoa.bairro,
Pessoas_Pessoa.NomeRazaoSocial as nome,
Pessoas_Pessoa.ApelidoFantasia as fantasia,
Pessoas_Pessoa.CpfCnpj as cnpj_cnpf,
Pessoas_Pessoa.RgIe as ie_rg,
Pessoas_Pessoa.Logradouro as endereco,
Pessoas_Pessoa.cep,
Pessoas_Pessoa.Telefone1 as telefone,
Pessoas_Pessoa.celular,
Pessoas_Pessoa.email,
Pessoas_Pessoa.Observacao as observacoes
from Pessoas_Pessoa
left join Pessoas_Cidades on Pessoas_Pessoa.CidadeID=Pessoas_Cidades.ID
left join Pessoas_Estados on pessoas_cidades.EstadoID=pessoas_estados.ID
where FlagFornecedor=1

