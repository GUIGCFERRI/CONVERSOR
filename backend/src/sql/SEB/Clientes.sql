select ecli.RECLI as codigo,
fanta as fantasia,
renom as nome,
reend as endereco,
recid as cidade,
rebai as bairo,
reest as uf,
recep as cep,
retel as telefone,
recgc as CNPJ_CNPF,
reies as rg_ie,
IBGE.DESCR AS CIDADE
FROM ECLI
LEFT JOIN IBGE ON ECLI.IBGE=IBGE.GRUPO
