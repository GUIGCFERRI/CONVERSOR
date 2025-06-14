SELECT
       PRODUTOS.PRODUTOS_ID AS CODIGO,
       PRODUTOS.PRODUTOS_ID AS COD_FABRICANTE,
       MAX (PRODUTOSREFERENCIAS.PRODUTO_REFERENCIA) AS BARRAS,
       PRODUTOS.PRODUTO_NOME AS DESCRICAO,
       DEPARTAMENTOS.DEPARTAMENTO_NOME AS GRUPO,
       UNIDADES.UNIDADE_SIGLA AS UND,
       PRODUTOS.PRODUTO_ESTOQUE_MINIMO AS QTD_IDEAL,
       PRODUTOS.PRODUTO_ESTOQUE_DISPONIVEL AS QTD,
       PRODUTOS.PRODUTO_PRECO_CUSTO AS PRECO_CUSTO,
       PRODUTOS.PRODUTO_PRECO_VENDA AS PRECO_VENDA,
       SUBSTRING (PRODUTOS_ICMS_INTER.CSTICMS_ID FROM 1 FOR 1) AS OST,
       SUBSTRING (PRODUTOS_ICMS_INTER.CSTICMS_ID FROM 2 FOR 3) AS ST,
       --PRODUTOS_ICMS_INTER.CSOSN_ID AS ST,
       REPLACE(PRODUTOS.NCM_ID, '.', '') AS COD_NCM,
       REPLACE(PRODUTOS.CEST_ID, '.', '') AS PERSONAL6
FROM PRODUTOS
     LEFT JOIN PRODUTOSREFERENCIAS ON PRODUTOSREFERENCIAS.PRODUTOS_ID = PRODUTOS.PRODUTOS_ID
     LEFT JOIN DEPARTAMENTOS ON DEPARTAMENTOS.DEPARTAMENTOS_ID = PRODUTOS.DEPARTAMENTOS_ID
     LEFT JOIN UNIDADES ON UNIDADES.UNIDADES_ID = PRODUTOS.UNIDADES_ID
     LEFT JOIN PRODUTOS_ICMS_INTER ON PRODUTOS_ICMS_INTER.produtos_id = PRODUTOS.PRODUTOS_ID
     --WHERE PRODUTOSREFERENCIAS.PRODUTO_SEQUENCIA = '1'
GROUP BY 1,2,4,5,6,7,8,9,10,11,12,13,14
