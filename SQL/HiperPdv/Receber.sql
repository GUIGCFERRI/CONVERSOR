SELECT 
       HiperPdv.dbo.recebimento.id_documento_receber as DOCUMENTO
      ,HiperPdv.dbo.recebimento.numero_documento_receber as HISTORICO
      ,HiperPdv.dbo.recebimento.nome_tipo_documento_financeiro as tipo_doc
      ,cast (HiperPdv.dbo.recebimento.data_vencimento as date) as vencimento
      ,HiperPdv.dbo.recebimento.situacao as especie
      ,HiperPdv.dbo.recebimento.saldo as valor_dup
      ,HiperPdv.dbo.recebimento.valor_juros_multa as valor_jur
      ,HiperPdv.dbo.recebimento.valor_total as valor_rec
      ,HiperPdv.dbo.entidade.id_entidade as cod_cliente
      ,HiperPdv.dbo.entidade.nome as nom_cliente
      ,HiperPdv.dbo.entidade.cpf as CNPJ
  FROM HiperPdv.dbo.recebimento
  LEFT JOIN HiperPdv.dbo.entidade ON HiperPdv.dbo.entidade.Id = HiperPdv.dbo.recebimento.cliente_id
  order by HiperPdv.dbo.recebimento.numero_documento_receber desc;
