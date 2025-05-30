select
  produtos.Codigo as codigo,
  produtos.CodRefer as cod_fabricante,
  produtos.CodBarra as barras,
  produtos.Descricao as descricao,
  produtos.Fornecedor as fornecedor,
  produtos.PesoLiquido as peso,
  produtos.Minimo as qtd_ideal,
  produtos.EstoqAtual as qtd,
  grupoproduto.descricao as grupo,
  gruposub.SubDescricao as familia,
  produtos.ValUnitComp as preco_custo,
  produtos.ValUnitVend as preco_venda,
  produtos.MargeMLucro as margem_lucro,
  produtos.UltimaVenda as ultima_venda, 
  produtos.ST as st,
  produtos.NCM as cod_ncm,
  produtos.CEST as personal6
from produtos
left join grupoproduto on grupoproduto.grupo = produtos.grupo
left join gruposub on gruposub.codigo = produtos.Sub
