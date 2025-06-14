SELECT
    CODIGO,
    NOME,
    CPF AS CNPJ_CNPF,
    EMAIL,
    TELEFONE,
    END_CEP AS CEP,
    END_UF AS UF,
    END_LOCALIDADE AS CIDADE,
    END_BAIRRO AS BAIRRO,
    END_LOGRADOURO AS ENDERECO,
    END_COMPLEMENTO AS COMPLEMENTO,
    END_NR AS NUMERO,
    OBS AS OBSERVACOES
FROM CLIENTE;
