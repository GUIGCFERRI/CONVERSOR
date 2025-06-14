SELECT
    CONVENIOS.S_CUPOM AS DOCUMENTO,
    CONVENIOS.ID || '/' ||CONVENIOS.S_CUPOM AS HISTORICO,
    CLIENTES.id AS COD_CLIENTE,
    CLIENTES.NOME AS NOM_CLIENTE,
    CONVENIOS.F_DEBITO AS VALOR_DUP,
    CONVENIOS.F_CREDITO AS VALOR_REC_CREDITO,
    TIPO_PAGAMENTOS.DESCRICAO AS TIPO_DOC,
    CONVENIOS.D_DATA AS EMISSAO,
    CONVENIOS.S_OBSERVACAO AS OBSERVACOES,
    CONVENIOS.i_pdv AS NRO_PDV,
    CONVENIOS.F_JUROS AS VALOR_JUR,
    CONVENIOS.F_VAL_PAGO_REF AS VALOR_REC,
    CONVENIOS.D_DIA_PAGAMENTO AS VENCIMENTO,
    CONVENIOS.D_DIA_PAGAMENTO AS RECEBIMENTO,
    CONVENIOS.F_DESC_DADO AS VALOR_DES,
    case when CLIENTES.CPF = '' or CLIENTES.CPF is null then CLIENTES.CNPJ else CLIENTES.CPF END AS CNPJ
FROM CONVENIOS
LEFT JOIN clientes ON CLIENTES.id = CONVENIOS.id_cliente
LEFT JOIN tipo_pagamentos ON tipo_pagamentos.id = CONVENIOS.i_tipo
