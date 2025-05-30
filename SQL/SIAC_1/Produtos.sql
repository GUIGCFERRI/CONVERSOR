select
  produtos.ProCod as codigo,
  produtos.ProDes as descricao,
  produtos.ProCodBar as barras,
  produtos.ProCodFab as cod_fabricante,
  produtosestoque.ProQtdEst as qtd,
  produtosestoque.ProMinEst as qtd_ideal,
  situacao_tributaria.SitCsosn as st,
  grupo.grudes as grupo,
  produtos.ProCusPre as preco_custo,
  produtos.proCumPre as custo_medio,
  produtosprecos.ProCaiPre as preco_venda,
  produtos.ProPesLiq as peso,
  produtos.ProDtaRea as data_cadastro,
  unidades.UniDes as und_compra,
  unidades.UniDes as und,
  produtos.ProNCM as cod_ncm,
  produtos.CestCodigo as personal6
from produtos
left join situacao_tributaria on situacao_tributaria.sitcod = produtos.SitCod 
left join produtosestoque on produtosestoque.procod = produtos.ProCod
left join produtosprecos on produtosprecos.procod = produtos.ProCod
left join grupo on grupo.grucod = produtos.GruCod
left join unidades on unidades.unicod = produtos.ProUniVenCod