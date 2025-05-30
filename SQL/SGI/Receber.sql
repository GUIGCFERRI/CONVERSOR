SELECT 
       Receber.numero as conta
      ,Receber.prestacao as num_parcela
      ,Pessoas.codigo as cod_cliente
      ,Pessoas.nome as nom_cliente
      ,Pessoas.cpf_cnpj as cnpj
      ,Receber.data_compra as emissao
      ,Receber.data_venc as vencimento
      ,Receber.valor_prestacao as valor_dup
      ,Receber.valor_pago as valor_rec
      ,Receber.data_pagto as recebimento
      ,Receber.numcaixa as num_conta
      ,Receber.valorjuros as valor_jur
      ,Receber.codigo as documento
      ,Receber.descontoreal as valor_desc
      ,Receber.obs as observacoes
      ,Receber.nossonumero as nosso_num
  FROM SGI.dbo.Receber
left join SGI.dbo.Pessoas on Pessoas.codigo = Receber.cliente
where Pessoas.codigo is not null
