select cliente."idCliente" as codigo,
cliente.nome,
cliente.email,
cliente.cpf as cnpj_cnpf,
cliente."dtCadastro" as cadastro,
cliente.rg as ie_rg,
cliente.observacao as observacoes,
endereco_cliente."nomeLog" as endereco,
endereco_cliente.complemento,
endereco_cliente.bairro,
cidade.nome as cidade,
uf.sigla as uf,
endereco_cliente.cep,
endereco_cliente.numero
from cliente
left join endereco_cliente on cliente."idCliente"=endereco_cliente."idCliente"
left join cidade on endereco_cliente."idCidade"=cidade."idCidade"
left join uf on cidade."idUF"=uf."idUF"
where "booCliente" is true
