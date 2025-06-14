SELECT
    FORNECEDOR.cod_fornece AS CODIGO,
    FORNECEDOR.raz_fornece AS NOME,
    FORNECEDOR.fan_fornece AS FANTASIA,
    FORNECEDOR.cgc_fornece AS CNPJ_CNPF,
    FORNECEDOR.ins_fornece AS IE_RG,
    FORNECEDOR.end_fornece AS ENDERECO,
    FORNECEDOR.bai_fornece AS BAIRRO,
    CIDADE.NOM_CIDADE AS CIDADE,
    FORNECEDOR.est_fornece AS UF,
    FORNECEDOR.cep_fornece AS CEP,
    FORNECEDOR.fon_fornece AS TELEFONE,
    FORNECEDOR.fax_fornece AS FAX,
    FORNECEDOR.mail_fornece AS EMAIL,
    FORNECEDOR.observacao AS OBSERVACOES,
    FORNECEDOR.contato_fornecedor AS CONTATO
FROM FORNECEDOR 
LEFT JOIN CIDADE ON CIDADE.COD_CIDADE = FORNECEDOR.COD_CIDADE
