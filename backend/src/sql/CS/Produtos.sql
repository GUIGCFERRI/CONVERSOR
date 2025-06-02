SELECT
  produtos.Codigo AS CODIGO,
  produtos.Nome AS DESCRICAO,
  produtos.CodBarrasPrincipal AS BARRAS,
  produtos.UM AS UN,
  ESTOQUE.SALDO AS QTD,
  produtos.EstoqueMin AS QTD_IDEAL,
  FORNECEDORES.RazaoSocial AS FORNECEDOR,
  produtos.ValorVenda AS PRECO_VENDA,
  produtos.ValorCusto AS PRECO_CUSTO,
  produtos.Origem AS OST,
  produtos.ICMS AS ST,
  produtos.NCM AS COD_NCM,
  produtos.Observacoes AS OBSERVACOES,
  produtos.UltimaVenda AS ULTIMA_VENDA,
  produtos.DataCadastro AS DATA_CADASTRO,
  produtos.DataModificacao AS ALTERACAO_PRECO
FROM produtos
LEFT JOIN FORNECEDORES ON FORNECEDORES.IdFornecedor = PRODUTOS.IdFornecedor
LEFT JOIN ESTOQUE ON ESTOQUE.IDEstoque = PRODUTOS.Codigo
LEFT JOIN tributacao_ncm ON tributacao_ncm.`NCM` = PRODUTOS.NCM