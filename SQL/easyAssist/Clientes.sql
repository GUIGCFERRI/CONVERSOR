select 
pessoa.nomeourazaosocial as nome,
pessoa.apelidooufantasia as fantasia,
pessoa.cnpjoucpf as cnpj_cnpf,
pessoa.inscestadual as ie_rg,
endereco.rua as endereco,
endereco.numero as numero,
endereco.cep,
endereco.complemento
from pessoa left join endereco on pessoa.idpessoa=endereco.idpessoa
where pessoa.idpessoa>0


