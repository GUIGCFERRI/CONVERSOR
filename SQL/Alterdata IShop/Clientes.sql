SELECT ishop.pessoas.nmpessoa AS NOME,
ishop.pessoas.nmfantasia AS FANTASIA,
ishop.pessoas.nmendereco AS ENDERECO,
ishop.pessoas.nmbairro AS BAIRRO,
ishop.pessoas.NMCEP AS CEP,
ishop.pessoas.NMCIDADE AS CIDADE,
ishop.pessoas.iduf AS UF,
ishop.pessoas.email AS EMAIL,
ishop.pessoas.nrtelefone AS TELEFONE,
ishop.pessoas.nrtelfax AS FAX,
ishop.pessoas.nrcgc_cic AS CNPJ_CNPF,
ishop.pessoas.nrincrest_rg AS IE_RG,
ishop.pessoas.nrlogradouro AS NUMERO,
ishop.pessoas.dscomplemento AS COMPLEMENTO,
ishop.pessoas.dtcadastro AS CADASTRO,
ishop.pessoas.dtultimacompra AS ULTIMA_VENDA
FROM ishop.pessoas
WHERE ishop.pessoas.sttipopessoa='C' and pessoas.nmpessoa <> ''
