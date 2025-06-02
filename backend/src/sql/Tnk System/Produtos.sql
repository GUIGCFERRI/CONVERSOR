SELECT
  p.id_produto AS CODIGO,
  p.referencia_interna_produto AS BARRAS,
  p.nome AS DESCRICAO,
  um.sigla AS UND,
  um.sigla AS UND_COMPRA,
  mp.nome AS FAMILIA,
  h.nome AS GRUPO,
  p.informacao_adicional AS CARACTERISTICAS,
  e.nome AS FORNECEDOR,
  se.quantidade AS QTD,
  p.preco_custo_medio AS CUSTO_MEDIO,
  p.preco_custo AS PRECO_CUSTO,
  NULL AS MARGEM_LUCRO,
  p.preco_venda AS PRECO_VENDA,
  p.cod_nat_receita_pis AS CF,
  p.cod_mercadoria AS COD_FABRICANTE,
  p.cest AS PERSONAL6,
  p.id_ncm AS COD_NCM
FROM [LAROSIER].[dbo].[produto] p
LEFT JOIN [LAROSIER].[dbo].[unidade_medida] um 
  ON p.id_unidade_medida = um.id_unidade_medida
LEFT JOIN [LAROSIER].[dbo].[marca_produto] mp 
  ON p.id_marca_produto = mp.id_marca_produto
LEFT JOIN [LAROSIER].[dbo].[entidade] e 
  ON p.id_entidade_fornecedor = e.id_entidade
LEFT JOIN [LAROSIER].[dbo].[hierarquia_produto] h 
  ON p.id_hierarquia_produto = h.id_hierarquia_produto
OUTER APPLY (
    SELECT TOP 1 quantidade
    FROM [LAROSIER].[dbo].[saldo_estoque] se2
    WHERE se2.id_produto = p.id_produto AND se2.inativo = 0
) se;