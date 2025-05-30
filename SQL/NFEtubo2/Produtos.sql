SELECT 
       PRODUTOS.Codigo as codigo
      ,PRODUTOS.Descricao as descricao
      ,PRODUTOS.Unidade as und
      ,PRODUTOS.CodigoBarra as barras
      ,Produtos.nomFornecedor as fornecedor
      ,Produtos.nomFabricante as caracteristicas
      ,Grupo.nome as grupo
      ,PRODUTOS.PesoBruto as peso
      ,PRODUTOS.ClassPis as PIS_CODIGO
      ,PRODUTOS.ClassCofins as COFINS_CODIGO
      ,PRODUTOS.pis as PIS_ALIQ_NOR
      ,PRODUTOS.cofins as COFINS_ALIQ_NOR
      ,PRODUTOS.classpisent as PISE_CODIGO
      ,PRODUTOS.classcofinsent as COFINSE_CODIGO
      ,PRODUTOS.EstoqueMinimo as qtd_ideal
      ,PRODUTOS.Estoque as qtd
      ,PRODUTOS.PrCusto as preco_custo
      ,PRODUTOS.Margem  as margem_lucro
      ,PRODUTOS.PrVenda as preco_venda
      ,PRODUTOS.PrAtacado as PRECO_ATACADO
      ,PRODUTOS.QtdAtacado as QTD_PRECO_ATACADO
      ,PRODUTOS.tributacao2 as st
      ,PRODUTOS.CFOP as cf
      ,LEFT (PRODUTOS.CFOP,3) as ELO
      ,PRODUTOS.CodNCM as cod_ncm
      ,PRODUTOS.referencia as cod_fabricante
      ,PRODUTOS.cest as personal6
      , case PRODUTOS.Ativado when 'S' then 'Ativo' else 'Inativo' end as SITUACAO
  FROM Produtos
  left join Grupo on Grupo.Codigo = PRODUTOS.codgrupo 
