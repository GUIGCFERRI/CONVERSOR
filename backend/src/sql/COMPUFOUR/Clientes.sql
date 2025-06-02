SELECT
    TB_CLIENTE.ID_CLIENTE AS CODIGO,
    TB_CLIENTE.NOME AS NOME,
    pj.nome_fanta "FANTASIA",
    TB_CLIENTE.CONTATO AS CONTATO,
    case when pf.cpf = '' or pf.cpf is null then PJ.CNPJ else pf.cpf END AS CNPJ_CNPF,
    case when pf.identidade = '' or pf.identidade is null then PJ.INSC_ESTAD else pf.identidade END AS IE_RG,
    PJ.INSC_MUNIC AS IM,
    coalesce (TB_CLIENTE.END_TIPO, '') ||' '|| TB_CLIENTE.END_LOGRAD AS ENDERECO,
    TB_CLIENTE.END_NUMERO AS NUMERO,
    TB_CLIENTE.END_COMPLE AS COMPLEMENTO,
    TB_CLIENTE.END_BAIRRO AS BAIRRO,
    tb_cidade_sis.nome "CIDADE",
    tb_cidade_sis.sigla_uf "UF",
    TB_CLIENTE.END_CEP AS CEP,
    coalesce (TB_CLIENTE.ddd_resid,'')||coalesce (TB_CLIENTE.fone_resid,'') "TELEFONE",
    coalesce (TB_CLIENTE.ddd_celul,'')||coalesce (TB_CLIENTE.fone_celul,'') "CELULAR",
    coalesce (TB_CLIENTE.ddd_fax,'')||coalesce (TB_CLIENTE.fone_fax,'') "FAX",
    TB_CLIENTE.EMAIL_CONT AS EMAIL,
    TB_CLIENTE.LIMITE AS LIMITE_CREDITO,
    TB_CLIENTE.OBSERVACAO AS OBSERVACOES,
    pf.dt_nascto "NASCIMENTO",
    pf.NOME_PAI AS PAI,
    pf.NOME_MAE AS MAE, 
    TB_CLIENTE.DT_CADASTRO AS CADASTRO,
    TB_CLIENTE.DT_ULTCOMP AS ULTIMA_COMPRA,
    ca.adicional1 "PERSONAL2",
    ca.adicional2 "PERSONAL4",
    case when TB_CLIENTE.STATUS = 'A' then 'Ativo' else 'Inativo' end as SITUACAO,
    TB_CLIENTE.STATUS
FROM TB_CLIENTE
left join tb_cidade_sis on tb_cidade_sis.id_cidade = tb_cliente.id_cidade
left join tb_cli_pf pf on tb_cliente.id_cliente = pf.id_cliente and pf.id_cliente = tb_cliente.id_cliente
left join tb_cli_pj pj on tb_cliente.id_cliente = pj.id_cliente and pj.id_cliente = tb_cliente.id_cliente
left join tb_cli_adicional ca on tb_cliente.id_cliente = ca.id_cliente
where TB_CLIENTE.ID_CLIENTE > '0'
