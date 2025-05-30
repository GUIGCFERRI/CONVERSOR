select Fornecedor.Forn_Codigo as codigo,
fornecedor.Razao_Social as nome,
fornecedor.Codnome as fantasia,
fornecedor.cep,
fornecedor.Endereco,
fornecedor.Complemento,
fornecedor.Bairro,
fornecedor.Cidade,
fornecedor.UF,
fornecedor.Telefone,
fornecedor.Fax,
fornecedor.CGC as cnpj_cnpf,
fornecedor.Inscricao_Estadual as ie_rg,
fornecedor.celular,
fornecedor.numero
from fornecedor

