select fornec.codfor as codigo,
fornec.razao as nome,
fornec.fantasia,
fornec.endereco,
fornec.numero,
fornec.bairro,
fornec.cidade,
fornec.uf,
fornec.cep,
fornec.cnpj as cnpj_cnpf,
fornec.inscest as ie_rg,
fornec.fone as telefone
from fornec
where fornec.codfor>0