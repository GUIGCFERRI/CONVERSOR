SELECT 
gerpessoafisica.id as codigo,
gerpessoafisica.rg as ie_rg,
gerpessoafisica.nome as nome,
'' as cnpj_cnpf,
gerendereco.logradouro as endereco,
gerendereco.bairro,
gerendereco.complemento,
gerendereco.numcep,
gerendereco.numero,
germunicipio.nome as cidade,
gerunidadefederacao.sigla as uf,
gerpessoa.email,
gertelefone.numerotelefone as telefone
FROM gerpessoafisica
left join gerpessoa on gerpessoafisica.id = gerpessoa.id
left join gerpessoa_gerendereco on gerpessoa.id = gerpessoa_gerendereco.pessoa_id
left join gerendereco on gerpessoa_gerendereco.pessoa_id = gerpessoa.id and gerendereco.id = gerpessoa_gerendereco.enderecos_id 
left join germunicipio on gerendereco.municipioid = germunicipio.id
left join gerunidadefederacao on germunicipio.ufid = gerunidadefederacao.id
left join gerpessoa_gertelefone on gerpessoa.id = gerpessoa_gertelefone.pessoa_id
left join gertelefone on gerpessoa_gertelefone.pessoa_id = gerpessoa.id and gertelefone.id = gerpessoa_gertelefone.telefones_id

union all

SELECT 
gerpessoajuridica.id as codigo,
gerpessoajuridica.inscestadual as ie_rg,
gerpessoajuridica.nomefantasia as nome,
gercadastronacional.numero||nrfilial||digito as cnpf_cnpf,
gerendereco.logradouro as endereco,
gerendereco.bairro,
gerendereco.complemento,
gerendereco.numcep,
gerendereco.numero,
germunicipio.nome as cidade,
gerunidadefederacao.sigla as uf,
gerpessoa.email,
gertelefone.numerotelefone as telefone
FROM gerpessoajuridica

left join gerpessoa on gerpessoajuridica.id = gerpessoa.id
left join gerpessoa_gerendereco on gerpessoa.id = gerpessoa_gerendereco.pessoa_id
left join gerendereco on gerpessoa_gerendereco.pessoa_id = gerpessoa.id and gerendereco.id = gerpessoa_gerendereco.enderecos_id  
left join germunicipio on gerendereco.municipioid = germunicipio.id
left join gerunidadefederacao on germunicipio.ufid = gerunidadefederacao.id
left join gerpessoa_gertelefone on gerpessoa.id = gerpessoa_gertelefone.pessoa_id
left join gertelefone on gerpessoa_gertelefone.pessoa_id = gerpessoa.id and gertelefone.id = gerpessoa_gertelefone.telefones_id 
left join gercadastronacional on gerpessoa.id = gercadastronacional.id
order by codigo