select cadfor_lng_codigoplu AS CODIGO,
cadfor_str_cpfcgc AS CNPJ_CNPF,
cadfor_str_razaosocial AS NOME,
cadfor_str_fantasia AS FANTASIA,
cadfor_str_inscrestadual AS IE_RG,
cadfor_str_endereco AS ENDERECO,
cadcid_str_descricao AS CIDADE,
cadbai_str_descricao AS BAIRRO,
caduf_str_uf AS UF,
cadfor_str_cep AS CEP,
cadfor_str_contato AS CONTATO,
cadfor_str_telefone AS TELEFONE,
cadfor_str_email AS EMAIL
FROM dbo.Cadastro_Fornecedor
