SELECT contas_pagar.[Codigo] as documento
      ,contas_pagar.[Codigo_Fornecedor] as cod_fornecedor
	  ,pessoa.Nome as nom_fornecedor
      ,contas_pagar.[N_Doc_Merc] as historico
      ,contas_pagar.[Parcela] as num_parcela
      ,contas_pagar.[Data_Emissao] as emissao
      ,contas_pagar.[Data_Vencimento] as vencimento
      ,contas_pagar.[Valor] as valor_dup
      ,contas_pagar.[Data_Pagamento] as pagamento
      ,contas_pagar.[Valor_Pago] as valor_pag
	  ,pessoa.cpf as cnpj
  FROM [SISMOURA].[dbo].[Contas_Pagar]
  left join SISMOURA.dbo.pessoa on contas_pagar.Codigo_Fornecedor = pessoa.Codigo
