SELECT 
       Hiper.dbo.recebimento.id_documento_receber as DOCUMENTO
      ,Hiper.dbo.recebimento.numero_documento_receber as HISTORICO
      ,Hiper.dbo.recebimento.nome_tipo_documento_financeiro as tipo_doc
      ,cast (Hiper.dbo.recebimento.data_vencimento as date) as vencimento
      ,Hiper.dbo.recebimento.situacao as especie
      ,Hiper.dbo.recebimento.saldo as valor_dup
      ,Hiper.dbo.recebimento.valor_juros_multa as valor_jur
      ,Hiper.dbo.recebimento.valor_total as valor_rec
      ,Hiper.dbo.entidade.id_entidade as cod_cliente
      ,Hiper.dbo.entidade.nome as nom_cliente
      ,CONCAT(pessoa_juridica.cnpj,pessoa_fisica.CPF) as CNPJ
  FROM Hiper.dbo.recebimento
  LEFT JOIN Hiper.dbo.entidade ON Hiper.dbo.entidade.Id = Hiper.dbo.recebimento.cliente_id
  LEFT JOIN Hiper.dbo.pessoa_juridica ON entidade.id_entidade=pessoa_juridica.id_entidade
  LEFT JOIN Hiper.dbo.pessoa_fisica ON entidade.id_entidade=pessoa_fisica.id_entidade
  order by Hiper.dbo.recebimento.numero_documento_receber ASC;
