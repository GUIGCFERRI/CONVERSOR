SELECT 
       cd_pro.id_pro as codigo
      ,cd_pro.descricao as descricao
      ,cd_pro.un as und
      ,cd_pro.pr_medio as custo_medio
      ,cd_pro.qtde_estq as qtd
      ,cd_pro.estq_minimo as qtd_ideal
      ,cd_gru.nome as grupo
      ,cd_pro.pr_venda1 as preco_venda
      ,cd_pro.ean as barras
      ,cd_pro.marca as caracteristicas
      ,cd_pro.ref_fabricante as cod_fabricante
      ,cd_pro.margem as margem_lucro
      ,case when cd_pro.ativo = 'S' then 'Ativo' else 'Inativo' end as SITUACAO
      ,cd_pro.CustoAtual as preco_custo
      ,cast (cd_pro.DataUltimaVenda as date) as ultima_venda
      ,cd_pro.Peso as peso
      ,cd_pessoa.nome as fornecedor
      ,cd_nbm.nbmDescricao as cod_ncm
      ,cast (cd_pro.Dt_cadastro as date) as data_cadastro
      ,MAX (cd_cest.codigo) as personal6
  FROM DBFastSoft.dbo.cd_pro
left join DBFastSoft.dbo.cd_pessoa on cd_pessoa.id_pessoa = cd_pro.id_pessoa
left join DBFastSoft.dbo.cd_nbm on cd_nbm.id_nbm = cd_pro.id_nbm
left join DBFastSoft.dbo.cd_cest on cd_cest.ncm = cd_nbm.nbmDescricao
left join DBFastSoft.dbo.cd_gru on cd_gru.id_gru = cd_pro.id_gru
group by
       cd_pro.id_pro
      ,cd_pro.descricao
      ,cd_pro.un
      ,cd_pro.pr_medio
      ,cd_pro.qtde_estq
      ,cd_pro.estq_minimo
      ,cd_gru.nome
      ,cd_pro.pr_venda1
      ,cd_pro.ean
      ,cd_pro.marca
      ,cd_pro.ref_fabricante
      ,cd_pro.margem
      ,cd_pro.ativo
      ,cd_pro.CustoAtual
      ,cd_pro.DataUltimaVenda
      ,cd_pro.Peso
      ,cd_pessoa.nome
      ,cd_nbm.nbmDescricao
      ,cd_pro.Dt_cadastro
