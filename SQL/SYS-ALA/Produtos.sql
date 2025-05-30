select 
sys_produto.prod_codigo as codigo,
sys_produto.prod_nome as descricao,
sys_produto.prod_unidade as und,
sys_produto.prod_referencia as COD_FABRICANTE,
sys_produto.prod_preco_1 as preco_venda,
sys_produto.prod_lucro_1 as MARGEM_LUCRO,
sys_produto.prod_comissao_1 as COMISSAO, 
-- sys_produto.prod_codcst as ST,
sys_produto.prod_cst_simples as st,
sys_produto.prod_cod_ncm as cod_ncm,
--sys_produto.prod_ipi 
sys_produto.prod_pesoliq as PESO,
case sys_produto.prod_ativo when 'S' then 'Ativo' else 'Inativo' end as SITUACAO,
sys_produto.prod_obs as OBSERVACOES,
sys_produto.prod_codbarra as barras,
sys_produto.prod_cst_pis as PIS_CODIGO,
sys_produto.prod_aliq_pis as PIS_ALIQ_NOR, 
sys_produto.prod_cst_cofins as COFINS_CODIGO, 
sys_produto.prod_aliq_cofins as COFINS_ALIQ_NOR, 
sys_produto.prod_cst_ipi as IPI_CODIGO_VENDA,
sys_produto.prod_origem as OST,
sys_produto.prod_cfop_dentro as CF,
left (cast (sys_produto.prod_cfop_dentro as varchar), 3) as ELO,
--left (sys_produto.prod_codaliq, 3) as ELO,
sys_produto.prod_cod_cest as PERSONAL6, 
sys_produto.prod_quantminima as QTD_IDEAL,
sys_estoque_atual.saldo as qtd,
sys_grupo_produto.gpro_nome as grupo,
sys_classe_produto.cprod_nome as familia,
sys_fornecedor.for_nome as fornecedor
from sys_produto
left join sys_grupo_produto on sys_produto.prod_codigodogrupo=sys_grupo_produto.gpro_codigo
left join sys_classe_produto on sys_produto.prod_codigodaclasse=sys_classe_produto.cprod_codigo 
left join sys_fornecedor on sys_produto.prod_codigodofornecedor=sys_fornecedor.for_codigo
left join sys_estoque_atual on sys_produto.prod_codigo=sys_estoque_atual.produto
where sys_estoque_atual.empresa = '1'
