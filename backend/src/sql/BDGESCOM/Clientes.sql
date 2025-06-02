select 
TBPARCEIROS.marcaparc as codigo,
TBPARCEIROS.razsocparc as nome,
TBPARCEIROS.fantasia as fantasia,
TBPARCEIROS.inscestadualparc as ie_rg,
TBPARCEIROS.uf,
TBPARCEIROS.bairro,
TBPARCEIROS.municipio as cidade,
TBPARCEIROS.logradouro as endereco,
TBPARCEIROS.complementoparc as complemento,
TBPARCEIROS.cepparc as cep,
TBPARCEIROS.cgc as CNPJ_CNPF,
TBPARCEIROS.numerolog as numero,
TBPARCEIROS.dddparc||''||TBPARCEIROS.foneprincipalparc as telefone,
TBPARCEIROS.celular,
TBPARCEIROS.email,
TBPARCEIROS.fax
from TBPARCEIROS
where tbparceiros.pesfisjurparc <>'O' AND tbparceiros.pesfisjurparc <> 'J'
