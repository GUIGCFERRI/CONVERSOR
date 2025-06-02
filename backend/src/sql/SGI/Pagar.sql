SELECT 
       DupPagar.codigo as documento
      ,DupPagar.notafiscal as historico
     ,Pessoas.codigo as cod_fornecedor
      ,Pessoas.nome as nom_fornecedor
      ,Pessoas.cpf_cnpj as cnpj
      ,DupPagar.duplicata as tipo_doc
      ,cast (DupPagar.dtemis as date) as emissao
      ,cast (DupPagar.dtvenc as date) as vencimento
      ,cast (DupPagar.dtpagto as date) as pagamento
      ,DupPagar.VALORDUP as valor_dup
      ,DupPagar.valorpg as valor_pag
      ,DupPagar.valorjur as valor_jur
      ,DupPagar.obs as observacoes
      ,DupPagar.numcaixa  as num_conta
  FROM SGI.dbo.DupPagar
  left join SGI.dbo.Pessoas on Pessoas.codigo = DupPagar.codifor
  where Pessoas.codigo is not null
