SELECT
    pp.razao_social as nome,
    pp.fantasia,
    pp.email,
        CASE
            WHEN pp.pessoa::text = ANY (ARRAY['F'::character varying::text, 'P'::character varying::text]) THEN ( SELECT pd.num_doc
               FROM pes_documento pd
                 JOIN tab_tipo_documento td ON pd.id_tip_documento = td.id_tip_documento
              WHERE td.sql_tip_doc::text = 'CPF'::text AND pd.id_pessoa = pp.id_pessoa
             LIMIT 1)
            ELSE ( SELECT pd.num_doc
               FROM pes_documento pd
                 JOIN tab_tipo_documento td ON pd.id_tip_documento = td.id_tip_documento
              WHERE td.sql_tip_doc::text = 'CNPJ'::text AND pd.id_pessoa = pp.id_pessoa
             LIMIT 1)
        END AS cnpj_cnpf,
        CASE
            WHEN pp.pessoa::text = ANY (ARRAY['J'::character varying::text, 'P'::character varying::text]) THEN ( SELECT pd.num_doc
               FROM pes_documento pd
                 JOIN tab_tipo_documento td ON pd.id_tip_documento = td.id_tip_documento
              WHERE td.sql_tip_doc::text = 'IE'::text AND pd.id_pessoa = pp.id_pessoa
             LIMIT 1)
            ELSE ( SELECT pd.num_doc
               FROM pes_documento pd
                 JOIN tab_tipo_documento td ON pd.id_tip_documento = td.id_tip_documento
              WHERE td.sql_tip_doc::text = 'RG'::text AND pd.id_pessoa = pp.id_pessoa
             LIMIT 1)
        END AS rg,
    ( SELECT pd.num_doc
           FROM pes_documento pd
             JOIN tab_tipo_documento td ON pd.id_tip_documento = td.id_tip_documento
          WHERE td.sql_tip_doc::text = 'IE'::text AND pd.id_pessoa = pp.id_pessoa
         LIMIT 1) AS ie_rg,
    ( SELECT fn.num_tel
           FROM pes_telefone fn
             JOIN tab_tipo_telefone tbf ON fn.id_tip_telefone = tbf.id_tip_telefone
          WHERE fn.id_pessoa = pp.id_pessoa AND tbf.sgl_tip_tel::text = 'RES'::text
         LIMIT 1) AS telefone,
    ( SELECT fc.num_tel
           FROM pes_telefone fc
             JOIN tab_tipo_telefone tbc ON fc.id_tip_telefone = tbc.id_tip_telefone
          WHERE fc.id_pessoa = pp.id_pessoa AND tbc.sgl_tip_tel::text = 'CEL'::text
         LIMIT 1) AS celular,
    pe.endereco,
    pe.numero,
    pe.complemento,
    pe.cep,
    pe.bairro,
    pe.cidade,
    pe.uf
   FROM pes_pessoa pp
     LEFT JOIN pes_endereco pe ON pe.id_pessoa = pp.id_pessoa AND pe.padrao::text = 'S'::text
     LEFT JOIN cad_uf f ON f.cod_filial = pe.cod_filial AND f.sigla_uf::text = pe.uf::text AND f.sit::text = 'A'::text
where pp.cod_filial = '1' and pp.tipo = 'C'
