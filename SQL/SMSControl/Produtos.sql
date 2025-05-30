SELECT 
       TP.CodigoDoProduto as codigo
      ,TP.Descricao as descricao
      ,TP.Unidade01 as und
      ,TP.QuantidadeNaEmbalagem as fat_conv
      ,TP.PesoLiquido as peso  
      ,TE.Estoque as qtd
      ,TM.NomeDaMarca as caracteristicas
      ,F.RazaoSocialDoFornecedor as fornecedor
      ,TG.NomeDoGrupo as grupo
      ,TP.CustoNota as custo_compra
      ,TP.CustoMedio as custo_medio
      ,TBP.PrecoDaTabela as preco_venda
      ,TP.CSOSN as st
      ,TP.CFOP as cf
      ,TP.CodigoDaFabrica as cod_fabricante
      ,replace(TP.Ncm,'.','') as cod_ncm
      ,replace(TP.CEST,'.','') as personal6
      ,TP.DataDaInclusao as data_cadastro
      ,TP.DataDaAtualizacao as alteracao_preco
      ,case when TP.ProdutoAtivo = '1' then 'Ativo' else 'Inativo' end as situacao
  FROM SMSControl.dbo.TB_PRODUTOS as TP
  left join SMSControl.dbo.TB_GRUPO TG on TP.CodigoDoGrupo = TG.CodigoDoGrupo
  left join SMSControl.dbo.TB_MARCA TM on TP.CodigoDaMarca = TM.CodigoDaMarca
  left join SMSControl.dbo.TB_FORNECEDORES F on TP.CodigoDoFornecedor = F.CodigoDoFornecedor
  left join SMSControl.dbo.TB_ESTOQUE TE on TP.CodigoDoProduto = TE.CodigoDoProduto 
  left join SMSControl.dbo.TB_TABELAS_PRECOS TBP on TP.CodigoDoProduto  = TBP.CodigoDoProduto
  where TBP.CodigoDaTabela = '1' ---VERIFICAR EM TB.TABELA O NUMERO DA TABELA UTILIZADA NO SISTEMA
