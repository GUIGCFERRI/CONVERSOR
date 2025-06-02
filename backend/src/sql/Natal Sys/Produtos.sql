select DBO.Cadastro_Produtos.cadpro_lng_codplu AS CODIGO,
DBO.Cadastro_Produtos.cadpro_str_codbarra AS BARRAS,
DBO.Cadastro_Produtos.cadpro_str_descricao AS DESCRICAO,
DBO.Cadastro_Produtos.cadpro_str_descpdv AS CARACTERISTICAS,
DBO.Cadastro_Produtos.cadpro_str_unidade AS UND,
DBO.Auxiliar_Grupo.cadgru_str_grupo AS GRUPO,
DBO.Cadastro_Produtos.codsit_str_codigosituacao AS ST,
DBO.Cadastro_Produtos.cadpro_lng_precovenda AS PRECO_VENDA,
DBO.Cadastro_Produtos.cadpro_lng_precoprom AS PRECO_CUSTO,
DBO.Cadastro_Produtos.cadpro_lng_estoqueloja AS QTD,
DBO.Cadastro_Produtos.cadpro_lng_estmin AS QTD_IDEAL,
DBO.Cadastro_Produtos.cadpro_str_ncm AS COD_NCM,
DBO.Cadastro_Produtos.cadpro_str_cest AS PERSONAL6
FROM DBO.Cadastro_Produtos
LEFT JOIN DBO.Auxiliar_Grupo ON DBO.Auxiliar_Grupo.cadgru_lng_grupo = DBO.Cadastro_Produtos.cadgru_lng_grupo
