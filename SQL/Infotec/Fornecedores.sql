select PessoasBD.IdPessoas as codigo,
ruasbd.Nomes as endereco,
RuasBD.cep,
bairrosbd.Nome as bairro,
CidadesBD.nome as cidade,
ufsBD.Sigla as uf,
pessoasbd.CPFCNPJ as cnpj_cnpf,
pessoasbd.Nome,
pessoasbd.Email,
pessoasbd.Celular,
pessoasbd.fixo as telefone,
cast(pessoasbd.DataCadastro as date) as cadastro,
pessoasbd.numero,
pessoasbd.IEIDENTIDADE as ie_rg,
pessoasbd.NomeAlternativo as fantasia
from [BetterDesktop].[dbo].pessoasbd
left join [BetterDesktop].[dbo].ruasbd on pessoasbd.codigorua=ruasbd.Idruas
left join [BetterDesktop].[dbo].bairrosbd on ruasbd.bairrosBDIdbirros=bairrosbd.Idbirros
left join [BetterDesktop].[dbo].cidadesbd on bairrosBD.CidadesIdcidades=cidadesbd.Idcidades
left join [BetterDesktop].[dbo].ufsbd on bairrosbd.IDufs_id=ufsbd.Idufs
where pessoasbd.Tipopessoa IN('Fornecedor','Todos')
