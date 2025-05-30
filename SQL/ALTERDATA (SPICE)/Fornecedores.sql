SELECT 
WSHOP.pessoas.nmpessoa AS NOME,
WSHOP.pessoas.nmfantasia AS FANTASIA,
WSHOP.pessoas.nmendereco AS ENDERECO,
WSHOP.pessoas.nmbairro AS BAIRRO,
replace(WSHOP.pessoas.NMCEP,'-','') AS CEP,
WSHOP.pessoas.NMCIDADE AS CIDADE,
WSHOP.pessoas.iduf AS UF,
WSHOP.pessoas.email AS EMAIL,
WSHOP.pessoas.nrtelefone AS TELEFONE,
WSHOP.pessoas.nrtelfax AS FAX,
WSHOP.pessoas.nrcgc_cic AS CNPJ_CNPF,
WSHOP.pessoas.nrincrest_rg AS IE_RG,
WSHOP.pessoas.nrlogradouro AS NUMERO,
WSHOP.pessoas.dscomplemento AS COMPLEMENTO
FROM WSHOP.pessoas
WHERE WSHOP.pessoas.sttipopessoa='F'