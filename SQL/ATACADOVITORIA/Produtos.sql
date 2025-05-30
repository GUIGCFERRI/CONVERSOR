select produtos.Codigo,
produtos.Descricao,
ClasseTributaria.CSOSN as ST,
produtos.Caracteristicas AS CARACTERISTICA,
produtos.EAN AS BARRAS,
Produtos.Unidade AS UND,
produtos.PrecoVenda AS PRECO_VENDA,
produtos.PrecoCusto AS PRECO_CUSTO,
produtos.NCM AS COD_NCM,
produtos.CEST AS PERSONAL6,
produtos.Obs AS OBSERVACOES
FROM produtos
LEFT JOIN ClasseTributaria ON Produtos.ClasseTributaria = ClasseTributaria.Codigo 


