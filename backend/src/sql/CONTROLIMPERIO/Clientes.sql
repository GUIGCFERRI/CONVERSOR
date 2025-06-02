select cliente.COD_INT_CLI as codigo,
cliente.RAZAO_VARCHAR_CLI as nome,
cliente.FANTASIA_VARCHAR_CLI as fantasia,
cliente.END_VARCHAR_CLI as endereco,
cliente.NUM_INT_CLI as numero,
cliente.COMPL_VARCHAR_CLI as complemento,
cliente.BAIRRO_VARCHAR_CLI as bairro,
CIDADE.NOME_VARCHAR_CID as cidade,
CIDADE.UF_VARCHAR_CID as uf,
cliente.EMAIL_VARCHAR_CLI as email,
cliente.CEP_VARCHAR_CLI as cep,
cliente.TELCEL_VARCHAR_CLI as telefone,
cliente.TELFIXO_VARCHAR_CLI as celular,
cliente.CPFCLI as cnpj_cnpf
from cliente
left join cidade on cliente.COD_CID_INT_CLI=cidade.COD_INT_CID
where cliente.COD_INT_CLI<>0
