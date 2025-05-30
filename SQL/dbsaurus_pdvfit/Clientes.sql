SELECT
       cad_idCadastro AS CODIGO
      ,cad_doc AS CNPJ_CNPF
      ,cad_ie AS IE_RG
      ,cad_xNome AS NOME
      ,cad_cep AS CEP
      ,cad_xLgr AS ENDERECO
      ,cad_nro AS NUMERO
      ,cad_xCpl AS COMPLEMENTO
      ,cad_xBairro AS BAIRRO
      ,cad_xMun AS CIDADE
      ,cad_uf AS UF
      ,cad_tel AS TELEFONE
  FROM dbsaurus_pdvfit.dbo.tbCadastroDados
