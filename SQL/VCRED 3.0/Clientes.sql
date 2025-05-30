select
    clientes.COD AS CODIGO,
    clientes.NOME,
    clientes.APELIDO AS FANTASIA,
    clientes.ENDER AS ENDERECO,
    clientes.NUMERO,
    clientes.COMP AS COMPLEMENTO,
    clientes.BAIRRO,
    cidades.nome AS CIDADE,
    clientes.CEP,
    clientes.TELRES AS TELEFONE,
    clientes.TELCEL AS CELULAR,
    clientes.EMAIL,
    clientes.CI AS IE_RG,
    clientes.CPF AS CNPJ_CNPF
from clientes
left join cidades on clientes.cidade = cidades.cod
