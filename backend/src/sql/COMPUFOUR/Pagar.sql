SELECT
                '*' ||''||TB_CONTA_PAGAR.DOCUMENTO
               ,TB_CONTA_PAGAR.HISTORICO
               ,TB_CONTA_PAGAR.ID_FORNEC AS COD_FORNECEDOR
               ,TB_FORNECEDOR.NOME AS NOM_FORNECEDOR
               ,TB_CONTA_PAGAR.DT_EMISSAO AS EMISSAO
               ,TB_CONTA_PAGAR.DT_VENCTO AS VENCIMENTO
               ,TB_CONTA_PAGAR.VLR_CTAPAG AS VALOR_DUP
               ,TB_CTAPAG_BAIXA.DT_BAIXA AS PAGAMENTO 
               ,TB_CTAPAG_BAIXA.VLR_PAGO AS VALOR_PAG
               ,TB_CTAPAG_BAIXA.VLR_ACRESC AS VALOR_JUR
               ,TB_CTAPAG_BAIXA.VLR_DESC AS VALOR_DES
               ,TB_CONTA_PORTADOR.DESCRICAO AS PORTADOR
               ,tb_fornecedor.cnpj AS CNPJ
            FROM TB_CONTA_PAGAR
            LEFT JOIN TB_FORNECEDOR ON TB_CONTA_PAGAR.ID_FORNEC=TB_FORNECEDOR.ID_FORNEC
            LEFT JOIN TB_CTAPAG_BAIXA ON TB_CONTA_PAGAR.ID_CTAPAG=TB_CTAPAG_BAIXA.ID_CTAPAG
            LEFT JOIN TB_CONTA_PORTADOR ON TB_CONTA_PAGAR.ID_PORTADOR=TB_CONTA_PORTADOR.ID_PORTADOR
            WHERE DT_EMISSAO<>DT_VENCTO AND TB_CTAPAG_BAIXA.DT_BAIXA IS NULL
