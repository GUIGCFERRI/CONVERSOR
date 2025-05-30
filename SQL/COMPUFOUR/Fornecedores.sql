select
                       T1.id_fornec as CODIGO,
                       T1.nome,
                       T1.nome_fanta as FANTASIA,
                       T1.contato,
                       T1.cnpj as CNPJ_CNPF,
                       T1.insc_estad as IE_RG,
                       T1.insc_munic as IM,
                       T1.end_lograd as ENDERECO,
                       T1.end_numero as NUMERO,
                       T1.end_comple as COMPLEMENTO,
                       T1.end_bairro as BAIRRO,
                       T2.nome as CIDADE,
                       T2.sigla_uf as UF,
                       T1.end_cep as CEP,
                       T1.ddd_comer||''''||T1.fone_comer as TELEFONE,
                       T1.ddd_celul||''''||T1.fone_celul as CELULAR,
                       T1.ddd_fax||''''||T1.fone_fax as FAX,
                       T1.email_cont as EMAIL,
                       substring(t1.observacao from 1 for 1000) as observacoes
                       from tb_fornecedor T1
                       left join tb_cidade_sis T2 on T2.id_cidade = T1.id_cidade
                       where t1.id_fornec > 0
