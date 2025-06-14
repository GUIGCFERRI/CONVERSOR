select 
produtos.codigo,
produtos.unidade as und,
produtos.codigobarras as barras,
produtos.quantidade as qtd,
produtos.pis as pis_aliq_nor, 
produtos.cofins as cofins_aliq_nor, 
produtos.tributacaopis as pis_codigo, 
produtos.tributacaocofins as cofins_codigo, 
produtos.cstpisentrada as pise_codigo, 
produtos.cstcofinsentrada as cofinse_codigo, 
produtos.pisentrada as pise_aliq_nor, 
produtos.cofinsentrada as cofinse_aliq_nor, 
produtos.grupo as grupo,
produtos.subgrupo as familia,
produtos.custo as preco_custo,
produtos.customedio as custo_medio,
produtos.precovenda as preco_venda,
produtos.tributacao as st,
produtos.fornecedor,
produtos.descricao,
produtos.ncm as cod_ncm,
produtos.cest as personal6
from produtos