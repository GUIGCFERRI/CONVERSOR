select fornecedores.codigo,
substring (fornecedores.razao_social from 1 for 60) as nome,
substring (fornecedores.nome_fantasia from 1 for 60) as fantasia,
substring (fornecedores.endereco from 1 for 60) as endereco,
fornecedores.bairro,
fornecedores.cidade,
fornecedores.uf,
replace(fornecedores.cep,'-','') as cep,
replace(replace(replace(replace(fornecedores.telefone,'(',''),')',''),'-',''),' ','') as telefone,
replace(replace(replace(replace(fornecedores.fax,'(',''),')',''),'-',''),' ','') as fax,
fornecedores.email_nfe as email,
fornecedores.observacao as observacoes,
replace(replace(replace(replace(fornecedores.celular_rep,'(',''),')',''),'-',''),' ','') as celular
from fornecedores
