select
  produtos.ID as codigo,
  produtos.GTIN as barras,
  produtos.Referencia as cod_fabricante,
  produtos.MedidaEstoque as und,
  produtos.MedidaCompra as und_compra,
  produtos.Descricao as descricao,
  produtos_grupos.descricao as grupo,
  produtos_familias.descricao as familia,
  classificacoes_fiscais.codigoNCM as cod_ncm,
  classificacoes_fiscais.cest as personal6,
  produtos.MargemLucroVista as margem_lucro,
  produtos.PrecoAVista as preco_venda,
  produtos.PrecoCusto as preco_custo,
  produtos.CustoMedio as custo_medio,
  produtos.EstoqueMinimo as qtd_ideal,
  produtos_saldos_filiais.saldo as qtd,
  produtos.PesoLiquido as peso,
  produtos.DataCadastro as data_cadastro,
  produtos.Obs as observacoes
from produtos
left join produtos_grupos on produtos_grupos.id = produtos.IDGrupo
left join produtos_familias on produtos_familias.id = IDfamilia
left join classificacoes_fiscais on classificacoes_fiscais.id = produtos.IDClassificacaoFiscal
left join produtos_saldos_filiais on produtos_saldos_filiais.idproduto = produtos.ID