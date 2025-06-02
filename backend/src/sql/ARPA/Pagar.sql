SELECT
    apagar.codigo as num_conta,
    fornecedores.codigo as cod_fornecedor,
    fornecedores.nome as nom_fornecedor,
    fornecedores.cnpj,
    apagar.tipo_documento as tipo_doc,
    apagar.documento as documento,
    apagar.data_emissao as emissao,
    apagar.vencimento as vencimento,
    apagar_quitadas.data_pgto as pagamento,
    apagar.valor as valor_dup,
    apagar_quitadas.valor_pago as valor_pag,
    concat (apagar.tipo_documento || apagar.documento) as hitorico,
    apagar.complemento as observacoes,
    apagar.portador as portador
from apagar
left join fornecedores on fornecedores.codigo = apagar.fornecedor
left join apagar_quitadas on apagar_quitadas.parcela = apagar.codigo 
where apagar.documento <> '' and fornecedores.cnpj is not null
