SELECT
    fatclifo.CODIGO,
    fatclifo.NOME,
    fatclifo.FANTASIA,
    fatclifo.ENDERECO,
    fatclifo.CEP,
    fatclifo.BAIRRO,
    fatclifo.COD_CIDADE,
    fatclifo.CNPJ_CNPF,
    FATCIDAD.CIDADE,
    FATCIDAD.UF

from fatclifo

LEFT JOIN FATCIDAD ON FATCLIFO.COD_CIDADE = FATCIDAD.cod_cidade