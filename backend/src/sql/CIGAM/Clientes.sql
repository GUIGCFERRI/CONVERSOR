select GEEMPRES.Nome_completo as nome,
GEEMPRES.Contato as contato,
GEEMPRES.Fone as telefone,
GEEMPRES.Fax_fone as fax,
GEEMPRES.Endereco,
GEEMPRES.Bairro,
GEEMPRES.Municipio as cidade,
GEEMPRES.uf,
GEEMPRES.Cep,
GEEMPRES.Cnpj_cpf as CNPJ_CNPF,
GEEMPRES.Inscricao as IE_RG,
GEEMPRES.Dt_cadastro as cadastro,
GEEMPRES.Fantasia,
GEEMPRES.Numero 
from GEEMPRES
where GEEMPRES.Nome_completo <>''




