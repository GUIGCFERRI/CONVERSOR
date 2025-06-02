select pfisica.pfcodigo as codigo, 
pfisica.pfnome as nome,
pfisica.pfendereco as endereco,
pfisica.pfnrend as numero,
pfisica.pfcomplemento as complemento,
pfisica.pfbairro as bairro,
pfisica.pfcep as cep,
concat(pfisica.pfdddfone,pfisica.pfnrfone) as telefone,
concat (pfisica.pfdddfone,pfisica.pfcelular) as celular,
pfisica.pfcpf as CNPJ_CNPF,
pfisica.pfnridentidade as IE_RG,
pfisica.pfnascimento as nascimento,
pfisica.pfmail as email,
pfisica.pfpai as pai,
pfisica.pfmae as mae,
pfisica.pfobs as observacoes,
pfisica.pffantasia as fantasia
from pfisica 
left join municipio on (pfisica.muncodigo = municipio.muncodigo)
where pfisica.pfcodigo> 0





