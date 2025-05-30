select produto.codproduto as CODIGO
              ,fornecedor.razaossocialnome as FORNECEDOR
              ,grupo.nomegrupo as GRUPO
              ,produto.descricao as descricao
              ,produto.unidademedida as UND
              ,produto.quantidade as QTD
              ,produto.preco as PRECO_VENDA
              ,produto.custodecompra as PRECO_CUSTO
              ,produto.customedio as CUSTO_MEDIO
              ,SUBSTRING(produto.cst from 1 for 1) as OST
              ,SUBSTRING(produto.cst from 2 for 4) as ST
              ,produto.csosn
              ,produto.ncm as cod_NCM 
              ,min(codigobarra.codigobarra) as BARRAS
              ,produto.precorevenda as PRECO_ATACADO
              ,produto.datacadastro as CADASTRO
              ,produto.ultimacompra as ULTIMA_COMPRA
              ,produto.ultimavenda as ultima_VENDA
              ,produto.cest as personal6
              ,produto.obsindividual as observacoes
              from produto
              left join fornecedor on produto.codfornecedor=fornecedor.codfornecedor
              left join grupo on produto.codgrupo=grupo.codgrupo
              left join codigobarra on produto.codproduto=codigobarra.codproduto
              group by 1,2,3,4,5,6,7,8,9,10,11,12,13,15,16,17,18,19,20;

