SELECT 
--PROD_SERV.ORDEM AS CODIGO,
CLASSES.Nome AS grupo,
Cli_For.Nome as fornecedor,
GRUPOS.Nome AS familia,
Unidades_Venda.Nome AS UND,
NCM.CODIGO AS cod_ncm,
cest.Codigo as personal6,
PROD_SERV.Codigo_Barras as barras,
Prod_Serv.Codigo as cod_fabricante,
case when Prod_Serv.Codigo_barras = '' or Prod_Serv.Codigo_barras is null then Prod_Serv.Codigo_Adicional1 else Prod_Serv.Codigo_barras END AS caracteristicas,
Prod_Serv.nome as descricao,
Prod_Serv.Observacao as observacoes,
PSVVenda.preco as preco_venda,
PSVCusto.Preco as preco_custo,
PSVCustoMedio.Preco as custo_medio,
--PSVAtacado.Preco as preco_atacado,
--PSVDolar.Preco as preco_dolar,
--PSVIfood.Preco as preco_ifood,
(select min (Estoque_Atual.Qtde_Estoque_Atual) from S9_Real.dbo.Estoque_Atual where  Prod_Serv.Ordem=Estoque_Atual.Ordem_Prod_Serv and Estoque_Atual.Ordem_Filial = '1') as qtd,
(select top (1) S9_Real.dbo.Classe_Imposto_Operacao.ICMS_CST_CSOSN from S9_Real.dbo.Classe_Imposto_Operacao where Prod_Serv.Ordem_Classe_Imposto_Saida=Classe_Imposto_Operacao.Ordem_Classe_Imposto) as st	
FROM S9_Real.dbo.Prod_Serv
LEFT JOIN S9_Real.dbo.CLASSES ON Prod_Serv.Ordem_Classe=Classes.Ordem
LEFT JOIN S9_Real.dbo.GRUPOS ON Prod_Serv.Ordem_Grupo=GRUPOS.Ordem
LEFT JOIN S9_Real.dbo.Unidades_Venda ON Prod_Serv.Ordem_Unidade_Venda=Unidades_Venda.Ordem
LEFT JOIN S9_Real.dbo.NCM ON PROD_SERV.Ordem_NCM=NCM.Ordem
LEFT JOIN S9_Real.dbo.CEST ON Prod_Serv.Ordem_CEST=CEST.Ordem
LEFT JOIN S9_Real.dbo.Cli_For ON Prod_Serv.Ordem_Fornecedor1=Cli_For.Ordem
LEFT JOIN S9_Real.dbo.Prod_Serv_Precos PSVVenda on Prod_Serv.Ordem=PSVVenda.Ordem_Prod_Serv AND PSVVenda.Ordem_Tabela_Preco=1
left join S9_Real.dbo.Prod_Serv_precos PSVCusto on Prod_Serv.ordem=PSVCusto.Ordem_Prod_Serv AND PSVCUSTO.Ordem_Tabela_Preco=4
left join S9_Real.dbo.Prod_Serv_precos PSVCustoMedio on Prod_Serv.ordem=PSVCustoMedio.Ordem_Prod_Serv AND PSVCUSTOMEDIO.Ordem_Tabela_Preco=5
--left join S9_Real.dbo.Prod_Serv_precos PSVAtacado on Prod_Serv.ordem=PSVAtacado.Ordem_Prod_Serv AND PSVAtacado.Ordem_Tabela_Preco=5
--left join S9_Real.dbo.Prod_Serv_precos PSVDolar on Prod_Serv.ordem=PSVDolar.Ordem_Prod_Serv AND PSVDolar.Ordem_Tabela_Preco=2
--left join S9_Real.dbo.Prod_Serv_precos PSVIfood on Prod_Serv.ordem=PSVIfood.Ordem_Prod_Serv AND PSVIfood.Ordem_Tabela_Preco=7
LEFT JOIN S9_Real.dbo.Estoque_Atual ON Prod_Serv.Ordem=Estoque_Atual.Ordem_Prod_Serv
--where Estoque_Atual.Ordem_Filial = '1' and Prod_Serv.ordem>0 
