select
    parcelas.ordem as historico,
    parcelas.parcela as num_parcela,
    clientes.codigo as cod_cliente,
    clientes.nome as nom_cliente,
    parcelas_quitadas.valor_pago as valor_rec,
    parcelas_quitadas.data_pgto as recebimento,
    parcelas.valor as valor_dup,
    parcelas.vencimento as vencimento,
    parcelas.codigo as documento,
    parcelas.data as emissao,
    clientes.cpf_cnpj as cnpj
from parcelas
left join parcelas_clientes on parcelas.codigo = parcelas_clientes.parcela
left join clientes on parcelas_clientes.cliente = clientes.codigo
left join parcelas_quitadas on parcelas.codigo = parcelas_quitadas.parcela
