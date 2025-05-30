SELECT
       t_itens.cdItem as codigo
      ,t_itens.deItem as descricao
      ,t_itens.undVen as und
      ,t_grItens.deGru as grupo
      ,t_itens.pesoLq as peso
     -- ,t_itens.custo as preco_custo
      ,t_itens.valCmp as preco_custo
      ,t_itens.margem as margem_lucro
      ,t_itens.preco as preco_venda
      ,t_saldoIt.saldo as qtd
      ,t_itens.barcodeIt as barras
      ,cast (t_itens.dataCadIt as date) as data_cadastro
      ,SUBSTRING(t_itens.codCST,2,4) AS ST
      ,t_itens.clasFis as cod_ncm
      ,cast (t_itens.dataUltEnt as date) as ultima_compra
      ,t_itens.obsItem as observacoes
      ,t_itens.cod_do_fab as cod_fabricante
      ,cast (t_itens.dtUltAlteracao as date) as alteracao_preco
FROM A7.dbo.t_itens
left join A7.dbo.t_grItens on t_grItens.cdgru = t_itens.cdGruit
left join A7.dbo.t_saldoIt on t_saldoIt.cditem = t_itens.cdItem
where cdEmp = '1'
