SELECT contas_receber.[Codigo] as documento
      ,contas_receber.[Codigo_Cliente] as cod_cliente
	  ,pessoa.cpf as cnpj
	  ,pessoa.nome as nom_cliente
      ,contas_receber.[Numero_Documento] as historico
      ,contas_receber.[Data_Emissao] as emissao
      ,contas_receber.[Data_Vencimento] as vencimento
      ,contas_receber.[Valor] as valor_dup
      ,contas_receber.[Observacao] as observacoes
      ,contas_receber.[Data_Baixa] as recebimento
      ,contas_receber.[Valor_Recebido] as valor_rec
	  ,'1' as num_parcela
  FROM [SISMOURA].[dbo].[Contas_Receber]
   left join SISMOURA.dbo.pessoa on contas_receber.Codigo_cliente = pessoa.Codigo
