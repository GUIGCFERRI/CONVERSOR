select
  id as CODIGO
, nome as DESCRICAO
, nome_grupo as GRUPO
, nome_fornecedor as FORNECEDOR
, codigo_fabricante as COD_FABRICANTE
, referencia as PERSONAL1
, unidade as UND 
, peso_bruto as PESO
, modelo as CARACTERISTICAS
, cor
, preco_custo 
--, margem_lucro
, margem_lucro_b as MARGEM_LUCRO
, preco_venda
, comissao
, estoque_minimo as QTD_IDEAL
, estoque_atual as QTD
, ipi_entrada as ALIQ_IPI
, ipi_saida as ALIQ_IPI_VENDA
, data_ultimacompra as ULTIMA_COMPRA
, data_ultimavenda as ULTIMA_VENDA
, case ativo when 'SIM' then 'Ativo' else 'Inativo' end as SITUACAO
, ippt
, quantidade_atacado as QTD_PRECO_ATACADO
, preco_atacado as PRECO_ATACADO
, ncm as COD_NCM
, cst as ST
, icms_saida as ELO
, cfop_interno as CF
, csts_ipi as IPI_CODIGO_VENDA
, vl_pis as PIS_ALIQ_NOR
, vl_cofins as COFINS_ALIQ_NOR
, ean as BARRAS
, cst_piscofins_saida as PIS_CODIGO
, cst_piscofins_saida as COFINS_CODIGO
, cst_piscofins_entrada as PISE_CODIGO
, cst_piscofins_entrada as COFINSE_CODIGO
FROM produtos
-- where id_empresa = '1'  --- AJUSTAR CASO UTILIZE MULTILOJAS
