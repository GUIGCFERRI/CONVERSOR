SELECT
    --sig_pessoa.sig_pes_id AS CODIGO,
    sig_pessoa.sig_pes_tipo_id,
    sig_pessoa.sig_pes_nome AS NOME,
    sig_pessoa.sig_pes_apelido AS CONTATO,
    sig_endereco.sig_end_endereco AS ENDERECO,
    sig_endereco.sig_end_complemento AS COMPLEMENTO,
    sig_endereco.sig_end_bairro AS BAIRRO,
    sig_endereco.sig_end_numero AS NUMERO,
    sig_cidade.sig_cid_nome AS CIDADE,
    sig_estado.sig_est_uf AS UF,
    sig_endereco.sig_end_cep AS CEP,
    CONCAT (sig_telefone.sig_tel_ddd , '' , sig_telefone.sig_tel_numero) AS TELEFONE,
    sig_pessoa.sig_pes_sexo AS SEXO,
    CAST (sig_pessoa.sig_pes_dt_cad AS DATE) AS CADASTRO,
    case when sig_pessoa.sig_pes_documento = '' or sig_pessoa.sig_pes_documento is null then     sig_pessoa.sig_pes_ie else sig_pessoa.sig_pes_documento END as IE_RG,
    sig_pessoa.sig_pes_cpf_cnpj AS CNPJ_CNPF,
    sig_pessoa.sig_pes_im AS IM,
    sig_pessoa.sig_pes_credito AS LIMITE_CREDITO,
    sig_pessoa.sig_pes_observacao AS OBSERVACOES
FROM sig_pessoa
LEFT JOIN sig_endereco ON sig_endereco.SIG_END_PES_ID = sig_pessoa.sig_pes_id
LEFT JOIN sig_cidade ON sig_cidade.sig_cid_id = sig_endereco.sig_end_cid_id
LEFT JOIN sig_estado ON sig_estado. sig_est_id= sig_cidade.sig_cid_est_id
LEFT JOIN sig_telefone ON sig_telefone.sig_tel_pes_id = sig_pessoa.sig_pes_id
WHERE sig_pessoa.sig_pes_tipo_id = 'F'
ORDER BY sig_pessoa.sig_pes_tipo_id
