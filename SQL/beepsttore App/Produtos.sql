select
 --ID as codigo
  p.CODIGO
  ,p.CADASTRO as data_cadastro
  ,p.REFERENCIA as cod_fabricante
  ,p.BARRAS
  ,p.DESCRICAO
  ,fo.razao as fornecedor
  ,p.PRECO_VENDA
  ,p.PRECO_CUSTO
  ,p.PRECO_MEDIO as custo_medio
  ,p.ESTOQUE as qtd
  ,p.ESTOQUE_MINIMO as qtd_ideal
  ,uni.unidade as und
  ,pc.descricao as caracteristicas
  ,p.ID_ORIGEM as ost
  ,p.ID_TIPO as tipo_item
  ,pnc.ncm AS COD_NCM
  ,pce.cest AS PERSONAL6
  ,case when P.ATIVO = 'S' then 'Ativo'
        when P.ATIVO = 'N' then 'Inativo'
             end as situacao
  ,p.ADICIONAIS as observacoes
  ,p.id_cst as ELO
  ,ptf.id_cst_pis_confins_saida as COFINS_CODIGO
  ,ptf.id_cst_pis_confins_saida as PIS_CODIGO
  ,ptf.id_cst_pis_confins_entrada as PISE_CODIGO
  ,ptf.id_cst_pis_confins_entrada as COFINSE_CODIGO
  ,ptf.pis_saida as PIS_ALIQ_NOR
  ,ptf.pis_entrada as PISE_ALIQ_NOR
  ,ptf.cofins_saida as COFINS_ALIQ_NOR
  ,ptf.cofins_entrada as COFINSE_ALIQ_NOR
  ,ptf.id_cst_ipi_saida as IPI_CODIGO_VENDA
  ,ptf.id_cst_ipi_entrada as IPI_CODIGO
  ,ptf.ipi_saida as ALIQ_IPI_VENDA
  ,ptf.id_cst_ipi_entrada as ALIQ_IPI
  ,pte.con_id_cst_csosn as ST
from produtos p
left join pessoas fo on fo.id = p.id_fornecedor
left join produtos_und_medida uni on uni.id = p.id_und_medida
left join produtos_categoria pc on pc.id = p.id_categoria
left join produtos_ncm pnc on pnc.id = p.id_ncm
left join produtos_cest pce on pce.id = p.id_cest
left join produtos_trib_estadual_uf pte on pte.id = p.id_tributacao_estadual
left join produtos_trib_federal ptf on ptf.id = p.id_tributacao_federal
