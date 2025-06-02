 SELECT TB_PRODUTO_SERVICO.cd_produto_servico AS CODIGO,
 TB_PRODUTO_SERVICO.ds_produto_servico AS DESCRICAO,
 tb_grupo_produto.ds_grupo_produto AS GRUPO,
 TB_PRODUTO_SERVICO.ds_marca AS CARACTERISTICAS,
 tb_pessoa.nm_pessoa AS FORNECEDOR,
 tb_classificacao_fiscal.cd_governo AS COD_NCM,
 TB_PRODUTO_SERVICO.cd_cest AS PERSONAL6,
 TB_PRODUTO_EMPRESA.qt_saldo AS QTD,
 TB_PRODUTO_EMPRESA.vl_custo_medio AS CUSTO_MEDIO,
 TB_PRODUTO_EMPRESA.vl_venda AS PRECO_VENDA,
 TB_PRODUTO_EMPRESA.vl_ultima_compra AS PRECO_COMPRA,
 tb_tributacao_icms.cd_governo AS ST,
 tb_produto_barra.ds_barra AS BARRAS,
 tb_unidade_medida.sg_unidade_medida AS UND
 FROM  TB_PRODUTO_SERVICO
 LEFT JOIN tb_produto_empresa ON TB_PRODUTO_SERVICO.cd_produto_servico = tb_produto_empresa.cd_produto_servico
 LEFT JOIN tb_grupo_produto ON  TB_PRODUTO_SERVICO.cd_grupo_produto = tb_grupo_produto.cd_grupo_produto
 LEFT JOIN tb_pessoa ON TB_PRODUTO_SERVICO.cd_fornecedor = tb_pessoa.cd_pessoa
 LEFT JOIN tb_classificacao_fiscal ON  TB_PRODUTO_SERVICO.cd_classificacao_fiscal = tb_classificacao_fiscal.cd_classificacao_fiscal
 LEFT JOIN tb_tributacao_icms ON tb_produto_empresa.cd_tributacao_icms_ecf = tb_tributacao_icms.cd_tributacao_icms
 LEFT JOIN tb_produto_unidade_medida ON  tb_produto_servico.cd_produto_servico = tb_produto_unidade_medida.cd_produto
 LEFT JOIN tb_unidade_medida ON tb_produto_unidade_medida.cd_unidade_medida = tb_unidade_medida.cd_unidade_medida
  LEFT JOIN tb_produto_barra ON   tb_produto_unidade_medida.cd_produto_unidade_medida = tb_produto_barra.cd_produto_unidade_medida

