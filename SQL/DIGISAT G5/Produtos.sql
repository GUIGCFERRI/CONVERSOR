select                  
                           produto.id as codigo
                         , produto.codigobarra as barras
                         , produto.pesoliquido as peso
                         , produtoempresa.quantidade as qtd
                         , produtoempresa.quantidademinima as qtd_ideal
                         , produtoempresa.localizacao as personal1
                         , substring(produtoeservico.descricao from 1 for 120) as descricao
                         , produtoeservico.caracteristica as caracteristicas
                         , cast(produtoeservico.datainclusao as date) as data_cadastro
                         , substring(produtoeservico.observacao from 1 for 1000) as observacoes
                         , cast(produtoeservico.percentualcomissao as numeric(15,2)) as comissao
                         , cast(produtoeservicoempresa.precovenda as numeric(15,2)) as preco_venda
                         , cast(produtoeservicoempresa.precocusto as numeric(15,2)) as preco_custo
                         , cast(produtoeservicoempresa.precocustomedio as numeric(15,2)) as custo_medio
                         , produtoeservicoempresa.numerofci as cod_fci
                         , unidademedida.sigla as und
                         , codigofiscaltributario.numero as cod_ncm
                         , produtoeservico.codigointerno as cod_fabricante
                         , tributacaopisentrada.percentual as pise_aliq_nor
                         , tributacaopissaida.percentual as pis_aliq_nor
                         , cstpiscofins.codigo as pis_codigo
                         , tributacaocofinsentrada.percentual as cofinse_aliq_nor
                         , tributacaocofinssaida.percentual as cofins_aliq_nor
                         , cstpiscofins_c.codigo as cofins_codigo
                         , csosn.codigo as csosn_codigo
                         , case when (cst.codigo=0) then '00' else cst.codigo end as cst_codigo
                         , produtoeservico.cest as personal6
                         from produto
left join produtoeservico on produto.id = produtoeservico.PRODUTOID
left join produtoeservicoempresa on produtoeservico.ID = produtoeservicoempresa.produtoeservicoid
left join produtoempresa on produtoeservicoempresa.produtoempresaid = produtoempresa.id
left join unidademedida on (produto.id = produtoeservico.PRODUTOID) and (produtoeservico.unidademedidaid = unidademedida.id)
left join codigofiscaltributario on (produto.id =produtoeservico.PRODUTOID) and (produtoeservico.ncmid = codigofiscaltributario.id)
left join percentualestadual on ((percentualestadual.estadualid = produtoempresa.produtotributacaoestadualid) and (percentualestadual.tipocalculo = 'NaoContribuinte'))
left join tributacaocsosn on tributacaocsosn.id = percentualestadual.tributacaocsosnid
left join csosn on csosn.id = tributacaocsosn.csosnid
left join tributacaocst on tributacaocst.id = percentualestadual.tributacaocstid
left join cst on cst.id = tributacaocst.cstid
left join tributacaofederal on tributacaofederal.id = produtoeservico.tributacaofederalid
left join tributacaopiscofins on tributacaopiscofins.id = tributacaofederal.tributacaopiscofinsid
left join tributacaopisentrada on tributacaopisentrada.id = tributacaopiscofins.tributacaopisentradaid
left join tributacaopissaida on tributacaopissaida.id = tributacaopiscofins.tributacaopissaidaid
left join cstpiscofins on cstpiscofins.id = tributacaopisentrada.cstpiscofinsid
left join tributacaocofinsentrada on tributacaocofinsentrada.id = tributacaopiscofins.tributacaocofinsentradaid
left join tributacaocofinssaida on tributacaocofinssaida.id = tributacaopiscofins.tributacaocofinssaidaid
left join cstpiscofins cstpiscofins_c on cstpiscofins_c.id = tributacaocofinsentrada.cstpiscofinsid
where percentualestadual.ufid=(select municipio.ufid from municipio,endereco where endereco.municipioid=municipio.id and endereco.pessoaid=4)
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27
