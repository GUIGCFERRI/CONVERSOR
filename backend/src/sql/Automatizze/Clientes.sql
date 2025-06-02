select cliente.nome,
cliente.apelido as fantasia,
cliente.endereco,
cliente.numero,
cliente.complemento,
cliente.bairro,
cidade.nome as cidade,
cliente.cep, 
cliente.cnpj_cpf as cnpj_cnpf,
cliente.ie_rg,
cliente.telefone,
cliente.fax,
cliente.celular,
cliente.nascimento_fundacao as nascimento,
cliente.e_mail as email,
cliente.contato,
cidade.fkestado as uf
from cliente
left join cidade on cliente.fkcidade = cidade.idcidade