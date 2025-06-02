select
    CLIENTE_ID as codigo,
    RAZSOC as nome,
    FANTASIA,
    CNPJ || CPF as cnpj_cnpf,
    INSCEST || RG as ie_rg,
    ENDERECO,
    BAIRRO,
    CIDADE,
    UF,
    CEP,
    COMPLEMENTO,
    TEL1 as telefone,
    TEL2 as celular,
    FAX,
    CONTATO,
    EMAIL,
    NUMERO
from clientes
