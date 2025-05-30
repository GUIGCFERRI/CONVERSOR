select
  produto.CODPRODUTO as codigo,
  produto.CHAVEEXTERNA as barras,
  produto.Descricao as descricao,
  produto.UNIDADE as und,
  produto.Marca as caracteristicas,
  produto.EST_ATUAL as qtd,
  produto.EST_MIN as qtd_ideal,
  produto.CUSTO as preco_custo,
  produto.MARGEM as margem_lucro,
  produto.VENDA as preco_venda,
  produtotributacao.IcmsCstSaida as st,
  produtotributacao.NcmCodigo as cod_ncm,
  produtotributacao.CestCodigo as personal6,
  produto.CodigoFabrica as cod_fabricante,
  cast(produto.DataAlteracao as date) as ultima_alteracao
from produto
left join produtotributacao on produtotributacao.produtoid = produto.CODPRODUTO