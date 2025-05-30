select `tec_customers`.id as codigo,
`tec_customers`.name as nome,
`tec_customers`.endereco,
`tec_customers`.phone as telefone,
`tec_customers`.`bairro`,
`tec_customers`.`municipio` as cidade,
`tec_customers`.uf,
`tec_customers`.`cep`,
`tec_customers`.email,
`tec_customers`.`cnpj` as cnpj_cnpf,
`tec_customers`.ie as ie_rg
from `tec_customers`
