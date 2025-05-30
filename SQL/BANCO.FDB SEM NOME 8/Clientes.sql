select cliente.codcliente as codigo,
cliente.nomecliente as fantasia,
cliente.razaosocial as nome,
cliente.bairro,
cliente.cidade,
cliente.estado as uf,
cliente.codigopostal as cep,
case when cliente.pessoa='J' then
cliente.numerocgcmf else
cliente.numerocpf end "CNPJ_CNPF",
cliente.numeroinsc as IE_RG,
cliente.datainclusao as cadastro,
cliente.observacao as observacoes,
cliente.logradouro as endereco,
cliente.lognumero as numero,
clientefone.telefone,
clientefone.telefone as fax,
clientefone.email
from cliente
left join clientefone on cliente.codcliente = clientefone.codcliente
where clientefone.codfonegru=0 and clientefone.codsequencia=0  or clientefone.codsequencia=2
