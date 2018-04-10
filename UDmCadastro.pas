unit UDmCadastro;

interface

uses
  System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  MemDS, DBAccess, Uni, Data.DBXMySQL, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider,maskutils,ACBrValidador,Forms,MidasLib,Data.SqlExpr,IniFiles,WideStrings,dialogs, Data.DBXFirebird,StrUtils,SysUtils;

type
  TDMcadastro = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SQLEmpresa: TSQLDataSet;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaID: TIntegerField;
    CDSEmpresaID_CEP: TIntegerField;
    CDSEmpresaID_CEP_CONTADOR: TIntegerField;
    CDSEmpresaNM_EMP: TStringField;
    CDSEmpresaDT_CAD: TSQLTimeStampField;
    CDSEmpresaNM_FAN: TStringField;
    CDSEmpresaNO_FON: TStringField;
    CDSEmpresaNO_FAX: TStringField;
    CDSEmpresaNO_CEL: TStringField;
    CDSEmpresaCD_PAI: TStringField;
    CDSEmpresaNO_CNP_CPF: TStringField;
    CDSEmpresaNO_INS_EST: TStringField;
    CDSEmpresaCD_REG_TBT: TStringField;
    CDSEmpresaNM_CTT: TStringField;
    CDSEmpresaE_MAIL_CTT: TStringField;
    CDSEmpresaHOME_PAGE: TStringField;
    CDSEmpresaDT_SLD_INI: TSQLTimeStampField;
    aaa: TSQLTimeStampField;
    CDSEmpresaDS_SER_NTF: TStringField;
    CDSEmpresaQT_ITE_NTF: TStringField;
    CDSEmpresaNO_NTF_SD: TStringField;
    CDSEmpresaNO_CUP_FIS: TStringField;
    CDSEmpresaNO_NT2: TStringField;
    CDSEmpresaDS_SER_NT2: TStringField;
    CDSEmpresaNO_NTF_SCA: TStringField;
    CDSEmpresaDS_SER_SCA: TStringField;
    CDSEmpresaNO_PED: TStringField;
    CDSEmpresaNO_OCM: TStringField;
    CDSEmpresaNO_RQS: TStringField;
    CDSEmpresaNO_RQS_FIL: TStringField;
    CDSEmpresaNO_CRD: TStringField;
    CDSEmpresaNO_KIT: TStringField;
    CDSEmpresaNO_RMN: TStringField;
    CDSEmpresaCD_CTB: TStringField;
    CDSEmpresaCD_CTB_DEB: TStringField;
    CDSEmpresaCD_CTB_CRD: TStringField;
    CDSEmpresaCD_FCN: TStringField;
    CDSEmpresaVR_PED_MAX: TSingleField;
    CDSEmpresaCD_LIB_VND: TStringField;
    CDSEmpresaCD_CCL_VND: TStringField;
    CDSEmpresaCD_CRT_VND: TStringField;
    CDSEmpresaCD_AUX: TStringField;
    CDSEmpresaNM_CTD: TStringField;
    CDSEmpresaNO_INS_CRC: TStringField;
    CDSEmpresaNO_CPF_CTD: TStringField;
    CDSEmpresaNO_CNP_CTD: TStringField;
    CDSEmpresaE_MAIL_CTD: TStringField;
    CDSEmpresaNO_EDR_CTD: TStringField;
    CDSEmpresaDS_CPL_CTD: TStringField;
    CDSEmpresaNO_FON_CTD: TStringField;
    CDSEmpresaNO_FAX_CTD: TStringField;
    CDSEmpresaNO_CEL_CTD: TStringField;
    CDSEmpresaUF_CID_CTD: TStringField;
    CDSEmpresaCD_PAI_CTD: TStringField;
    CDSEmpresaNO_CEP_CTD: TStringField;
    CDSEmpresaCD_CST_PIS: TStringField;
    CDSEmpresaCD_CST_PIE: TStringField;
    CDSEmpresaSN_APV_PIS: TStringField;
    CDSEmpresaAL_COF: TSingleField;
    CDSEmpresaCD_CST_COS: TStringField;
    CDSEmpresaCD_CST_COE: TStringField;
    CDSEmpresaSN_APV_COF: TStringField;
    CDSEmpresaID_NAT_PJ: TStringField;
    CDSEmpresaID_ATV: TStringField;
    CDSEmpresaID_ESC: TStringField;
    CDSEmpresaID_SIT_ESP: TStringField;
    CDSEmpresaCD_VER_PCF: TStringField;
    CDSEmpresaCD_MOD_FIS: TStringField;
    CDSEmpresaCD_MOD_ECF: TStringField;
    CDSEmpresaNO_SER_ECF: TStringField;
    CDSEmpresaNO_CXA_ECF: TStringField;
    CDSEmpresaCD_BAS_CRD: TStringField;
    CDSEmpresaVR_ALG: TSingleField;
    CDSEmpresaCD_FOR_ALG: TStringField;
    CDSEmpresaAL_ICM_MKP: TSingleField;
    CDSEmpresaAL_PIS_MKP: TSingleField;
    CDSEmpresaAL_COF_MKP: TSingleField;
    CDSEmpresaPC_DPA_MKP: TSingleField;
    CDSEmpresaPC_DPF_MKP: TSingleField;
    CDSEmpresaPC_DPE_MKP: TSingleField;
    CDSEmpresaPC_CMS_MKP: TSingleField;
    CDSEmpresaPC_MLC_MKP: TSingleField;
    CDSEmpresaAL_ICM_MKC: TSingleField;
    CDSEmpresaAL_PIS_MKC: TSingleField;
    CDSEmpresaAL_COF_MKC: TSingleField;
    CDSEmpresaPC_DPA_MKC: TSingleField;
    CDSEmpresaPC_DPF_MKC: TSingleField;
    CDSEmpresaPC_DPE_MKC: TSingleField;
    CDSEmpresaPC_CMS_MKC: TSingleField;
    CDSEmpresaPC_MLC_MKC: TSingleField;
    CDSEmpresaAL_ICM_M12: TSingleField;
    CDSEmpresaAL_PIS_M12: TSingleField;
    CDSEmpresaAL_COF_M12: TSingleField;
    CDSEmpresaPC_DPA_M12: TSingleField;
    CDSEmpresaPC_DPF_M12: TSingleField;
    CDSEmpresaPC_DPE_M12: TSingleField;
    CDSEmpresaPC_CMS_M12: TSingleField;
    CDSEmpresaPC_MLC_M12: TSingleField;
    CDSEmpresaDS_OBS: TBlobField;
    CDSEmpresaCD_USU: TStringField;
    CDSEmpresaID_VER_ATU: TStringField;
    CDSEmpresaNO_EDR: TStringField;
    CDSUsuarios: TClientDataSet;
    DSPUsuarios: TDataSetProvider;
    SQLUsuarios: TSQLDataSet;
    CDSUsuariosID: TIntegerField;
    CDSUsuariosID_EMPRESA: TIntegerField;
    CDSUsuariosNM_USU: TStringField;
    CDSUsuariosDT_CAD: TSQLTimeStampField;
    CDSUsuariosST_USU: TStringField;
    CDSUsuariosDS_SNH: TStringField;
    CDSUsuariosNM_SET_TRB: TStringField;
    CDSUsuariosNM_FNC: TStringField;
    CDSUsuariosNV_ACS: TStringField;
    CDSUsuariosTP_IMP: TStringField;
    CDSUsuariosCD_FAM_PDT: TStringField;
    CDSUsuariosTP_ACS_CLI: TStringField;
    CDSUsuariosTP_ACS_FOR: TStringField;
    CDSUsuariosSN_CTL: TStringField;
    CDSUsuariosSN_PRC: TStringField;
    CDSUsuariosSN_CLI: TStringField;
    CDSUsuariosSN_FOR: TStringField;
    CDSUsuariosSN_CTR: TStringField;
    CDSUsuariosSN_CHQ_PDT: TStringField;
    CDSUsuariosSN_CHQ_BXD: TStringField;
    CDSUsuariosSN_CHQ_PDV: TStringField;
    CDSUsuariosSN_CHQ_DVD: TStringField;
    CDSUsuariosSN_CHQ_DVB: TStringField;
    CDSUsuariosSN_CTP: TStringField;
    CDSUsuariosSN_PDT: TStringField;
    CDSUsuariosSN_ETQ: TStringField;
    CDSUsuariosSN_TAB_PRC: TStringField;
    CDSUsuariosSN_EST: TStringField;
    CDSUsuariosSN_DIV_FIN: TStringField;
    CDSUsuariosSN_DIV_FIS: TStringField;
    CDSUsuariosSN_FUN: TStringField;
    CDSUsuariosSN_VEN: TStringField;
    CDSUsuariosSN_REP: TStringField;
    CDSUsuariosSN_TRN: TStringField;
    CDSUsuariosSN_NTF_RDZ: TStringField;
    CDSUsuariosSN_NTE: TStringField;
    CDSUsuariosSN_PED_OCM: TStringField;
    CDSUsuariosSN_RQS: TStringField;
    CDSUsuariosCD_USU: TStringField;
    CDSUsuariosID_VER_ATU: TStringField;
    CDSUsuariosSN_PRC_FAT_EMS_NOTA: TStringField;
    CDSUsuariosSN_PRC_RMS_RET_BANCARIA: TStringField;
    CDSUsuariosSN_PRC_CONTROLE_CHQ: TStringField;
    CDSUsuariosSN_PRC_SINTEGRA: TStringField;
    CDSUsuariosSN_PRC_LIVROSFISCAIS: TStringField;
    CDSUsuariosSN_PRC_LOTE_ORCAMENTOS: TStringField;
    CDSUsuariosSN_PRC_CMS_VEND: TStringField;
    SQLCEP: TSQLDataSet;
    DSPCEP: TDataSetProvider;
    CDSCEP: TClientDataSet;
    CDSCEPID: TIntegerField;
    CDSCEPNO_CEP: TStringField;
    CDSCEPNM_RUA: TStringField;
    CDSCEPNM_BAI: TStringField;
    CDSCEPNM_CID: TStringField;
    CDSCEPUF_CID: TStringField;
    CDSCEPCD_PAI: TStringField;
    CDSCEPSN_EDR_ATU: TStringField;
    CDSCEPCD_USU: TStringField;
    CDSCEPID_VER_ATU: TStringField;
    CDSEmpresaDS_CPL: TStringField;
    CDSEmpresaAL_PIS: TSingleField;
    CDSEmpresaNO_NTF: TStringField;
    SQLEmpresaID: TIntegerField;
    SQLEmpresaID_CEP: TIntegerField;
    SQLEmpresaID_CEP_CONTADOR: TIntegerField;
    SQLEmpresaNM_EMP: TStringField;
    SQLEmpresaDT_CAD: TSQLTimeStampField;
    SQLEmpresaNM_FAN: TStringField;
    SQLEmpresaDS_CPL: TStringField;
    SQLEmpresaNO_FON: TStringField;
    SQLEmpresaNO_FAX: TStringField;
    SQLEmpresaNO_CEL: TStringField;
    SQLEmpresaCD_PAI: TStringField;
    SQLEmpresaNO_CNP_CPF: TStringField;
    SQLEmpresaNO_INS_EST: TStringField;
    SQLEmpresaCD_REG_TBT: TStringField;
    SQLEmpresaNM_CTT: TStringField;
    SQLEmpresaE_MAIL_CTT: TStringField;
    SQLEmpresaHOME_PAGE: TStringField;
    SQLEmpresaDT_SLD_INI: TSQLTimeStampField;
    SQLEmpresaDT_ULT_INV: TSQLTimeStampField;
    SQLEmpresaNO_NTF: TStringField;
    SQLEmpresaDS_SER_NTF: TStringField;
    SQLEmpresaQT_ITE_NTF: TStringField;
    SQLEmpresaNO_NTF_SD: TStringField;
    SQLEmpresaNO_CUP_FIS: TStringField;
    SQLEmpresaNO_NT2: TStringField;
    SQLEmpresaDS_SER_NT2: TStringField;
    SQLEmpresaNO_NTF_SCA: TStringField;
    SQLEmpresaDS_SER_SCA: TStringField;
    SQLEmpresaNO_PED: TStringField;
    SQLEmpresaNO_OCM: TStringField;
    SQLEmpresaNO_RQS: TStringField;
    SQLEmpresaNO_RQS_FIL: TStringField;
    SQLEmpresaNO_CRD: TStringField;
    SQLEmpresaNO_KIT: TStringField;
    SQLEmpresaNO_RMN: TStringField;
    SQLEmpresaCD_CTB: TStringField;
    SQLEmpresaCD_CTB_DEB: TStringField;
    SQLEmpresaCD_CTB_CRD: TStringField;
    SQLEmpresaCD_FCN: TStringField;
    SQLEmpresaVR_PED_MAX: TSingleField;
    SQLEmpresaCD_LIB_VND: TStringField;
    SQLEmpresaCD_CCL_VND: TStringField;
    SQLEmpresaCD_CRT_VND: TStringField;
    SQLEmpresaCD_AUX: TStringField;
    SQLEmpresaNM_CTD: TStringField;
    SQLEmpresaNO_INS_CRC: TStringField;
    SQLEmpresaNO_CPF_CTD: TStringField;
    SQLEmpresaNO_CNP_CTD: TStringField;
    SQLEmpresaE_MAIL_CTD: TStringField;
    SQLEmpresaNO_EDR_CTD: TStringField;
    SQLEmpresaDS_CPL_CTD: TStringField;
    SQLEmpresaNO_FON_CTD: TStringField;
    SQLEmpresaNO_FAX_CTD: TStringField;
    SQLEmpresaNO_CEL_CTD: TStringField;
    SQLEmpresaUF_CID_CTD: TStringField;
    SQLEmpresaCD_PAI_CTD: TStringField;
    SQLEmpresaNO_CEP_CTD: TStringField;
    SQLEmpresaAL_PIS: TSingleField;
    SQLEmpresaCD_CST_PIS: TStringField;
    SQLEmpresaCD_CST_PIE: TStringField;
    SQLEmpresaSN_APV_PIS: TStringField;
    SQLEmpresaAL_COF: TSingleField;
    SQLEmpresaCD_CST_COS: TStringField;
    SQLEmpresaCD_CST_COE: TStringField;
    SQLEmpresaSN_APV_COF: TStringField;
    SQLEmpresaID_NAT_PJ: TStringField;
    SQLEmpresaID_ATV: TStringField;
    SQLEmpresaID_ESC: TStringField;
    SQLEmpresaID_SIT_ESP: TStringField;
    SQLEmpresaCD_VER_PCF: TStringField;
    SQLEmpresaCD_MOD_FIS: TStringField;
    SQLEmpresaCD_MOD_ECF: TStringField;
    SQLEmpresaNO_SER_ECF: TStringField;
    SQLEmpresaNO_CXA_ECF: TStringField;
    SQLEmpresaCD_BAS_CRD: TStringField;
    SQLEmpresaVR_ALG: TSingleField;
    SQLEmpresaCD_FOR_ALG: TStringField;
    SQLEmpresaAL_ICM_MKP: TSingleField;
    SQLEmpresaAL_PIS_MKP: TSingleField;
    SQLEmpresaAL_COF_MKP: TSingleField;
    SQLEmpresaPC_DPA_MKP: TSingleField;
    SQLEmpresaPC_DPF_MKP: TSingleField;
    SQLEmpresaPC_DPE_MKP: TSingleField;
    SQLEmpresaPC_CMS_MKP: TSingleField;
    SQLEmpresaPC_MLC_MKP: TSingleField;
    SQLEmpresaAL_ICM_MKC: TSingleField;
    SQLEmpresaAL_PIS_MKC: TSingleField;
    SQLEmpresaAL_COF_MKC: TSingleField;
    SQLEmpresaPC_DPA_MKC: TSingleField;
    SQLEmpresaPC_DPF_MKC: TSingleField;
    SQLEmpresaPC_DPE_MKC: TSingleField;
    SQLEmpresaPC_CMS_MKC: TSingleField;
    SQLEmpresaPC_MLC_MKC: TSingleField;
    SQLEmpresaAL_ICM_M12: TSingleField;
    SQLEmpresaAL_PIS_M12: TSingleField;
    SQLEmpresaAL_COF_M12: TSingleField;
    SQLEmpresaPC_DPA_M12: TSingleField;
    SQLEmpresaPC_DPF_M12: TSingleField;
    SQLEmpresaPC_DPE_M12: TSingleField;
    SQLEmpresaPC_CMS_M12: TSingleField;
    SQLEmpresaPC_MLC_M12: TSingleField;
    SQLEmpresaDS_OBS: TBlobField;
    SQLEmpresaCD_USU: TStringField;
    SQLEmpresaID_VER_ATU: TStringField;
    SQLEmpresaNO_EDR: TStringField;
    SQLEmpresaNM_CID: TStringField;
    SQLEmpresaNM_BAI: TStringField;
    SQLEmpresaNM_RUA: TStringField;
    SQLEmpresaNO_CEP: TStringField;
    SQLEmpresaID_CEP_1: TIntegerField;
    SQLEmpresaNM_CID_CON: TStringField;
    SQLEmpresaNM_BAI_CON: TStringField;
    SQLEmpresaNM_RUA_CON: TStringField;
    SQLEmpresaNO_CEP_CON: TStringField;
    SQLEmpresaID_CEP_CONT: TIntegerField;
    CDSEmpresaNM_CID: TStringField;
    CDSEmpresaNM_BAI: TStringField;
    CDSEmpresaNM_RUA: TStringField;
    CDSEmpresaNO_CEP: TStringField;
    CDSEmpresaID_CEP_1: TIntegerField;
    CDSEmpresaNM_CID_CON: TStringField;
    uu: TStringField;
    CDSEmpresaNM_RUA_CON: TStringField;
    CDSEmpresaNO_CEP_CON: TStringField;
    CDSEmpresaID_CEP_CONT: TIntegerField;
    CDSUsuariosCD_USU_INC: TStringField;
    SQLFornecedor: TSQLDataSet;
    DSPFornecedor: TDataSetProvider;
    CDSFornecedor: TClientDataSet;
    SQLCategoria: TSQLDataSet;
    DSPCategoria: TDataSetProvider;
    CDSCategoria: TClientDataSet;
    CDSCategoriaID: TIntegerField;
    CDSCategoriaSN_IPI_ICM: TStringField;
    CDSCategoriaCD_USU: TStringField;
    CDSCategoriaID_VER_ATU: TStringField;
    SQLFamProduto: TSQLDataSet;
    DSPFamProduto: TDataSetProvider;
    CDSFamProduto: TClientDataSet;
    SQLRepresentante: TSQLDataSet;
    DSPRepresentante: TDataSetProvider;
    CDSRepresentante: TClientDataSet;
    CDSRepresentanteID: TIntegerField;
    CDSRepresentanteNM_REP: TStringField;
    CDSRepresentanteST_REP: TStringField;
    CDSRepresentanteDT_CAD: TSQLTimeStampField;
    CDSRepresentanteE_MAIL: TStringField;
    CDSRepresentanteHOME_PAGE: TStringField;
    CDSRepresentanteCD_USU: TStringField;
    CDSRepresentanteID_VER_ATU: TStringField;
    CDSRepresentanteDS_CPL: TStringField;
    CDSRepresentanteNO_FON: TStringField;
    CDSRepresentanteNO_FAX: TStringField;
    CDSRepresentanteNO_CEL: TStringField;
    CDSRepresentanteID_CEP: TIntegerField;
    CDSRepresentanteDS_OBS: TMemoField;
    CDSRepresentanteNO_INS_EST: TStringField;
    CDSRepresentanteNM_REP_RAZ: TStringField;
    CDSRepresentanteNO_CNP_CPF: TStringField;
    CDSRepresentanteNO_EDR: TStringField;
    CDSCategoriaNM_CTG_CLI: TStringField;
    SQLEmpresaUF_CID: TStringField;
    SQLEmpresaUF_CID_CONT: TStringField;
    CDSEmpresaUF_CID: TStringField;
    CDSEmpresaUF_CID_CONT: TStringField;
    SQLGruProduto: TSQLDataSet;
    DSPGruProduto: TDataSetProvider;
    CDSGruProduto: TClientDataSet;
    SQLGruProdutoID: TIntegerField;
    SQLGruProdutoNM_GRU_PDT: TStringField;
    SQLGruProdutoID_FAM_PDT: TIntegerField;
    SQLGruProdutoDT_CAD: TSQLTimeStampField;
    SQLGruProdutoCD_USU: TStringField;
    SQLGruProdutoID_VER_ATU: TIntegerField;
    SQLGruProdutoNM_FAM_PDT: TStringField;
    CDSGruProdutoID: TIntegerField;
    CDSGruProdutoNM_GRU_PDT: TStringField;
    CDSGruProdutoID_FAM_PDT: TIntegerField;
    CDSGruProdutoDT_CAD: TSQLTimeStampField;
    CDSGruProdutoCD_USU: TStringField;
    CDSGruProdutoID_VER_ATU: TIntegerField;
    CDSGruProdutoNM_FAM_PDT: TStringField;
    SQLFamProdutoID: TIntegerField;
    SQLFamProdutoDT_CAD: TSQLTimeStampField;
    SQLFamProdutoCD_USU: TStringField;
    SQLFamProdutoID_VER_ATU: TIntegerField;
    SQLFamProdutoNM_FAM_PDT: TStringField;
    CDSFamProdutoID: TIntegerField;
    CDSFamProdutoDT_CAD: TSQLTimeStampField;
    CDSFamProdutoCD_USU: TStringField;
    CDSFamProdutoID_VER_ATU: TIntegerField;
    CDSFamProdutoNM_FAM_PDT: TStringField;
    SQLRepresentanteID: TIntegerField;
    SQLRepresentanteNM_REP: TStringField;
    SQLRepresentanteST_REP: TStringField;
    SQLRepresentanteDT_CAD: TSQLTimeStampField;
    SQLRepresentanteNM_REP_RAZ: TStringField;
    SQLRepresentanteNO_CNP_CPF: TStringField;
    SQLRepresentanteNO_INS_EST: TStringField;
    SQLRepresentanteE_MAIL: TStringField;
    SQLRepresentanteHOME_PAGE: TStringField;
    SQLRepresentanteCD_USU: TStringField;
    SQLRepresentanteID_VER_ATU: TStringField;
    SQLRepresentanteNO_EDR: TStringField;
    SQLRepresentanteDS_CPL: TStringField;
    SQLRepresentanteNO_FON: TStringField;
    SQLRepresentanteNO_FAX: TStringField;
    SQLRepresentanteNO_CEL: TStringField;
    SQLRepresentanteID_CEP: TIntegerField;
    SQLRepresentanteDS_OBS: TMemoField;
    SQLRepresentanteNM_BAI: TStringField;
    SQLRepresentanteNM_CID: TStringField;
    SQLRepresentanteNM_RUA: TStringField;
    SQLRepresentanteNO_CEP: TStringField;
    SQLRepresentanteUF_CID: TStringField;
    CDSRepresentanteNM_BAI: TStringField;
    CDSRepresentanteNM_CID: TStringField;
    CDSRepresentanteNM_RUA: TStringField;
    CDSRepresentanteNO_CEP: TStringField;
    CDSRepresentanteUF_CID: TStringField;
    SQLLocalCobranca: TSQLDataSet;
    DSPLocalCobranca: TDataSetProvider;
    CDSLocalCobranca: TClientDataSet;
    CDSLocalCobrancaID: TIntegerField;
    CDSLocalCobrancaCD_LOC_COB: TStringField;
    CDSLocalCobrancaNM_LOC_COB: TStringField;
    CDSLocalCobrancaTP_LOC_COB: TStringField;
    CDSLocalCobrancaDT_CAD: TSQLTimeStampField;
    CDSLocalCobrancaNO_FOL_CHQ: TStringField;
    CDSLocalCobrancaDIA_LIB: TStringField;
    CDSLocalCobrancaNO_BCO: TStringField;
    CDSLocalCobrancaNO_CTA_COR: TStringField;
    CDSLocalCobrancaDT_SLD_INI: TSQLTimeStampField;
    CDSLocalCobrancaVR_SLD_INI: TSingleField;
    CDSLocalCobrancaVR_SLD_ATU: TSingleField;
    CDSLocalCobrancaNO_BCO_COB: TStringField;
    CDSLocalCobrancaNO_AGC_COB: TStringField;
    CDSLocalCobrancaCD_CIA_CTR: TStringField;
    CDSLocalCobrancaID_CIA_CTR: TStringField;
    CDSLocalCobrancaCD_CDT: TStringField;
    CDSLocalCobrancaTP_DOC_COB: TStringField;
    CDSLocalCobrancaNO_INS_NUM: TStringField;
    CDSLocalCobrancaNO_FNS_NUM: TStringField;
    CDSLocalCobrancaSQ_NOS_NUM: TStringField;
    CDSLocalCobrancaNO_DIA_PRT: TStringField;
    CDSLocalCobrancaPC_MUL: TSingleField;
    CDSLocalCobrancaPC_JUR: TSingleField;
    CDSLocalCobrancaTP_LAY_ARQ: TStringField;
    CDSLocalCobrancaTP_LAY_BOL: TStringField;
    CDSLocalCobrancaNM_ARQ_CFG: TStringField;
    CDSLocalCobrancaNM_ARQ_RMS: TStringField;
    CDSLocalCobrancaNO_CRT_CTR: TStringField;
    CDSLocalCobrancaCD_VAR_CTR: TStringField;
    CDSLocalCobrancaDS_MSG: TStringField;
    CDSLocalCobrancaTP_TIT_CTR: TStringField;
    CDSLocalCobrancaNM_DIR_CTR: TStringField;
    CDSLocalCobrancaNO_RMS_CTR: TStringField;
    CDSLocalCobrancaTT_ARQ_CTR: TStringField;
    CDSLocalCobrancaVR_LMT_RMS: TSingleField;
    CDSLocalCobrancaDT_RMS_CTR: TSQLTimeStampField;
    CDSLocalCobrancaTP_MOE_ENV: TStringField;
    CDSLocalCobrancaTP_MOE_RET: TStringField;
    CDSLocalCobrancaTX_DCT_CTR: TSingleField;
    CDSLocalCobrancaID_CIA_CTP: TStringField;
    CDSLocalCobrancaNM_DIR_CTP: TStringField;
    CDSLocalCobrancaNO_RMS_CTP: TStringField;
    CDSLocalCobrancaTT_ARQ_CTP: TStringField;
    CDSLocalCobrancaDT_RMS_CTP: TSQLTimeStampField;
    CDSLocalCobrancaTX_DCT_CTP: TSingleField;
    CDSLocalCobrancaNO_SEQ_CTP: TStringField;
    CDSLocalCobrancaDT_RMS_CHQ: TSQLTimeStampField;
    CDSLocalCobrancaNO_SEQ_CHQ: TStringField;
    CDSLocalCobrancaCD_CTB: TStringField;
    CDSLocalCobrancaCD_CTB_DEB: TStringField;
    CDSLocalCobrancaCD_CTB_CRD: TStringField;
    CDSLocalCobrancaNM_CTT: TStringField;
    CDSLocalCobrancaNO_CEL_CTT: TStringField;
    CDSLocalCobrancaID_CEP: TIntegerField;
    CDSLocalCobrancaNM_RUA: TStringField;
    CDSLocalCobrancaNM_BAI: TStringField;
    CDSLocalCobrancaNO_FON: TStringField;
    CDSLocalCobrancaNO_FAX: TStringField;
    CDSLocalCobrancaNM_CID: TStringField;
    CDSLocalCobrancaUF_CID: TStringField;
    CDSLocalCobrancaNO_CEP: TStringField;
    CDSLocalCobrancaTT_ARQ_CHQ: TStringField;
    CDSLocalCobrancaDS_OBS: TBlobField;
    CDSLocalCobrancaCD_USU: TStringField;
    CDSLocalCobrancaID_VER_ATU: TStringField;
    SQLGruMeta: TSQLDataSet;
    DSPGruMeta: TDataSetProvider;
    CDSGruMeta: TClientDataSet;
    SQLGruMetaID: TIntegerField;
    SQLGruMetaID_VENDA_META: TIntegerField;
    SQLGruMetaID_GRU_PRODUTO: TIntegerField;
    CDSGruMetaID: TIntegerField;
    CDSGruMetaID_VENDA_META: TIntegerField;
    CDSGruMetaID_GRU_PRODUTO: TIntegerField;
    SQLVendaMeta: TSQLDataSet;
    DSPVendaMeta: TDataSetProvider;
    CDSVendaMeta: TClientDataSet;
    SQLVendaMetaID: TIntegerField;
    SQLVendaMetaNM_GRU_MET: TStringField;
    SQLVendaMetaCD_USU: TStringField;
    CDSVendaMetaID: TIntegerField;
    CDSVendaMetaNM_GRU_MET: TStringField;
    CDSVendaMetaCD_USU: TStringField;
    SQLVendaMetaDT_CAD: TSQLTimeStampField;
    CDSVendaMetaDT_CAD: TSQLTimeStampField;
    CDSGruMetaGrupo: TStringField;
    SQLVendedor: TSQLDataSet;
    DSPVendedor: TDataSetProvider;
    CDSVendedor: TClientDataSet;
    SQLVendedorID: TIntegerField;
    SQLVendedorNM_VEN: TStringField;
    SQLVendedorST_VEN: TStringField;
    SQLVendedorTP_VEN: TStringField;
    SQLVendedorDT_CAD: TSQLTimeStampField;
    SQLVendedorDT_ANV: TSQLTimeStampField;
    SQLVendedorNM_VEN_RAZ: TStringField;
    SQLVendedorNO_FON: TStringField;
    SQLVendedorNO_FAX: TStringField;
    SQLVendedorNO_CEL: TStringField;
    SQLVendedorCD_PAI: TStringField;
    SQLVendedorNO_INS_EST: TStringField;
    SQLVendedorE_MAIL: TStringField;
    SQLVendedorHOME_PAGE: TStringField;
    SQLVendedorCD_BCO: TStringField;
    SQLVendedorNM_BCO: TStringField;
    SQLVendedorCD_AGC: TStringField;
    SQLVendedorNO_CTA_COR: TStringField;
    SQLVendedorCD_CTB: TStringField;
    SQLVendedorCD_CTB_CRD: TStringField;
    SQLVendedorCD_CTB_DEB: TStringField;
    SQLVendedorSN_CMS: TStringField;
    SQLVendedorSN_RLT: TStringField;
    SQLVendedorPC_CMS: TSingleField;
    SQLVendedorCD_FOR: TStringField;
    SQLVendedorDS_SNH: TStringField;
    SQLVendedorFM_MET_1: TStringField;
    SQLVendedorVR_MET_1: TSingleField;
    SQLVendedorTP_MET_1: TStringField;
    SQLVendedorFM_MET_2: TStringField;
    SQLVendedorVR_MET_2: TSingleField;
    SQLVendedorTP_MET_2: TStringField;
    SQLVendedorFM_MET_3: TStringField;
    SQLVendedorVR_MET_3: TSingleField;
    SQLVendedorTP_MET_3: TStringField;
    SQLVendedorFM_MET_4: TStringField;
    SQLVendedorVR_MET_4: TSingleField;
    SQLVendedorTP_MET_4: TStringField;
    SQLVendedorFM_MET_5: TStringField;
    SQLVendedorVR_MET_5: TSingleField;
    SQLVendedorTP_MET_5: TStringField;
    SQLVendedorFM_MET_6: TStringField;
    SQLVendedorVR_MET_6: TSingleField;
    SQLVendedorTP_MET_6: TStringField;
    SQLVendedorFM_MET_7: TStringField;
    SQLVendedorVR_MET_7: TSingleField;
    SQLVendedorTP_MET_7: TStringField;
    SQLVendedorFM_MET_8: TStringField;
    SQLVendedorVR_MET_8: TSingleField;
    SQLVendedorTP_MET_8: TStringField;
    SQLVendedorCD_SUP: TStringField;
    SQLVendedorPC_CMS_SUP: TSingleField;
    SQLVendedorDS_OBS: TBlobField;
    SQLVendedorSN_CLI: TStringField;
    SQLVendedorSN_PDT: TStringField;
    SQLVendedorSN_PED: TStringField;
    SQLVendedorSN_OCM: TStringField;
    SQLVendedorSN_DIV_FIN: TStringField;
    SQLVendedorCD_USU: TStringField;
    SQLVendedorID_VER_ATU: TStringField;
    SQLVendedorID_CEP: TIntegerField;
    SQLVendedorNM_BAI: TStringField;
    SQLVendedorNM_CID: TStringField;
    SQLVendedorNM_RUA: TStringField;
    SQLVendedorNO_CEP: TStringField;
    SQLVendedorUF_CID: TStringField;
    CDSVendedorID: TIntegerField;
    CDSVendedorNM_VEN: TStringField;
    CDSVendedorST_VEN: TStringField;
    CDSVendedorTP_VEN: TStringField;
    CDSVendedorDT_CAD: TSQLTimeStampField;
    CDSVendedorDT_ANV: TSQLTimeStampField;
    CDSVendedorNM_VEN_RAZ: TStringField;
    CDSVendedorNO_FON: TStringField;
    CDSVendedorNO_FAX: TStringField;
    CDSVendedorNO_CEL: TStringField;
    CDSVendedorCD_PAI: TStringField;
    CDSVendedorNO_INS_EST: TStringField;
    CDSVendedorE_MAIL: TStringField;
    CDSVendedorHOME_PAGE: TStringField;
    CDSVendedorCD_BCO: TStringField;
    CDSVendedorNM_BCO: TStringField;
    CDSVendedorCD_AGC: TStringField;
    CDSVendedorNO_CTA_COR: TStringField;
    CDSVendedorCD_CTB: TStringField;
    CDSVendedorCD_CTB_CRD: TStringField;
    CDSVendedorCD_CTB_DEB: TStringField;
    CDSVendedorSN_CMS: TStringField;
    CDSVendedorSN_RLT: TStringField;
    CDSVendedorPC_CMS: TSingleField;
    CDSVendedorCD_FOR: TStringField;
    CDSVendedorDS_SNH: TStringField;
    CDSVendedorFM_MET_1: TStringField;
    CDSVendedorVR_MET_1: TSingleField;
    CDSVendedorTP_MET_1: TStringField;
    CDSVendedorFM_MET_2: TStringField;
    CDSVendedorVR_MET_2: TSingleField;
    CDSVendedorTP_MET_2: TStringField;
    CDSVendedorFM_MET_3: TStringField;
    CDSVendedorVR_MET_3: TSingleField;
    CDSVendedorTP_MET_3: TStringField;
    CDSVendedorFM_MET_4: TStringField;
    CDSVendedorVR_MET_4: TSingleField;
    CDSVendedorTP_MET_4: TStringField;
    CDSVendedorFM_MET_5: TStringField;
    CDSVendedorVR_MET_5: TSingleField;
    CDSVendedorTP_MET_5: TStringField;
    CDSVendedorFM_MET_6: TStringField;
    CDSVendedorVR_MET_6: TSingleField;
    CDSVendedorTP_MET_6: TStringField;
    CDSVendedorFM_MET_7: TStringField;
    CDSVendedorVR_MET_7: TSingleField;
    CDSVendedorTP_MET_7: TStringField;
    CDSVendedorFM_MET_8: TStringField;
    CDSVendedorVR_MET_8: TSingleField;
    CDSVendedorTP_MET_8: TStringField;
    CDSVendedorCD_SUP: TStringField;
    CDSVendedorPC_CMS_SUP: TSingleField;
    CDSVendedorDS_OBS: TBlobField;
    CDSVendedorSN_CLI: TStringField;
    CDSVendedorSN_PDT: TStringField;
    CDSVendedorSN_PED: TStringField;
    CDSVendedorSN_OCM: TStringField;
    CDSVendedorSN_DIV_FIN: TStringField;
    CDSVendedorCD_USU: TStringField;
    CDSVendedorID_VER_ATU: TStringField;
    CDSVendedorID_CEP: TIntegerField;
    CDSVendedorNM_BAI: TStringField;
    CDSVendedorNM_CID: TStringField;
    CDSVendedorNM_RUA: TStringField;
    CDSVendedorNO_CEP: TStringField;
    CDSVendedorUF_CID: TStringField;
    SQLVendedorNO_EDR: TStringField;
    CDSVendedorNO_EDR: TStringField;
    SQLGeneroItem: TSQLDataSet;
    DSPGeneroItem: TDataSetProvider;
    CDSGeneroItem: TClientDataSet;
    CDSGeneroItemID: TIntegerField;
    CDSGeneroItemNM_GEN_ITE: TStringField;
    CDSGeneroItemCD_USU: TStringField;
    CDSGeneroItemID_VER_ATU: TStringField;
    SQLUnidadePDT: TSQLDataSet;
    DSPUnidadePDT: TDataSetProvider;
    CDSUnidadePDT: TClientDataSet;
    CDSUnidadePDTID: TIntegerField;
    CDSUnidadePDTNM_UNI_PDT: TStringField;
    CDSUnidadePDTSN_FRC: TStringField;
    CDSUnidadePDTCD_USU: TStringField;
    CDSUnidadePDTID_VER_ATU: TStringField;
    CDSUnidadePDTNM_UNI_RDZ: TStringField;
    SQLVendedorID_BANCO: TIntegerField;
    CDSVendedorID_BANCO: TIntegerField;
    SQLVenEmp: TSQLDataSet;
    DSPVenEmp: TDataSetProvider;
    CDSVenEmp: TClientDataSet;
    SQLVenEmpID: TIntegerField;
    SQLVenEmpID_COD_VEN: TIntegerField;
    SQLVenEmpID_EMPRESA: TIntegerField;
    SQLVenEmpNM_VEN: TStringField;
    CDSVenEmpID: TIntegerField;
    CDSVenEmpID_COD_VEN: TIntegerField;
    CDSVenEmpID_EMPRESA: TIntegerField;
    CDSVenEmpNM_VEN: TStringField;
    SQLEmbalagem: TSQLDataSet;
    DSPEmbalagem: TDataSetProvider;
    CDSEmbalagem: TClientDataSet;
    CDSEmbalagemID: TIntegerField;
    CDSEmbalagemCD_EMB_PDT: TStringField;
    CDSEmbalagemNM_EMB_PDT: TStringField;
    CDSEmbalagemCD_USU: TStringField;
    CDSEmbalagemID_VER_ATU: TStringField;
    SQLTransportadora: TSQLDataSet;
    DSPTransportadora: TDataSetProvider;
    CDSTransportadora: TClientDataSet;
    CDSTransportadoraID: TIntegerField;
    CDSTransportadoraNM_TRN: TStringField;
    CDSTransportadoraST_TRN: TStringField;
    CDSTransportadoraDT_CAD: TSQLTimeStampField;
    CDSTransportadoraNM_TRN_FAN: TStringField;
    CDSTransportadoraNO_FON: TStringField;
    CDSTransportadoraNO_FAX: TStringField;
    CDSTransportadoraNO_CEL: TStringField;
    CDSTransportadoraID_CEP: TIntegerField;
    CDSTransportadoraCD_PAI: TStringField;
    CDSTransportadoraNO_CNP_CPF: TStringField;
    CDSTransportadoraNO_INS_EST: TStringField;
    CDSTransportadoraE_MAIL: TStringField;
    CDSTransportadoraHOME_PAGE: TStringField;
    CDSTransportadoraCD_BCO: TStringField;
    CDSTransportadoraNM_BCO: TStringField;
    CDSTransportadoraCD_AGC: TStringField;
    CDSTransportadoraNO_CTA_COR: TStringField;
    CDSTransportadoraNM_CTT_RSP: TStringField;
    CDSTransportadoraTP_TRN: TStringField;
    CDSTransportadoraCD_FOR: TStringField;
    CDSTransportadoraCD_CTB: TStringField;
    CDSTransportadoraCD_CTB_DEB: TStringField;
    CDSTransportadoraCD_CTB_CRD: TStringField;
    CDSTransportadoraNO_PLC_VEI: TStringField;
    CDSTransportadoraDS_OBS: TBlobField;
    CDSTransportadoraCD_USU: TStringField;
    CDSTransportadoraID_VER_ATU: TStringField;
    SQLFornecedorID: TIntegerField;
    SQLFornecedorNM_FOR: TStringField;
    SQLFornecedorST_FOR: TStringField;
    SQLFornecedorDT_CAD: TSQLTimeStampField;
    SQLFornecedorNM_FAN: TStringField;
    SQLFornecedorNO_EDR: TStringField;
    SQLFornecedorDS_CPL: TStringField;
    SQLFornecedorNO_FON: TStringField;
    SQLFornecedorNO_FAX: TStringField;
    SQLFornecedorNO_CEL: TStringField;
    SQLFornecedorID_CEP: TIntegerField;
    SQLFornecedorCD_PAI: TStringField;
    SQLFornecedorNO_INS_EST: TStringField;
    SQLFornecedorNM_CTT: TStringField;
    SQLFornecedorE_MAIL_CTT: TStringField;
    SQLFornecedorE_MAIL: TStringField;
    SQLFornecedorHOME_PAGE: TStringField;
    SQLFornecedorCD_REP: TStringField;
    SQLFornecedorNM_CTT_VEN: TStringField;
    SQLFornecedorNO_FON_VEN: TStringField;
    SQLFornecedorNO_RAM_VEN: TStringField;
    SQLFornecedorE_MAIL_VEN: TStringField;
    SQLFornecedorNM_CTT_FIN: TStringField;
    SQLFornecedorNO_FON_FIN: TStringField;
    SQLFornecedorNO_RAM_FIN: TStringField;
    SQLFornecedorE_MAIL_FIN: TStringField;
    SQLFornecedorVR_MAI_CMP: TSingleField;
    SQLFornecedorDT_MAI_CMP: TSQLTimeStampField;
    SQLFornecedorDT_ULT_CMP: TSQLTimeStampField;
    SQLFornecedorCD_LOC_COB: TStringField;
    SQLFornecedorCD_AGC: TStringField;
    SQLFornecedorNO_CTA_COR: TStringField;
    SQLFornecedorCD_USU: TStringField;
    SQLFornecedorID_VER_ATU: TStringField;
    SQLFornecedorID_CATEGORIA: TIntegerField;
    SQLFornecedorDS_OBS: TBlobField;
    SQLFornecedorID_REPRESENTANTE: TIntegerField;
    SQLFornecedorID_BANCO: TIntegerField;
    SQLFornecedorNM_LOC_COB: TStringField;
    SQLFornecedorNM_BAI: TStringField;
    SQLFornecedorNM_CID: TStringField;
    SQLFornecedorNM_RUA: TStringField;
    SQLFornecedorNO_CEP: TStringField;
    SQLFornecedorUF_CID: TStringField;
    CDSFornecedorID: TIntegerField;
    CDSFornecedorNM_FOR: TStringField;
    CDSFornecedorST_FOR: TStringField;
    CDSFornecedorDT_CAD: TSQLTimeStampField;
    CDSFornecedorNM_FAN: TStringField;
    CDSFornecedorNO_EDR: TStringField;
    CDSFornecedorDS_CPL: TStringField;
    CDSFornecedorNO_FON: TStringField;
    CDSFornecedorNO_FAX: TStringField;
    CDSFornecedorNO_CEL: TStringField;
    CDSFornecedorID_CEP: TIntegerField;
    CDSFornecedorCD_PAI: TStringField;
    CDSFornecedorNO_INS_EST: TStringField;
    CDSFornecedorNM_CTT: TStringField;
    CDSFornecedorE_MAIL_CTT: TStringField;
    CDSFornecedorE_MAIL: TStringField;
    CDSFornecedorHOME_PAGE: TStringField;
    CDSFornecedorCD_REP: TStringField;
    CDSFornecedorNM_CTT_VEN: TStringField;
    CDSFornecedorNO_FON_VEN: TStringField;
    CDSFornecedorNO_RAM_VEN: TStringField;
    CDSFornecedorE_MAIL_VEN: TStringField;
    CDSFornecedorNM_CTT_FIN: TStringField;
    CDSFornecedorNO_FON_FIN: TStringField;
    CDSFornecedorNO_RAM_FIN: TStringField;
    CDSFornecedorE_MAIL_FIN: TStringField;
    CDSFornecedorVR_MAI_CMP: TSingleField;
    CDSFornecedorDT_MAI_CMP: TSQLTimeStampField;
    CDSFornecedorDT_ULT_CMP: TSQLTimeStampField;
    CDSFornecedorCD_LOC_COB: TStringField;
    CDSFornecedorCD_AGC: TStringField;
    CDSFornecedorNO_CTA_COR: TStringField;
    CDSFornecedorCD_USU: TStringField;
    CDSFornecedorID_VER_ATU: TStringField;
    CDSFornecedorID_CATEGORIA: TIntegerField;
    CDSFornecedorDS_OBS: TBlobField;
    CDSFornecedorID_REPRESENTANTE: TIntegerField;
    CDSFornecedorID_BANCO: TIntegerField;
    CDSFornecedorNM_LOC_COB: TStringField;
    CDSFornecedorNM_BAI: TStringField;
    CDSFornecedorNM_CID: TStringField;
    CDSFornecedorNM_RUA: TStringField;
    CDSFornecedorNO_CEP: TStringField;
    CDSFornecedorUF_CID: TStringField;
    SQLFornecedorNO_CNP_CPF: TStringField;
    CDSFornecedorNO_CNP_CPF: TStringField;
    SQLVendedorNO_CNP_CPF: TStringField;
    CDSVendedorNO_CNP_CPF: TStringField;
    CDSTransportadoraNO_EDR: TStringField;
    CDSTransportadoraDS_CPL: TStringField;
    SQLTransportadoraID: TIntegerField;
    SQLTransportadoraNM_TRN: TStringField;
    SQLTransportadoraST_TRN: TStringField;
    SQLTransportadoraDT_CAD: TSQLTimeStampField;
    SQLTransportadoraNM_TRN_FAN: TStringField;
    SQLTransportadoraNO_FON: TStringField;
    SQLTransportadoraNO_FAX: TStringField;
    SQLTransportadoraNO_CEL: TStringField;
    SQLTransportadoraID_CEP: TIntegerField;
    SQLTransportadoraNO_EDR: TStringField;
    SQLTransportadoraDS_CPL: TStringField;
    SQLTransportadoraCD_PAI: TStringField;
    SQLTransportadoraNO_CNP_CPF: TStringField;
    SQLTransportadoraNO_INS_EST: TStringField;
    SQLTransportadoraE_MAIL: TStringField;
    SQLTransportadoraHOME_PAGE: TStringField;
    SQLTransportadoraCD_BCO: TStringField;
    SQLTransportadoraNM_BCO: TStringField;
    SQLTransportadoraCD_AGC: TStringField;
    SQLTransportadoraNO_CTA_COR: TStringField;
    SQLTransportadoraNM_CTT_RSP: TStringField;
    SQLTransportadoraTP_TRN: TStringField;
    SQLTransportadoraCD_FOR: TStringField;
    SQLTransportadoraCD_CTB: TStringField;
    SQLTransportadoraCD_CTB_DEB: TStringField;
    SQLTransportadoraCD_CTB_CRD: TStringField;
    SQLTransportadoraNO_PLC_VEI: TStringField;
    SQLTransportadoraDS_OBS: TBlobField;
    SQLTransportadoraCD_USU: TStringField;
    SQLTransportadoraID_VER_ATU: TStringField;
    SQLTransportadoraNM_BAI: TStringField;
    SQLTransportadoraNM_CID: TStringField;
    SQLTransportadoraNM_RUA: TStringField;
    SQLTransportadoraNO_CEP: TStringField;
    SQLTransportadoraUF_CID: TStringField;
    CDSTransportadoraNM_BAI: TStringField;
    CDSTransportadoraNM_CID: TStringField;
    CDSTransportadoraNM_RUA: TStringField;
    CDSTransportadoraNO_CEP: TStringField;
    CDSTransportadoraUF_CID: TStringField;
    SQLTransportadoraID_BANCO: TIntegerField;
    CDSTransportadoraID_BANCO: TIntegerField;
    SQLSetor: TSQLDataSet;
    DSPSetor: TDataSetProvider;
    CDSSetor: TClientDataSet;
    CDSSetorID: TIntegerField;
    CDSSetorNM_SET: TStringField;
    CDSSetorCD_USU: TStringField;
    CDSSetorID_VER_ATU: TStringField;
    SQLFuncionario: TSQLDataSet;
    DSPFuncionario: TDataSetProvider;
    CDSFuncionario: TClientDataSet;
    SQLFuncionarioID: TIntegerField;
    SQLFuncionarioNM_FCN: TStringField;
    SQLFuncionarioST_FNC: TStringField;
    SQLFuncionarioDT_CAD: TSQLTimeStampField;
    SQLFuncionarioDT_ANV: TSQLTimeStampField;
    SQLFuncionarioNM_FUN: TStringField;
    SQLFuncionarioID_SET: TIntegerField;
    SQLFuncionarioDT_ADS: TSQLTimeStampField;
    SQLFuncionarioDT_DMS: TSQLTimeStampField;
    SQLFuncionarioSN_RQS: TStringField;
    SQLFuncionarioID_CEP: TIntegerField;
    SQLFuncionarioNO_EDR: TStringField;
    SQLFuncionarioDS_CPL: TStringField;
    SQLFuncionarioNO_FON: TStringField;
    SQLFuncionarioNO_FAX: TStringField;
    SQLFuncionarioNO_CEL: TStringField;
    SQLFuncionarioE_MAIL: TStringField;
    SQLFuncionarioHOME_PAGE: TStringField;
    SQLFuncionarioID_BANCO: TIntegerField;
    SQLFuncionarioNM_BCO: TStringField;
    SQLFuncionarioCD_AGC: TStringField;
    SQLFuncionarioNO_CTA_COR: TStringField;
    SQLFuncionarioCD_PAI: TStringField;
    SQLFuncionarioCD_CTB: TStringField;
    SQLFuncionarioCD_CTB_CRD: TStringField;
    SQLFuncionarioCD_CTB_DEB: TStringField;
    SQLFuncionarioDS_SNH: TStringField;
    SQLFuncionarioDS_OBS: TBlobField;
    SQLFuncionarioCD_USU: TStringField;
    SQLFuncionarioID_VER_ATU: TStringField;
    SQLFuncionarioNO_CPF: TStringField;
    SQLFuncionarioNO_RG: TStringField;
    SQLFuncionarioID_SETOR: TIntegerField;
    SQLFuncionarioNM_BAI: TStringField;
    SQLFuncionarioNM_CID: TStringField;
    SQLFuncionarioNM_RUA: TStringField;
    SQLFuncionarioNO_CEP: TStringField;
    SQLFuncionarioUF_CID: TStringField;
    CDSFuncionarioID: TIntegerField;
    CDSFuncionarioNM_FCN: TStringField;
    CDSFuncionarioST_FNC: TStringField;
    CDSFuncionarioDT_CAD: TSQLTimeStampField;
    CDSFuncionarioDT_ANV: TSQLTimeStampField;
    CDSFuncionarioNM_FUN: TStringField;
    CDSFuncionarioID_SET: TIntegerField;
    CDSFuncionarioDT_ADS: TSQLTimeStampField;
    CDSFuncionarioDT_DMS: TSQLTimeStampField;
    CDSFuncionarioSN_RQS: TStringField;
    CDSFuncionarioID_CEP: TIntegerField;
    CDSFuncionarioNO_EDR: TStringField;
    CDSFuncionarioDS_CPL: TStringField;
    CDSFuncionarioNO_FON: TStringField;
    CDSFuncionarioNO_FAX: TStringField;
    CDSFuncionarioNO_CEL: TStringField;
    CDSFuncionarioE_MAIL: TStringField;
    CDSFuncionarioHOME_PAGE: TStringField;
    CDSFuncionarioID_BANCO: TIntegerField;
    CDSFuncionarioNM_BCO: TStringField;
    CDSFuncionarioCD_AGC: TStringField;
    CDSFuncionarioNO_CTA_COR: TStringField;
    CDSFuncionarioCD_PAI: TStringField;
    CDSFuncionarioCD_CTB: TStringField;
    CDSFuncionarioCD_CTB_CRD: TStringField;
    CDSFuncionarioCD_CTB_DEB: TStringField;
    CDSFuncionarioDS_SNH: TStringField;
    CDSFuncionarioDS_OBS: TBlobField;
    CDSFuncionarioCD_USU: TStringField;
    CDSFuncionarioID_VER_ATU: TStringField;
    CDSFuncionarioNO_CPF: TStringField;
    CDSFuncionarioNO_RG: TStringField;
    CDSFuncionarioID_SETOR: TIntegerField;
    CDSFuncionarioNM_BAI: TStringField;
    CDSFuncionarioNM_CID: TStringField;
    CDSFuncionarioNM_RUA: TStringField;
    CDSFuncionarioNO_CEP: TStringField;
    CDSFuncionarioUF_CID: TStringField;
    SQLPaises: TSQLDataSet;
    DSPPaises: TDataSetProvider;
    CDSPaises: TClientDataSet;
    CDSPaisesID: TIntegerField;
    CDSPaisesCD_PAI: TStringField;
    CDSPaisesNM_PAI: TStringField;
    CDSPaisesCD_DDI: TStringField;
    CDSPaisesCD_USU: TStringField;
    CDSPaisesID_VER_ATU: TStringField;
    SQLUFederativa: TSQLDataSet;
    DSPUFederativa: TDataSetProvider;
    CDSUFederativa: TClientDataSet;
    CDSUFederativaID: TIntegerField;
    CDSUFederativaCD_UNF: TStringField;
    CDSUFederativaNM_UNF: TStringField;
    CDSUFederativaCD_UNF_IBG: TStringField;
    CDSUFederativaSN_MVA: TStringField;
    CDSUFederativaPC_RJT: TSingleField;
    CDSUFederativaCD_USU: TStringField;
    CDSUFederativaID_VER_ATU: TStringField;
    SQLCidades: TSQLDataSet;
    DSPCidades: TDataSetProvider;
    CDSCidades: TClientDataSet;
    SQLVendedor_Metas: TSQLDataSet;
    DSPVendedor_Metas: TDataSetProvider;
    CDSVendedor_Metas: TClientDataSet;
    CDSVendedor_MetasID: TIntegerField;
    CDSVendedor_MetasID_VENDEDOR: TIntegerField;
    CDSVendedor_MetasID_GRU_PRO: TIntegerField;
    CDSVendedor_MetasINDICE: TSingleField;
    CDSVendedor_MetasTIPO: TStringField;
    CDSVendedor_MetasGrupo: TStringField;
    SQLClientes: TSQLDataSet;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSCategoriaCD_CTG: TStringField;
    SQLAlqIcm: TSQLDataSet;
    DSPAlqIcm: TDataSetProvider;
    CDSAlqIcm: TClientDataSet;
    SQLAlqIcmID: TIntegerField;
    SQLAlqIcmCD_UNF_ORI: TStringField;
    SQLAlqIcmCD_UNF_DST: TStringField;
    SQLAlqIcmAL_ICM: TSingleField;
    SQLAlqIcmCD_USU: TStringField;
    SQLAlqIcmID_VER_ATU: TIntegerField;
    CDSAlqIcmID: TIntegerField;
    CDSAlqIcmCD_UNF_ORI: TStringField;
    CDSAlqIcmCD_UNF_DST: TStringField;
    CDSAlqIcmAL_ICM: TSingleField;
    CDSAlqIcmCD_USU: TStringField;
    CDSAlqIcmID_VER_ATU: TIntegerField;
    SQLcfop: TSQLDataSet;
    DSPcfop: TDataSetProvider;
    CDScfop: TClientDataSet;
    CDScfopID: TIntegerField;
    CDScfopCD_CFO: TStringField;
    CDScfopNM_CFO: TStringField;
    CDScfopSN_ICM: TStringField;
    CDScfopSN_CTR: TStringField;
    CDScfopSN_DVL: TStringField;
    CDScfopSN_ETQ: TStringField;
    CDScfopSN_PIS_COF: TStringField;
    CDScfopSN_CMD: TStringField;
    CDScfopCD_USU: TStringField;
    CDScfopID_VER_ATU: TStringField;
    SQLCores: TSQLDataSet;
    DSPCores: TDataSetProvider;
    CDSCores: TClientDataSet;
    CDSCoresID: TIntegerField;
    CDSCoresNM_COR: TStringField;
    CDSCoresCD_USU: TStringField;
    CDSCoresID_VER_ATU: TStringField;
    SQLChqPdt: TSQLDataSet;
    DSPChqPdt: TDataSetProvider;
    CDSChqPdt: TClientDataSet;
    SQLCest: TSQLDataSet;
    DSPCest: TDataSetProvider;
    CDSCest: TClientDataSet;
    CDSCestCEST: TStringField;
    CDSCestNBM: TStringField;
    CDSCestSEGUIMENTO: TBlobField;
    CDSCestDESCRICAO: TBlobField;
    SQLNbm: TSQLDataSet;
    DSPNbm: TDataSetProvider;
    CDSNbm: TClientDataSet;
    CDSNbmID: TIntegerField;
    CDSNbmID_CEST: TIntegerField;
    CDSNbmNM_NBM: TStringField;
    CDSNbmAL_MVA: TSingleField;
    CDSNbmAL_MVA_PR: TSingleField;
    CDSNbmAL_NAC: TSingleField;
    CDSNbmAL_IMP: TSingleField;
    CDSNbmCD_USU: TStringField;
    CDSNbmID_VER_ATU: TStringField;
    CDSNbmDS_NBM: TBlobField;
    CDSCestID: TIntegerField;
    SQLNbmID: TIntegerField;
    SQLNbmID_CEST: TIntegerField;
    SQLNbmNM_NBM: TStringField;
    SQLNbmAL_MVA: TSingleField;
    SQLNbmAL_MVA_PR: TSingleField;
    SQLNbmAL_NAC: TSingleField;
    SQLNbmAL_IMP: TSingleField;
    SQLNbmCD_USU: TStringField;
    SQLNbmID_VER_ATU: TStringField;
    SQLNbmDS_NBM: TBlobField;
    SQLNbmCEST: TStringField;
    SQLNbmDESCRICAO: TBlobField;
    CDSNbmCEST: TStringField;
    CDSNbmDESCRICAO: TBlobField;
    SQLChqPdtID: TIntegerField;
    SQLChqPdtID_BANCO: TIntegerField;
    SQLChqPdtID_CLIENTE: TIntegerField;
    SQLChqPdtNO_AGC: TStringField;
    SQLChqPdtNO_CTA: TStringField;
    SQLChqPdtNO_CHQ: TStringField;
    SQLChqPdtSN_TCR: TStringField;
    SQLChqPdtNM_EMT: TStringField;
    SQLChqPdtNM_CID_EMT: TStringField;
    SQLChqPdtUF_CID_EMT: TStringField;
    SQLChqPdtDT_EMS: TSQLTimeStampField;
    SQLChqPdtDT_VCT: TSQLTimeStampField;
    SQLChqPdtDT_VCT_1: TSQLTimeStampField;
    SQLChqPdtDT_VCT_2: TSQLTimeStampField;
    SQLChqPdtDT_VCT_3: TSQLTimeStampField;
    SQLChqPdtVR_CHQ: TSingleField;
    SQLChqPdtCD_LOC_COB: TStringField;
    SQLChqPdtDS_BDA: TStringField;
    SQLChqPdtCD_VEN: TStringField;
    SQLChqPdtDT_INC: TSQLTimeStampField;
    SQLChqPdtDS_OBS_AUX: TStringField;
    SQLChqPdtCD_CLI_OLD: TStringField;
    SQLChqPdtCD_USU: TStringField;
    SQLChqPdtID_VER_ATU: TStringField;
    SQLChqPdtNM_CLI: TStringField;
    SQLChqPdtID_CLIENTE_1: TIntegerField;
    SQLChqPdtNO_CNP_CPF: TStringField;
    SQLChqPdtNO_CEL: TStringField;
    SQLChqPdtNM_CID: TStringField;
    SQLChqPdtUF_CID: TStringField;
    SQLChqPdtNO_FON: TStringField;
    CDSChqPdtID: TIntegerField;
    CDSChqPdtID_BANCO: TIntegerField;
    CDSChqPdtID_CLIENTE: TIntegerField;
    CDSChqPdtNO_AGC: TStringField;
    CDSChqPdtNO_CTA: TStringField;
    CDSChqPdtNO_CHQ: TStringField;
    CDSChqPdtSN_TCR: TStringField;
    CDSChqPdtNM_EMT: TStringField;
    CDSChqPdtNM_CID_EMT: TStringField;
    CDSChqPdtUF_CID_EMT: TStringField;
    CDSChqPdtDT_EMS: TSQLTimeStampField;
    CDSChqPdtDT_VCT: TSQLTimeStampField;
    CDSChqPdtDT_VCT_1: TSQLTimeStampField;
    CDSChqPdtDT_VCT_2: TSQLTimeStampField;
    CDSChqPdtDT_VCT_3: TSQLTimeStampField;
    CDSChqPdtVR_CHQ: TSingleField;
    CDSChqPdtCD_LOC_COB: TStringField;
    CDSChqPdtDS_BDA: TStringField;
    CDSChqPdtCD_VEN: TStringField;
    CDSChqPdtDT_INC: TSQLTimeStampField;
    CDSChqPdtDS_OBS_AUX: TStringField;
    CDSChqPdtCD_CLI_OLD: TStringField;
    CDSChqPdtCD_USU: TStringField;
    CDSChqPdtID_VER_ATU: TStringField;
    CDSChqPdtNM_CLI: TStringField;
    CDSChqPdtNO_CNP_CPF: TStringField;
    CDSChqPdtNO_CEL: TStringField;
    CDSChqPdtNM_CID: TStringField;
    CDSChqPdtUF_CID: TStringField;
    CDSChqPdtNO_FON: TStringField;
    SQLNbmCD_NBM: TStringField;
    CDSNbmCD_NBM: TStringField;
    CDSCidadesID: TIntegerField;
    CDSCidadesCD_PAI: TStringField;
    CDSCidadesUF_CID: TStringField;
    CDSCidadesNM_CID: TStringField;
    CDSCidadesCD_CID_IBG: TStringField;
    CDSCidadesNM_UNF: TStringField;
    CDSCidadesCD_USU: TStringField;
    CDSCidadesID_VER_ATU: TStringField;
    CDSCidadesID_UF: TIntegerField;
    SQLClientesID: TIntegerField;
    SQLClientesNM_CLI: TStringField;
    SQLClientesST_CLI: TStringField;
    SQLClientesID_CATEGORIA: TIntegerField;
    SQLClientesCD_CTG: TStringField;
    SQLClientesDT_CAD: TSQLTimeStampField;
    SQLClientesSN_DCL: TStringField;
    SQLClientesNM_FAN: TStringField;
    SQLClientesID_CEP: TIntegerField;
    SQLClientesNO_EDR: TStringField;
    SQLClientesDS_CPL: TStringField;
    SQLClientesNO_FON: TStringField;
    SQLClientesNO_FAX: TStringField;
    SQLClientesNO_CEL: TStringField;
    SQLClientesCD_PAI: TStringField;
    SQLClientesNO_CNP_CPF: TStringField;
    SQLClientesNO_INS_EST: TStringField;
    SQLClientesTP_CSM_FIN: TStringField;
    SQLClientesID_IE: TStringField;
    SQLClientesNM_CTT: TStringField;
    SQLClientesE_MAIL_CTT: TStringField;
    SQLClientesDS_CPL_COB: TStringField;
    SQLClientesNO_FON_COB: TStringField;
    SQLClientesNO_FAX_COB: TStringField;
    SQLClientesNO_CEL_COB: TStringField;
    SQLClientesCD_PAI_COB: TStringField;
    SQLClientesNM_CTT_COB: TStringField;
    SQLClientesE_MAIL_COB: TStringField;
    SQLClientesE_MAIL: TStringField;
    SQLClientesHOME_PAGE: TStringField;
    SQLClientesCD_CTB: TStringField;
    SQLClientesCD_CTB_DEB: TStringField;
    SQLClientesCD_CTB_CRD: TStringField;
    SQLClientesNM_CTT_VEN: TStringField;
    SQLClientesNO_RAM_VEN: TStringField;
    SQLClientesDT_NCT_VEN: TSQLTimeStampField;
    SQLClientesE_MAIL_VEN: TStringField;
    SQLClientesNM_CTT_FIN: TStringField;
    SQLClientesNO_RAM_FIN: TStringField;
    SQLClientesDT_NCT_FIN: TSQLTimeStampField;
    SQLClientesE_MAIL_FIN: TStringField;
    SQLClientesNO_PED_CMP: TStringField;
    SQLClientesPZ_PGT_CMP: TStringField;
    SQLClientesPZ_PGT_VEN: TStringField;
    SQLClientesVR_LMT_CRD: TSingleField;
    SQLClientesVR_LMT_AUX: TSingleField;
    SQLClientesCD_LBR_LMT: TStringField;
    SQLClientesVR_LMT_ANT: TSingleField;
    SQLClientesVR_LMA_ANT: TSingleField;
    SQLClientesDT_LMT_CRD: TSQLTimeStampField;
    SQLClientesSN_CC: TStringField;
    SQLClientesCD_CTL: TStringField;
    SQLClientesVR_MAI_CMP: TSingleField;
    SQLClientesDT_MAI_CMP: TSQLTimeStampField;
    SQLClientesVR_ULT_CMP: TSingleField;
    SQLClientesDT_ULT_CMP: TSQLTimeStampField;
    SQLClientesCD_LOC_COB: TStringField;
    SQLClientesCD_TRN: TStringField;
    SQLClientesNO_IDT: TStringField;
    SQLClientesST_CIV: TStringField;
    SQLClientesNM_CJG: TStringField;
    SQLClientesDT_NCT: TSQLTimeStampField;
    SQLClientesNM_CID_NCT: TStringField;
    SQLClientesUF_CID_NCT: TStringField;
    SQLClientesNM_PAI: TStringField;
    SQLClientesNM_MAE: TStringField;
    SQLClientesNM_LOC_TRB: TStringField;
    SQLClientesNM_FUN_TRB: TStringField;
    SQLClientesVR_SAL: TSingleField;
    SQLClientesNO_FON_TRB: TStringField;
    SQLClientesCD_CAR_COB: TStringField;
    SQLClientesDT_CAR_COB: TSQLTimeStampField;
    SQLClientesDT_ULT_LGC: TSQLTimeStampField;
    SQLClientesDT_PRX_LGC: TSQLTimeStampField;
    SQLClientesTP_CAT: TStringField;
    SQLClientesMD_ATR: TStringField;
    SQLClientesNO_DIA_ATR: TStringField;
    SQLClientesTT_TIT_PRT: TSingleField;
    SQLClientesNO_ULT_OS: TStringField;
    SQLClientesCD_VEN: TStringField;
    SQLClientesDS_OBS_AUX: TBlobField;
    SQLClientesNO_PLC_VEI: TStringField;
    SQLClientesNM_EMP_CM1: TStringField;
    SQLClientesNO_FON_CM1: TStringField;
    SQLClientesDT_CAD_CM1: TSQLTimeStampField;
    SQLClientesFO_PGT_CM1: TStringField;
    SQLClientesVR_MFT_CM1: TSingleField;
    SQLClientesDT_MFT_CM1: TSQLTimeStampField;
    SQLClientesVR_UCP_CM1: TSingleField;
    SQLClientesDT_UCP_CM1: TSQLTimeStampField;
    SQLClientesVR_MDM_CM1: TSingleField;
    SQLClientesVR_LMT_CM1: TSingleField;
    SQLClientesTP_CCT_CM1: TStringField;
    SQLClientesNM_INF_CM1: TStringField;
    SQLClientesSN_PGP_CM1: TStringField;
    SQLClientesMD_ATR_CM1: TStringField;
    SQLClientesDS_OBS_CM1: TBlobField;
    SQLClientesNM_BCO_CM1: TStringField;
    SQLClientesCD_AGC_CM1: TStringField;
    SQLClientesNO_CTA_CM1: TStringField;
    SQLClientesDT_ABC_CM1: TSQLTimeStampField;
    SQLClientesNO_FBC_CM1: TStringField;
    SQLClientesNM_GBC_CM1: TStringField;
    SQLClientesNM_EMP_CM2: TStringField;
    SQLClientesNO_FON_CM2: TStringField;
    SQLClientesDT_CAD_CM2: TSQLTimeStampField;
    SQLClientesFO_PGT_CM2: TStringField;
    SQLClientesVR_MFT_CM2: TSingleField;
    SQLClientesDT_MFT_CM2: TSQLTimeStampField;
    SQLClientesVR_UCP_CM2: TSingleField;
    SQLClientesDT_UCP_CM2: TSQLTimeStampField;
    SQLClientesVR_MDM_CM2: TSingleField;
    SQLClientesVR_LMT_CM2: TSingleField;
    SQLClientesTP_CCT_CM2: TStringField;
    SQLClientesNM_INF_CM2: TStringField;
    SQLClientesSN_PGP_CM2: TStringField;
    SQLClientesMD_ATR_CM2: TStringField;
    SQLClientesDS_OBS_CM2: TBlobField;
    SQLClientesNM_BCO_CM2: TStringField;
    SQLClientesCD_AGC_CM2: TStringField;
    SQLClientesNO_CTA_CM2: TStringField;
    SQLClientesDT_ABC_CM2: TSQLTimeStampField;
    SQLClientesNO_FBC_CM2: TStringField;
    SQLClientesNM_GBC_CM2: TStringField;
    SQLClientesNM_EMP_CM3: TStringField;
    SQLClientesNO_FON_CM3: TStringField;
    SQLClientesDT_CAD_CM3: TSQLTimeStampField;
    SQLClientesFO_PGT_CM3: TStringField;
    SQLClientesVR_MFT_CM3: TSingleField;
    SQLClientesDT_MFT_CM3: TSQLTimeStampField;
    SQLClientesVR_UCP_CM3: TSingleField;
    SQLClientesDT_UCP_CM3: TSQLTimeStampField;
    SQLClientesVR_MDM_CM3: TSingleField;
    SQLClientesVR_LMT_CM3: TSingleField;
    SQLClientesTP_CCT_CM3: TStringField;
    SQLClientesNM_INF_CM3: TStringField;
    SQLClientesSN_PGP_CM3: TStringField;
    SQLClientesMD_ATR_CM3: TStringField;
    SQLClientesDS_OBS_CM3: TStringField;
    SQLClientesNM_BCO_CM3: TStringField;
    SQLClientesCD_AGC_CM3: TStringField;
    SQLClientesNO_CTA_CM3: TStringField;
    SQLClientesDT_ABC_CM3: TSQLTimeStampField;
    SQLClientesNO_FBC_CM3: TStringField;
    SQLClientesNM_GBC_CM3: TStringField;
    SQLClientesDT_FDC: TSQLTimeStampField;
    SQLClientesRG_TBT_ANT: TStringField;
    SQLClientesRG_TBT_ATU: TStringField;
    SQLClientesNM_SOC_1: TStringField;
    SQLClientesDT_ENT_SC1: TSQLTimeStampField;
    SQLClientesPC_EMP_SC1: TSingleField;
    SQLClientesRG_SOC_1: TStringField;
    SQLClientesNO_CPF_SC1: TStringField;
    SQLClientesNM_RUA_SC1: TStringField;
    SQLClientesNM_BAI_SC1: TStringField;
    SQLClientesNO_FON_SC1: TStringField;
    SQLClientesNO_CEL_SC1: TStringField;
    SQLClientesNM_CID_SC1: TStringField;
    SQLClientesNO_CEP_SC1: TStringField;
    SQLClientesUF_CID_SC1: TStringField;
    SQLClientesCD_PAI_SC1: TStringField;
    SQLClientesNM_RF1_SC1: TStringField;
    SQLClientesNO_FR1_SC1: TStringField;
    SQLClientesNM_RF2_SC1: TStringField;
    SQLClientesNO_FR2_SC1: TStringField;
    SQLClientesNM_BC1_SC1: TStringField;
    SQLClientesCD_AG1_SC1: TStringField;
    SQLClientesNO_CT1_SC1: TStringField;
    SQLClientesDT_AB1_SC1: TSQLTimeStampField;
    SQLClientesNO_FB1_SC1: TStringField;
    SQLClientesNM_GB1_SC1: TStringField;
    SQLClientesNM_BC2_SC1: TStringField;
    SQLClientesCD_AG2_SC1: TStringField;
    SQLClientesNO_CT2_SC1: TStringField;
    SQLClientesDT_AB2_SC1: TSQLTimeStampField;
    SQLClientesNO_FB2_SC1: TStringField;
    SQLClientesNM_GB2_SC1: TStringField;
    SQLClientesNM_SOC_2: TStringField;
    SQLClientesDT_ENT_SC2: TSQLTimeStampField;
    SQLClientesPC_EMP_SC2: TSingleField;
    SQLClientesRG_SOC_2: TStringField;
    SQLClientesNM_BAI_SC2: TStringField;
    SQLClientesNO_FON_SC2: TStringField;
    SQLClientesNO_CEL_SC2: TStringField;
    SQLClientesNM_CID_SC2: TStringField;
    SQLClientesNO_CEP_SC2: TStringField;
    SQLClientesUF_CID_SC2: TStringField;
    SQLClientesCD_PAI_SC2: TStringField;
    SQLClientesNM_RF1_SC2: TStringField;
    SQLClientesNO_FR1_SC2: TStringField;
    SQLClientesNM_RF2_SC2: TStringField;
    SQLClientesNO_FR2_SC2: TStringField;
    SQLClientesNM_BC1_SC2: TStringField;
    SQLClientesCD_AG1_SC2: TStringField;
    SQLClientesNO_CT1_SC2: TStringField;
    SQLClientesDT_AB1_SC2: TSQLTimeStampField;
    SQLClientesNO_FB1_SC2: TStringField;
    SQLClientesNM_GB1_SC2: TStringField;
    SQLClientesNM_BC2_SC2: TStringField;
    SQLClientesCD_AG2_SC2: TStringField;
    SQLClientesNO_CT2_SC2: TStringField;
    SQLClientesDT_AB2_SC2: TSQLTimeStampField;
    SQLClientesNO_FB2_SC2: TStringField;
    SQLClientesNM_GB2_SC2: TStringField;
    SQLClientesDT_ULT_FEC: TSQLTimeStampField;
    SQLClientesVR_DB_CR_F: TSingleField;
    SQLClientesVR_DB_CR_A: TSingleField;
    SQLClientesCD_OLD: TStringField;
    SQLClientesCD_CLI_GRA: TStringField;
    SQLClientesCD_CLI_IND: TStringField;
    SQLClientesCD_CLI_TO: TStringField;
    SQLClientesNO_CEL_VIV: TStringField;
    SQLClientesNO_CEL_OI: TStringField;
    SQLClientesNO_CEL_TIM: TStringField;
    SQLClientesNO_CEL_CLA: TStringField;
    SQLClientesCD_USU: TStringField;
    SQLClientesID_VER_ATU: TStringField;
    SQLClientesID_CEP_COB: TIntegerField;
    SQLClientesID_CEP_AV1: TIntegerField;
    SQLClientesID_CEP_AV2: TIntegerField;
    SQLClientesNM_BAI: TStringField;
    SQLClientesNM_CID: TStringField;
    SQLClientesNM_RUA: TStringField;
    SQLClientesNO_CEP: TStringField;
    SQLClientesUF_CID: TStringField;
    SQLClientesCOBNM_BAI: TStringField;
    SQLClientesCOBNM_CID: TStringField;
    SQLClientesCOBNM_RUA: TStringField;
    SQLClientesCOBNO_CEP: TStringField;
    SQLClientesCOBUF_CID: TStringField;
    SQLClientesAV1NM_BAI: TStringField;
    SQLClientesAV1NM_CID: TStringField;
    SQLClientesAV1NM_RUA: TStringField;
    SQLClientesAV1NO_CEP: TStringField;
    SQLClientesAV1UF_CID: TStringField;
    SQLClientesAV2NM_BAI: TStringField;
    SQLClientesAV2NM_CID: TStringField;
    SQLClientesAV2NM_RUA: TStringField;
    SQLClientesAV2NO_CEP: TStringField;
    SQLClientesAV2UF_CID: TStringField;
    CDSClientesID: TIntegerField;
    CDSClientesNM_CLI: TStringField;
    CDSClientesST_CLI: TStringField;
    CDSClientesID_CATEGORIA: TIntegerField;
    CDSClientesCD_CTG: TStringField;
    CDSClientesDT_CAD: TSQLTimeStampField;
    CDSClientesSN_DCL: TStringField;
    CDSClientesNM_FAN: TStringField;
    CDSClientesID_CEP: TIntegerField;
    CDSClientesNO_EDR: TStringField;
    CDSClientesDS_CPL: TStringField;
    CDSClientesNO_FON: TStringField;
    CDSClientesNO_FAX: TStringField;
    CDSClientesNO_CEL: TStringField;
    CDSClientesCD_PAI: TStringField;
    CDSClientesNO_CNP_CPF: TStringField;
    CDSClientesNO_INS_EST: TStringField;
    CDSClientesTP_CSM_FIN: TStringField;
    CDSClientesID_IE: TStringField;
    CDSClientesNM_CTT: TStringField;
    CDSClientesE_MAIL_CTT: TStringField;
    CDSClientesDS_CPL_COB: TStringField;
    CDSClientesNO_FON_COB: TStringField;
    CDSClientesNO_FAX_COB: TStringField;
    CDSClientesNO_CEL_COB: TStringField;
    CDSClientesCD_PAI_COB: TStringField;
    CDSClientesNM_CTT_COB: TStringField;
    CDSClientesE_MAIL_COB: TStringField;
    CDSClientesE_MAIL: TStringField;
    CDSClientesHOME_PAGE: TStringField;
    CDSClientesCD_CTB: TStringField;
    CDSClientesCD_CTB_DEB: TStringField;
    CDSClientesCD_CTB_CRD: TStringField;
    CDSClientesNM_CTT_VEN: TStringField;
    CDSClientesNO_RAM_VEN: TStringField;
    CDSClientesDT_NCT_VEN: TSQLTimeStampField;
    CDSClientesE_MAIL_VEN: TStringField;
    CDSClientesNM_CTT_FIN: TStringField;
    CDSClientesNO_RAM_FIN: TStringField;
    CDSClientesDT_NCT_FIN: TSQLTimeStampField;
    CDSClientesE_MAIL_FIN: TStringField;
    CDSClientesNO_PED_CMP: TStringField;
    CDSClientesPZ_PGT_CMP: TStringField;
    CDSClientesPZ_PGT_VEN: TStringField;
    CDSClientesVR_LMT_CRD: TSingleField;
    CDSClientesVR_LMT_AUX: TSingleField;
    CDSClientesCD_LBR_LMT: TStringField;
    CDSClientesVR_LMT_ANT: TSingleField;
    CDSClientesVR_LMA_ANT: TSingleField;
    CDSClientesDT_LMT_CRD: TSQLTimeStampField;
    CDSClientesSN_CC: TStringField;
    CDSClientesCD_CTL: TStringField;
    CDSClientesVR_MAI_CMP: TSingleField;
    CDSClientesDT_MAI_CMP: TSQLTimeStampField;
    CDSClientesVR_ULT_CMP: TSingleField;
    CDSClientesDT_ULT_CMP: TSQLTimeStampField;
    CDSClientesCD_LOC_COB: TStringField;
    CDSClientesCD_TRN: TStringField;
    CDSClientesNO_IDT: TStringField;
    CDSClientesST_CIV: TStringField;
    CDSClientesNM_CJG: TStringField;
    CDSClientesDT_NCT: TSQLTimeStampField;
    CDSClientesNM_CID_NCT: TStringField;
    CDSClientesUF_CID_NCT: TStringField;
    CDSClientesNM_PAI: TStringField;
    CDSClientesNM_MAE: TStringField;
    CDSClientesNM_LOC_TRB: TStringField;
    CDSClientesNM_FUN_TRB: TStringField;
    CDSClientesVR_SAL: TSingleField;
    CDSClientesNO_FON_TRB: TStringField;
    CDSClientesCD_CAR_COB: TStringField;
    CDSClientesDT_CAR_COB: TSQLTimeStampField;
    CDSClientesDT_ULT_LGC: TSQLTimeStampField;
    CDSClientesDT_PRX_LGC: TSQLTimeStampField;
    CDSClientesTP_CAT: TStringField;
    CDSClientesMD_ATR: TStringField;
    CDSClientesNO_DIA_ATR: TStringField;
    CDSClientesTT_TIT_PRT: TSingleField;
    CDSClientesNO_ULT_OS: TStringField;
    CDSClientesCD_VEN: TStringField;
    CDSClientesDS_OBS_AUX: TBlobField;
    CDSClientesNO_PLC_VEI: TStringField;
    CDSClientesNM_EMP_CM1: TStringField;
    CDSClientesNO_FON_CM1: TStringField;
    CDSClientesDT_CAD_CM1: TSQLTimeStampField;
    CDSClientesFO_PGT_CM1: TStringField;
    CDSClientesVR_MFT_CM1: TSingleField;
    CDSClientesDT_MFT_CM1: TSQLTimeStampField;
    CDSClientesVR_UCP_CM1: TSingleField;
    CDSClientesDT_UCP_CM1: TSQLTimeStampField;
    CDSClientesVR_MDM_CM1: TSingleField;
    CDSClientesVR_LMT_CM1: TSingleField;
    CDSClientesTP_CCT_CM1: TStringField;
    CDSClientesNM_INF_CM1: TStringField;
    CDSClientesSN_PGP_CM1: TStringField;
    CDSClientesMD_ATR_CM1: TStringField;
    CDSClientesDS_OBS_CM1: TBlobField;
    CDSClientesNM_BCO_CM1: TStringField;
    CDSClientesCD_AGC_CM1: TStringField;
    CDSClientesNO_CTA_CM1: TStringField;
    CDSClientesDT_ABC_CM1: TSQLTimeStampField;
    CDSClientesNO_FBC_CM1: TStringField;
    CDSClientesNM_GBC_CM1: TStringField;
    CDSClientesNM_EMP_CM2: TStringField;
    CDSClientesNO_FON_CM2: TStringField;
    CDSClientesDT_CAD_CM2: TSQLTimeStampField;
    CDSClientesFO_PGT_CM2: TStringField;
    CDSClientesVR_MFT_CM2: TSingleField;
    CDSClientesDT_MFT_CM2: TSQLTimeStampField;
    CDSClientesVR_UCP_CM2: TSingleField;
    CDSClientesDT_UCP_CM2: TSQLTimeStampField;
    CDSClientesVR_MDM_CM2: TSingleField;
    CDSClientesVR_LMT_CM2: TSingleField;
    CDSClientesTP_CCT_CM2: TStringField;
    CDSClientesNM_INF_CM2: TStringField;
    CDSClientesSN_PGP_CM2: TStringField;
    CDSClientesMD_ATR_CM2: TStringField;
    CDSClientesDS_OBS_CM2: TBlobField;
    CDSClientesNM_BCO_CM2: TStringField;
    CDSClientesCD_AGC_CM2: TStringField;
    CDSClientesNO_CTA_CM2: TStringField;
    CDSClientesDT_ABC_CM2: TSQLTimeStampField;
    CDSClientesNO_FBC_CM2: TStringField;
    CDSClientesNM_GBC_CM2: TStringField;
    CDSClientesNM_EMP_CM3: TStringField;
    CDSClientesNO_FON_CM3: TStringField;
    CDSClientesDT_CAD_CM3: TSQLTimeStampField;
    CDSClientesFO_PGT_CM3: TStringField;
    CDSClientesVR_MFT_CM3: TSingleField;
    CDSClientesDT_MFT_CM3: TSQLTimeStampField;
    CDSClientesVR_UCP_CM3: TSingleField;
    CDSClientesDT_UCP_CM3: TSQLTimeStampField;
    CDSClientesVR_MDM_CM3: TSingleField;
    CDSClientesVR_LMT_CM3: TSingleField;
    CDSClientesTP_CCT_CM3: TStringField;
    CDSClientesNM_INF_CM3: TStringField;
    CDSClientesSN_PGP_CM3: TStringField;
    CDSClientesMD_ATR_CM3: TStringField;
    CDSClientesDS_OBS_CM3: TStringField;
    CDSClientesNM_BCO_CM3: TStringField;
    CDSClientesCD_AGC_CM3: TStringField;
    CDSClientesNO_CTA_CM3: TStringField;
    CDSClientesDT_ABC_CM3: TSQLTimeStampField;
    CDSClientesNO_FBC_CM3: TStringField;
    CDSClientesNM_GBC_CM3: TStringField;
    CDSClientesDT_FDC: TSQLTimeStampField;
    CDSClientesRG_TBT_ANT: TStringField;
    CDSClientesRG_TBT_ATU: TStringField;
    CDSClientesNM_SOC_1: TStringField;
    CDSClientesDT_ENT_SC1: TSQLTimeStampField;
    CDSClientesPC_EMP_SC1: TSingleField;
    CDSClientesRG_SOC_1: TStringField;
    CDSClientesNO_CPF_SC1: TStringField;
    CDSClientesNM_RUA_SC1: TStringField;
    CDSClientesNM_BAI_SC1: TStringField;
    CDSClientesNO_FON_SC1: TStringField;
    CDSClientesNO_CEL_SC1: TStringField;
    CDSClientesNM_CID_SC1: TStringField;
    CDSClientesNO_CEP_SC1: TStringField;
    CDSClientesUF_CID_SC1: TStringField;
    CDSClientesCD_PAI_SC1: TStringField;
    CDSClientesNM_RF1_SC1: TStringField;
    CDSClientesNO_FR1_SC1: TStringField;
    CDSClientesNM_RF2_SC1: TStringField;
    CDSClientesNO_FR2_SC1: TStringField;
    CDSClientesNM_BC1_SC1: TStringField;
    CDSClientesCD_AG1_SC1: TStringField;
    CDSClientesNO_CT1_SC1: TStringField;
    CDSClientesDT_AB1_SC1: TSQLTimeStampField;
    CDSClientesNO_FB1_SC1: TStringField;
    CDSClientesNM_GB1_SC1: TStringField;
    CDSClientesNM_BC2_SC1: TStringField;
    CDSClientesCD_AG2_SC1: TStringField;
    CDSClientesNO_CT2_SC1: TStringField;
    CDSClientesDT_AB2_SC1: TSQLTimeStampField;
    CDSClientesNO_FB2_SC1: TStringField;
    CDSClientesNM_GB2_SC1: TStringField;
    CDSClientesNM_SOC_2: TStringField;
    CDSClientesDT_ENT_SC2: TSQLTimeStampField;
    CDSClientesPC_EMP_SC2: TSingleField;
    CDSClientesRG_SOC_2: TStringField;
    CDSClientesNM_BAI_SC2: TStringField;
    CDSClientesNO_FON_SC2: TStringField;
    CDSClientesNO_CEL_SC2: TStringField;
    CDSClientesNM_CID_SC2: TStringField;
    CDSClientesNO_CEP_SC2: TStringField;
    CDSClientesUF_CID_SC2: TStringField;
    CDSClientesCD_PAI_SC2: TStringField;
    CDSClientesNM_RF1_SC2: TStringField;
    CDSClientesNO_FR1_SC2: TStringField;
    CDSClientesNM_RF2_SC2: TStringField;
    CDSClientesNO_FR2_SC2: TStringField;
    CDSClientesNM_BC1_SC2: TStringField;
    CDSClientesCD_AG1_SC2: TStringField;
    CDSClientesNO_CT1_SC2: TStringField;
    CDSClientesDT_AB1_SC2: TSQLTimeStampField;
    CDSClientesNO_FB1_SC2: TStringField;
    CDSClientesNM_GB1_SC2: TStringField;
    CDSClientesNM_BC2_SC2: TStringField;
    CDSClientesCD_AG2_SC2: TStringField;
    CDSClientesNO_CT2_SC2: TStringField;
    CDSClientesDT_AB2_SC2: TSQLTimeStampField;
    CDSClientesNO_FB2_SC2: TStringField;
    CDSClientesNM_GB2_SC2: TStringField;
    CDSClientesDT_ULT_FEC: TSQLTimeStampField;
    CDSClientesVR_DB_CR_F: TSingleField;
    CDSClientesVR_DB_CR_A: TSingleField;
    CDSClientesCD_OLD: TStringField;
    CDSClientesCD_CLI_GRA: TStringField;
    CDSClientesCD_CLI_IND: TStringField;
    CDSClientesCD_CLI_TO: TStringField;
    CDSClientesNO_CEL_VIV: TStringField;
    CDSClientesNO_CEL_OI: TStringField;
    CDSClientesNO_CEL_TIM: TStringField;
    CDSClientesNO_CEL_CLA: TStringField;
    CDSClientesCD_USU: TStringField;
    CDSClientesID_VER_ATU: TStringField;
    CDSClientesID_CEP_COB: TIntegerField;
    CDSClientesID_CEP_AV1: TIntegerField;
    CDSClientesID_CEP_AV2: TIntegerField;
    CDSClientesNM_BAI: TStringField;
    CDSClientesNM_CID: TStringField;
    CDSClientesNM_RUA: TStringField;
    CDSClientesNO_CEP: TStringField;
    CDSClientesUF_CID: TStringField;
    CDSClientesCOBNM_BAI: TStringField;
    CDSClientesCOBNM_CID: TStringField;
    CDSClientesCOBNM_RUA: TStringField;
    CDSClientesCOBNO_CEP: TStringField;
    CDSClientesCOBUF_CID: TStringField;
    CDSClientesAV1NM_BAI: TStringField;
    CDSClientesAV1NM_CID: TStringField;
    CDSClientesAV1NM_RUA: TStringField;
    CDSClientesAV1NO_CEP: TStringField;
    CDSClientesAV1UF_CID: TStringField;
    CDSClientesAV2NM_BAI: TStringField;
    CDSClientesAV2NM_CID: TStringField;
    CDSClientesAV2NM_RUA: TStringField;
    CDSClientesAV2NO_CEP: TStringField;
    CDSClientesAV2UF_CID: TStringField;
    SQLClientesNO_EDR_COB: TStringField;
    CDSClientesNO_EDR_COB: TStringField;
    SQLContasPagar: TSQLDataSet;
    DSPContasPagar: TDataSetProvider;
    CDSContasPagar: TClientDataSet;
    SQLContasPagarID: TIntegerField;
    SQLContasPagarNO_DOC: TStringField;
    SQLContasPagarNO_DOC_ORI: TStringField;
    SQLContasPagarDT_CAD: TSQLTimeStampField;
    SQLContasPagarST_DOC: TStringField;
    SQLContasPagarCD_MOE: TStringField;
    SQLContasPagarDT_EMS: TSQLTimeStampField;
    SQLContasPagarDT_VCT: TSQLTimeStampField;
    SQLContasPagarVR_DOC: TSingleField;
    SQLContasPagarVR_DEB_DOC: TSingleField;
    SQLContasPagarTP_JUR: TStringField;
    SQLContasPagarTX_JUR: TSingleField;
    SQLContasPagarDT_PGT: TSQLTimeStampField;
    SQLContasPagarVR_RCB: TSingleField;
    SQLContasPagarVR_JUR: TSingleField;
    SQLContasPagarVR_ABA_DCT: TSingleField;
    SQLContasPagarVR_DEV: TSingleField;
    SQLContasPagarCD_LOC_COB: TStringField;
    SQLContasPagarDT_RMS_COB: TSQLTimeStampField;
    SQLContasPagarCD_TIT_LOC: TStringField;
    SQLContasPagarDT_COB_TIT: TSQLTimeStampField;
    SQLContasPagarST_TIT_LOC: TStringField;
    SQLContasPagarDT_ULT_MOD: TSQLTimeStampField;
    SQLContasPagarSN_EXP_CTB: TStringField;
    SQLContasPagarSN_IMP_DOC: TStringField;
    SQLContasPagarSN_IMP_LIV: TStringField;
    SQLContasPagarTP_DOC: TStringField;
    SQLContasPagarCD_CTB: TStringField;
    SQLContasPagarCD_USU: TStringField;
    SQLContasPagarID_VER_ATU: TStringField;
    SQLContasPagarDS_OBS: TStringField;
    SQLContasPagarID_FOR: TIntegerField;
    SQLContasPagarID_LOCAL: TIntegerField;
    SQLContasPagarNM_FOR: TStringField;
    SQLContasPagarID_FORNECEDOR: TIntegerField;
    SQLContasPagarNO_CNP_CPF: TStringField;
    SQLContasPagarNO_FON: TStringField;
    SQLContasPagarNO_FAX: TStringField;
    SQLContasPagarNM_CID: TStringField;
    SQLContasPagarUF_CID: TStringField;
    SQLContasPagarNM_BAI: TStringField;
    SQLContasPagarNM_RUA: TStringField;
    SQLContasPagarNO_CEP: TStringField;
    CDSContasPagarID: TIntegerField;
    CDSContasPagarNO_DOC: TStringField;
    CDSContasPagarNO_DOC_ORI: TStringField;
    CDSContasPagarDT_CAD: TSQLTimeStampField;
    CDSContasPagarST_DOC: TStringField;
    CDSContasPagarCD_MOE: TStringField;
    CDSContasPagarDT_EMS: TSQLTimeStampField;
    CDSContasPagarDT_VCT: TSQLTimeStampField;
    CDSContasPagarVR_DOC: TSingleField;
    CDSContasPagarVR_DEB_DOC: TSingleField;
    CDSContasPagarTP_JUR: TStringField;
    CDSContasPagarTX_JUR: TSingleField;
    CDSContasPagarDT_PGT: TSQLTimeStampField;
    CDSContasPagarVR_RCB: TSingleField;
    CDSContasPagarVR_JUR: TSingleField;
    CDSContasPagarVR_ABA_DCT: TSingleField;
    CDSContasPagarVR_DEV: TSingleField;
    CDSContasPagarCD_LOC_COB: TStringField;
    CDSContasPagarDT_RMS_COB: TSQLTimeStampField;
    CDSContasPagarCD_TIT_LOC: TStringField;
    CDSContasPagarDT_COB_TIT: TSQLTimeStampField;
    CDSContasPagarST_TIT_LOC: TStringField;
    CDSContasPagarDT_ULT_MOD: TSQLTimeStampField;
    CDSContasPagarSN_EXP_CTB: TStringField;
    CDSContasPagarSN_IMP_DOC: TStringField;
    CDSContasPagarSN_IMP_LIV: TStringField;
    CDSContasPagarTP_DOC: TStringField;
    CDSContasPagarCD_CTB: TStringField;
    CDSContasPagarCD_USU: TStringField;
    CDSContasPagarID_VER_ATU: TStringField;
    CDSContasPagarDS_OBS: TStringField;
    CDSContasPagarID_FOR: TIntegerField;
    CDSContasPagarID_LOCAL: TIntegerField;
    CDSContasPagarNM_FOR: TStringField;
    CDSContasPagarID_FORNECEDOR: TIntegerField;
    CDSContasPagarNO_CNP_CPF: TStringField;
    CDSContasPagarNO_FON: TStringField;
    CDSContasPagarNO_FAX: TStringField;
    CDSContasPagarNM_CID: TStringField;
    CDSContasPagarUF_CID: TStringField;
    CDSContasPagarNM_BAI: TStringField;
    CDSContasPagarNM_RUA: TStringField;
    CDSContasPagarNO_CEP: TStringField;
    SQLClientesDT_ABT: TSQLTimeStampField;
    CDSClientesDT_ABT: TSQLTimeStampField;
    SQL_Historico_ALT: TSQLDataSet;
    DSP_Historico_ALT: TDataSetProvider;
    CDS_Historico_ALT: TClientDataSet;
    CDS_Historico_ALTID: TIntegerField;
    CDS_Historico_ALTDT_ALT_TPC: TSQLTimeStampField;
    CDS_Historico_ALTID_CLIENTE: TIntegerField;
    CDS_Historico_ALTNM_ALT_TPC: TStringField;
    SQLContasPagarVR_FIN: TSingleField;
    CDSContasPagarVR_FIN: TSingleField;
    CDS_Historico_ALTCD_USU_TPC: TStringField;
    SQLEmpresaSN_CLI_ATL: TStringField;
    CDSEmpresaSN_CLI_ATL: TStringField;
    SQLContasReceber: TSQLDataSet;
    DSPContasReceber: TDataSetProvider;
    CDSContasReceber: TClientDataSet;
    SQLContasReceberID: TIntegerField;
    SQLContasReceberNO_DOC: TStringField;
    SQLContasReceberNO_DOC_ORI: TStringField;
    SQLContasReceberCD_FIL: TStringField;
    SQLContasReceberDT_CAD: TSQLTimeStampField;
    SQLContasReceberCD_CLI: TStringField;
    SQLContasReceberCD_MOE: TStringField;
    SQLContasReceberDT_EMS: TSQLTimeStampField;
    SQLContasReceberDT_VCT: TSQLTimeStampField;
    SQLContasReceberVR_DOC: TSingleField;
    SQLContasReceberVR_DEB_DOC: TSingleField;
    SQLContasReceberTX_JUR: TSingleField;
    SQLContasReceberDT_PGT: TSQLTimeStampField;
    SQLContasReceberVR_RCB: TSingleField;
    SQLContasReceberVR_JUR: TSingleField;
    SQLContasReceberVR_ABA_DCT: TSingleField;
    SQLContasReceberVR_DEV: TSingleField;
    SQLContasReceberCD_LOC_COB: TStringField;
    SQLContasReceberDT_RMS_COB: TSQLTimeStampField;
    SQLContasReceberCD_TIT_LOC: TStringField;
    SQLContasReceberCD_LIN_DIG: TStringField;
    SQLContasReceberDT_COB_TIT: TSQLTimeStampField;
    SQLContasReceberST_TIT_LOC: TStringField;
    SQLContasReceberDT_ULT_MOD: TSQLTimeStampField;
    SQLContasReceberCD_VEN: TStringField;
    SQLContasReceberPC_CMS: TSingleField;
    SQLContasReceberNO_PED: TStringField;
    SQLContasReceberSN_EXP_CTB: TStringField;
    SQLContasReceberSN_IMP_DOC: TStringField;
    SQLContasReceberSN_IMP_LIV: TStringField;
    SQLContasReceberNO_NTF: TStringField;
    SQLContasReceberTP_DOC_AUX: TStringField;
    SQLContasReceberCD_CLI_OLD: TStringField;
    SQLContasReceberCD_USU: TStringField;
    SQLContasReceberID_VER_ATU: TStringField;
    SQLContasReceberID_CLIENTE: TIntegerField;
    SQLContasReceberID_LOCAL: TIntegerField;
    SQLContasReceberNM_CLI: TStringField;
    SQLContasReceberID_CLIENTE_1: TIntegerField;
    SQLContasReceberNO_CNP_CPF: TStringField;
    SQLContasReceberNO_FON: TStringField;
    SQLContasReceberNO_FAX: TStringField;
    SQLContasReceberNM_CID: TStringField;
    SQLContasReceberUF_CID: TStringField;
    SQLContasReceberNM_BAI: TStringField;
    SQLContasReceberNM_RUA: TStringField;
    SQLContasReceberNO_CEP: TStringField;
    CDSContasReceberID: TIntegerField;
    CDSContasReceberNO_DOC_ORI: TStringField;
    CDSContasReceberCD_FIL: TStringField;
    CDSContasReceberDT_CAD: TSQLTimeStampField;
    CDSContasReceberCD_CLI: TStringField;
    CDSContasReceberCD_MOE: TStringField;
    CDSContasReceberDT_EMS: TSQLTimeStampField;
    CDSContasReceberDT_VCT: TSQLTimeStampField;
    CDSContasReceberVR_DOC: TSingleField;
    CDSContasReceberVR_DEB_DOC: TSingleField;
    CDSContasReceberTX_JUR: TSingleField;
    CDSContasReceberDT_PGT: TSQLTimeStampField;
    CDSContasReceberVR_RCB: TSingleField;
    CDSContasReceberVR_JUR: TSingleField;
    CDSContasReceberVR_ABA_DCT: TSingleField;
    CDSContasReceberVR_DEV: TSingleField;
    CDSContasReceberCD_LOC_COB: TStringField;
    CDSContasReceberDT_RMS_COB: TSQLTimeStampField;
    CDSContasReceberCD_TIT_LOC: TStringField;
    CDSContasReceberCD_LIN_DIG: TStringField;
    CDSContasReceberDT_COB_TIT: TSQLTimeStampField;
    CDSContasReceberST_TIT_LOC: TStringField;
    CDSContasReceberDT_ULT_MOD: TSQLTimeStampField;
    CDSContasReceberCD_VEN: TStringField;
    CDSContasReceberPC_CMS: TSingleField;
    CDSContasReceberNO_PED: TStringField;
    CDSContasReceberSN_EXP_CTB: TStringField;
    CDSContasReceberSN_IMP_DOC: TStringField;
    CDSContasReceberSN_IMP_LIV: TStringField;
    CDSContasReceberNO_NTF: TStringField;
    CDSContasReceberTP_DOC_AUX: TStringField;
    CDSContasReceberCD_CLI_OLD: TStringField;
    CDSContasReceberCD_USU: TStringField;
    CDSContasReceberID_VER_ATU: TStringField;
    CDSContasReceberID_CLIENTE: TIntegerField;
    CDSContasReceberID_LOCAL: TIntegerField;
    CDSContasReceberNM_CLI: TStringField;
    CDSContasReceberID_CLIENTE_1: TIntegerField;
    CDSContasReceberNO_CNP_CPF: TStringField;
    CDSContasReceberNO_FON: TStringField;
    CDSContasReceberNO_FAX: TStringField;
    CDSContasReceberNM_CID: TStringField;
    CDSContasReceberUF_CID: TStringField;
    CDSContasReceberNM_BAI: TStringField;
    CDSContasReceberNM_RUA: TStringField;
    CDSContasReceberNO_CEP: TStringField;
    CDSContasReceberNO_DOC: TStringField;
    SQLContasReceberDS_OBS: TBlobField;
    CDSContasReceberDS_OBS: TBlobField;
    SQLProdut: TSQLDataSet;
    DSPProdut: TDataSetProvider;
    CDSProdut: TClientDataSet;
    SQLProdutID: TIntegerField;
    SQLProdutCD_PDT_ETQ: TStringField;
    SQLProdutNM_PDT: TStringField;
    SQLProdutNM_PDT_AUX: TStringField;
    SQLProdutSN_CPL: TStringField;
    SQLProdutNM_FAB: TStringField;
    SQLProdutCD_BAR: TStringField;
    SQLProdutVR_LAG: TSingleField;
    SQLProdutVR_ALT: TSingleField;
    SQLProdutVR_ESP: TSingleField;
    SQLProdutST_PDT: TStringField;
    SQLProdutSN_CTL_ETQ: TStringField;
    SQLProdutSN_TAB_PRC: TStringField;
    SQLProdutSN_IND: TStringField;
    SQLProdutTP_EPF_PDT: TStringField;
    SQLProdutCD_MAT_PRI: TStringField;
    SQLProdutDT_CAD: TSQLTimeStampField;
    SQLProdutST_RVD: TStringField;
    SQLProdutAL_MVA_RVD: TSingleField;
    SQLProdutCD_FAM_PDT: TStringField;
    SQLProdutCD_GRU_PDT: TStringField;
    SQLProdutTP_ITE: TStringField;
    SQLProdutCD_GEN_ITE: TStringField;
    SQLProdutCD_UNI_PDT: TStringField;
    SQLProdutCD_UNI_CMP: TStringField;
    SQLProdutCD_EMB_PDT: TStringField;
    SQLProdutQT_EMB_PDT: TStringField;
    SQLProdutPS_PDT: TSingleField;
    SQLProdutVR_FAT_CVS: TSingleField;
    SQLProdutDT_SLD_INV: TSQLTimeStampField;
    SQLProdutQT_SLD_INV: TSingleField;
    SQLProdutQT_SLD_ATU: TSingleField;
    SQLProdutQT_SLD_MIN: TSingleField;
    SQLProdutQT_SLD_MAX: TSingleField;
    SQLProdutQT_SLD_PED: TSingleField;
    SQLProdutQT_SLD_FOR: TSingleField;
    SQLProdutQT_SLD_CF: TSingleField;
    SQLProdutDT_ULT_CMP: TSQLTimeStampField;
    SQLProdutPR_ULT_CMP: TSingleField;
    SQLProdutVR_ULT_CUS: TSingleField;
    SQLProdutVR_CUS_MED: TSingleField;
    SQLProdutPC_LUC: TSingleField;
    SQLProdutDT_ULT_VND: TSQLTimeStampField;
    SQLProdutPR_AVI_ATA: TSingleField;
    SQLProdutPR_PRZ_ATA: TSingleField;
    SQLProdutPR_PRO_ATA: TSingleField;
    SQLProdutPC_CMS_ATA: TSingleField;
    SQLProdutPR_AVI_VRJ: TSingleField;
    SQLProdutPR_PRZ_VRJ: TSingleField;
    SQLProdutPR_PRO_VRJ: TSingleField;
    SQLProdutPC_CMS_VRJ: TSingleField;
    SQLProdutPC_BON: TSingleField;
    SQLProdutAL_IPI: TSingleField;
    SQLProdutPC_RDC: TSingleField;
    SQLProdutCD_CST_IPS: TStringField;
    SQLProdutCD_CST_IPE: TStringField;
    SQLProdutCD_CST_CMP: TStringField;
    SQLProdutPC_RDC_CMP: TSingleField;
    SQLProdutAL_ICM_ICR: TSingleField;
    SQLProdutCD_CLS_FIS: TStringField;
    SQLProdutAL_MVA: TSingleField;
    SQLProdutAL_PIS: TSingleField;
    SQLProdutCD_CST_PIS: TStringField;
    SQLProdutAL_COF: TSingleField;
    SQLProdutCD_CST_COF: TSingleField;
    SQLProdutPC_MAR_PDT: TStringField;
    SQLProdutPC_CMS_PDT: TSingleField;
    SQLProdutPC_CMS_TLM: TSingleField;
    SQLProdutCD_CTL: TStringField;
    SQLProdutCD_CTL_: TStringField;
    SQLProdutCD_CTL_AUX: TStringField;
    SQLProdutOR_TAB_PRC: TStringField;
    SQLProdutCD_NCM: TStringField;
    SQLProdutCD_PDT_OLD: TStringField;
    SQLProdutCD_LOC_PDT: TStringField;
    SQLProdutDT_RMC: TSQLTimeStampField;
    SQLProdutPC_RMC: TSingleField;
    SQLProdutDT_RMC_ANT: TSQLTimeStampField;
    SQLProdutPC_RMC_ANT: TSingleField;
    SQLProdutDT_ULT_ALT: TSQLTimeStampField;
    SQLProdutCD_OBS_DUF: TStringField;
    SQLProdutCD_OBS_FUF: TStringField;
    SQLProdutNM_ARQ_FOT: TStringField;
    SQLProdutAL_ICM_MKP: TSingleField;
    SQLProdutAL_PIS_MKP: TSingleField;
    SQLProdutAL_COF_MKP: TSingleField;
    SQLProdutPC_DPA_MKP: TSingleField;
    SQLProdutPC_DPF_MKP: TSingleField;
    SQLProdutPC_DPE_MKP: TSingleField;
    SQLProdutPC_CMS_MKP: TSingleField;
    SQLProdutPC_MLC_MKP: TSingleField;
    SQLProdutAL_ICM_MKC: TSingleField;
    SQLProdutAL_PIS_MKC: TSingleField;
    SQLProdutAL_COF_MKC: TSingleField;
    SQLProdutPC_DPA_MKC: TSingleField;
    SQLProdutPC_DPF_MKC: TSingleField;
    SQLProdutPC_DPE_MKC: TSingleField;
    SQLProdutPC_CMS_MKC: TSingleField;
    SQLProdutPC_MLC_MKC: TSingleField;
    SQLProdutAL_ICM_M12: TSingleField;
    SQLProdutAL_PIS_M12: TSingleField;
    SQLProdutAL_COF_M12: TSingleField;
    SQLProdutPC_DPA_M12: TSingleField;
    SQLProdutPC_DPF_M12: TSingleField;
    SQLProdutPC_DPE_M12: TSingleField;
    SQLProdutPC_CMS_M12: TSingleField;
    SQLProdutPC_MLC_M12: TSingleField;
    SQLProdutDS_OBS: TBlobField;
    SQLProdutCD_USU: TStringField;
    CDSProdutID: TIntegerField;
    CDSProdutCD_PDT_ETQ: TStringField;
    CDSProdutNM_PDT: TStringField;
    CDSProdutNM_PDT_AUX: TStringField;
    CDSProdutSN_CPL: TStringField;
    CDSProdutNM_FAB: TStringField;
    CDSProdutCD_BAR: TStringField;
    CDSProdutVR_LAG: TSingleField;
    CDSProdutVR_ALT: TSingleField;
    CDSProdutVR_ESP: TSingleField;
    CDSProdutST_PDT: TStringField;
    CDSProdutSN_CTL_ETQ: TStringField;
    CDSProdutSN_TAB_PRC: TStringField;
    CDSProdutSN_IND: TStringField;
    CDSProdutTP_EPF_PDT: TStringField;
    CDSProdutCD_MAT_PRI: TStringField;
    CDSProdutDT_CAD: TSQLTimeStampField;
    CDSProdutST_RVD: TStringField;
    CDSProdutAL_MVA_RVD: TSingleField;
    CDSProdutCD_FAM_PDT: TStringField;
    CDSProdutCD_GRU_PDT: TStringField;
    CDSProdutTP_ITE: TStringField;
    CDSProdutCD_GEN_ITE: TStringField;
    CDSProdutCD_UNI_PDT: TStringField;
    CDSProdutCD_UNI_CMP: TStringField;
    CDSProdutCD_EMB_PDT: TStringField;
    CDSProdutQT_EMB_PDT: TStringField;
    CDSProdutPS_PDT: TSingleField;
    CDSProdutVR_FAT_CVS: TSingleField;
    CDSProdutDT_SLD_INV: TSQLTimeStampField;
    CDSProdutQT_SLD_INV: TSingleField;
    CDSProdutQT_SLD_ATU: TSingleField;
    CDSProdutQT_SLD_MIN: TSingleField;
    CDSProdutQT_SLD_MAX: TSingleField;
    CDSProdutQT_SLD_PED: TSingleField;
    CDSProdutQT_SLD_FOR: TSingleField;
    CDSProdutQT_SLD_CF: TSingleField;
    CDSProdutDT_ULT_CMP: TSQLTimeStampField;
    CDSProdutPR_ULT_CMP: TSingleField;
    CDSProdutVR_ULT_CUS: TSingleField;
    CDSProdutVR_CUS_MED: TSingleField;
    CDSProdutPC_LUC: TSingleField;
    CDSProdutDT_ULT_VND: TSQLTimeStampField;
    CDSProdutPR_AVI_ATA: TSingleField;
    CDSProdutPR_PRZ_ATA: TSingleField;
    CDSProdutPR_PRO_ATA: TSingleField;
    CDSProdutPC_CMS_ATA: TSingleField;
    CDSProdutPR_AVI_VRJ: TSingleField;
    CDSProdutPR_PRZ_VRJ: TSingleField;
    CDSProdutPR_PRO_VRJ: TSingleField;
    CDSProdutPC_CMS_VRJ: TSingleField;
    CDSProdutPC_BON: TSingleField;
    CDSProdutAL_IPI: TSingleField;
    CDSProdutPC_RDC: TSingleField;
    CDSProdutCD_CST_IPS: TStringField;
    CDSProdutCD_CST_IPE: TStringField;
    CDSProdutCD_CST_CMP: TStringField;
    CDSProdutAL_ICR_CMP: TSingleField;
    CDSProdutPC_RDC_CMP: TSingleField;
    CDSProdutAL_ICM_ICR: TSingleField;
    CDSProdutCD_CLS_FIS: TStringField;
    CDSProdutAL_MVA: TSingleField;
    CDSProdutAL_PIS: TSingleField;
    CDSProdutCD_CST_PIS: TStringField;
    CDSProdutAL_COF: TSingleField;
    CDSProdutCD_CST_COF: TSingleField;
    CDSProdutPC_MAR_PDT: TStringField;
    CDSProdutPC_CMS_PDT: TSingleField;
    CDSProdutPC_CMS_TLM: TSingleField;
    CDSProdutCD_CTL: TStringField;
    CDSProdutCD_CTL_: TStringField;
    CDSProdutCD_CTL_AUX: TStringField;
    CDSProdutOR_TAB_PRC: TStringField;
    CDSProdutCD_NCM: TStringField;
    CDSProdutCD_PDT_OLD: TStringField;
    CDSProdutCD_LOC_PDT: TStringField;
    CDSProdutDT_RMC: TSQLTimeStampField;
    CDSProdutPC_RMC: TSingleField;
    CDSProdutDT_RMC_ANT: TSQLTimeStampField;
    CDSProdutPC_RMC_ANT: TSingleField;
    CDSProdutDT_ULT_ALT: TSQLTimeStampField;
    CDSProdutCD_OBS_DUF: TStringField;
    CDSProdutCD_OBS_FUF: TStringField;
    CDSProdutNM_ARQ_FOT: TStringField;
    CDSProdutAL_ICM_MKP: TSingleField;
    CDSProdutAL_PIS_MKP: TSingleField;
    CDSProdutAL_COF_MKP: TSingleField;
    CDSProdutPC_DPA_MKP: TSingleField;
    CDSProdutPC_DPF_MKP: TSingleField;
    CDSProdutPC_DPE_MKP: TSingleField;
    CDSProdutPC_CMS_MKP: TSingleField;
    CDSProdutPC_MLC_MKP: TSingleField;
    CDSProdutAL_ICM_MKC: TSingleField;
    CDSProdutAL_PIS_MKC: TSingleField;
    CDSProdutAL_COF_MKC: TSingleField;
    CDSProdutPC_DPA_MKC: TSingleField;
    CDSProdutPC_DPF_MKC: TSingleField;
    CDSProdutPC_DPE_MKC: TSingleField;
    CDSProdutPC_CMS_MKC: TSingleField;
    CDSProdutPC_MLC_MKC: TSingleField;
    CDSProdutAL_ICM_M12: TSingleField;
    CDSProdutAL_PIS_M12: TSingleField;
    CDSProdutAL_COF_M12: TSingleField;
    CDSProdutPC_DPA_M12: TSingleField;
    CDSProdutPC_DPF_M12: TSingleField;
    CDSProdutPC_DPE_M12: TSingleField;
    CDSProdutPC_CMS_M12: TSingleField;
    CDSProdutPC_MLC_M12: TSingleField;
    CDSProdutDS_OBS: TBlobField;
    CDSProdutCD_USU: TStringField;
    SQLProdutSN_FAT_CVS: TStringField;
    CDSProdutSN_FAT_CVS: TStringField;
    SQLProdutID_FAM_PDT: TIntegerField;
    SQLProdutID_GRU_PDT: TIntegerField;
    SQLProdutID_UNI_PDT: TIntegerField;
    CDSProdutID_FAM_PDT: TIntegerField;
    CDSProdutID_GRU_PDT: TIntegerField;
    CDSProdutID_UNI_PDT: TIntegerField;
    SQLProdutID_UNI_CMP: TSmallintField;
    CDSProdutID_UNI_CMP: TSmallintField;
    SQLContasRecebervr_total_receber: TFloatField;
    CDSContasRecebervr_total_receber: TFloatField;
    SQLEmpresaSN_DIG_PDT: TStringField;
    CDSEmpresaSN_DIG_PDT: TStringField;
    SQLProdutCD_PDT: TIntegerField;
    CDSProdutCD_PDT: TIntegerField;
    SQLProdutCD_CST: TStringField;
    CDSProdutCD_CST: TStringField;
    SQLContasReceberTP_JUR: TStringField;
    CDSContasReceberTP_JUR: TStringField;
    SQLContasReceberTP_DOC: TStringField;
    CDSContasReceberTP_DOC: TStringField;
    SQLContasReceberST_DOC: TStringField;
    CDSContasReceberST_DOC: TStringField;
    SQLContasReceberSN_NEG: TStringField;
    CDSContasReceberSN_NEG: TStringField;
    SQLProdutAL_ICR_CMP: TSingleField;
    SQLProdutAL_ICM_VND: TSingleField;
    SQLProdutAL_IPI_CMP: TSingleField;
    CDSProdutAL_ICM_VND: TSingleField;
    CDSProdutAL_IPI_CMP: TSingleField;
    SQLObsNTF: TSQLDataSet;
    DSPObsNTF: TDataSetProvider;
    CDSObsNTF: TClientDataSet;
    SQLObsNTFID: TIntegerField;
    SQLObsNTFDS_OBS: TBlobField;
    SQLObsNTFCD_USU: TStringField;
    SQLObsNTFID_VER_ATU: TIntegerField;
    CDSObsNTFID: TIntegerField;
    CDSObsNTFDS_OBS: TBlobField;
    CDSObsNTFCD_USU: TStringField;
    CDSObsNTFID_VER_ATU: TIntegerField;
    SQLPDTTBT: TSQLDataSet;
    DSPPDTTBT: TDataSetProvider;
    CDSPDTTBT: TClientDataSet;
    SQLPDTTBTID: TIntegerField;
    SQLPDTTBTID_PDT: TIntegerField;
    SQLPDTTBTAL_ICM: TSingleField;
    SQLPDTTBTAL_FECOP: TSingleField;
    SQLPDTTBTCD_USU: TStringField;
    CDSPDTTBTID: TIntegerField;
    CDSPDTTBTID_PDT: TIntegerField;
    CDSPDTTBTAL_ICM: TSingleField;
    CDSPDTTBTAL_FECOP: TSingleField;
    CDSPDTTBTCD_USU: TStringField;
    SQLPDTTBTUF_ORG: TStringField;
    CDSPDTTBTUF_ORG: TStringField;
    CDSProdutUNI: TStringField;
    SQLPLNPGT: TSQLDataSet;
    DSPPLNPGT: TDataSetProvider;
    CDSPLNPGT: TClientDataSet;
    SQLPLNPGTID: TIntegerField;
    SQLPLNPGTNM_PLN_PGT: TStringField;
    SQLPLNPGTCD_USU: TStringField;
    CDSPLNPGTID: TIntegerField;
    CDSPLNPGTNM_PLN_PGT: TStringField;
    CDSPLNPGTCD_USU: TStringField;
    SQLPLNPGTPC_RJT: TSingleField;
    SQLPLNPGTPZ_PLN_PGT: TStringField;
    CDSPLNPGTPC_RJT: TSingleField;
    CDSPLNPGTPZ_PLN_PGT: TStringField;
    SQLRotas: TSQLDataSet;
    DSPRotas: TDataSetProvider;
    CDSRotas: TClientDataSet;
    SQLVenRotas: TSQLDataSet;
    DSPVenRotas: TDataSetProvider;
    CDSVenRotas: TClientDataSet;
    SQLVenRotasID: TIntegerField;
    SQLVenRotasID_CIDADE: TIntegerField;
    SQLVenRotasID_ROTAS: TIntegerField;
    CDSVenRotasID: TIntegerField;
    CDSVenRotasID_CIDADE: TIntegerField;
    CDSVenRotasID_ROTAS: TIntegerField;
    SQLVenRotasNM_CID: TStringField;
    CDSVenRotasNM_CID: TStringField;
    SQLVenRotasUF_CID: TStringField;
    CDSVenRotasUF_CID: TStringField;
    SQLRotasID: TIntegerField;
    SQLRotasNM_ROT: TStringField;
    SQLRotasID_VEN: TIntegerField;
    SQLRotasID_CTG: TIntegerField;
    SQLRotasCD_USU: TStringField;
    SQLRotasNM_CTG_CLI: TStringField;
    SQLRotasNM_VEN: TStringField;
    CDSRotasID: TIntegerField;
    CDSRotasNM_ROT: TStringField;
    CDSRotasID_VEN: TIntegerField;
    CDSRotasID_CTG: TIntegerField;
    CDSRotasCD_USU: TStringField;
    CDSRotasNM_CTG_CLI: TStringField;
    CDSRotasNM_VEN: TStringField;
    SQLChqPdtST_CHQ: TStringField;
    CDSChqPdtST_CHQ: TStringField;
    SQLChqPdtNO_CNP_CPF_1: TStringField;
    CDSChqPdtID_CLIENTE_1: TIntegerField;
    CDSChqPdtNO_CNP_CPF_1: TStringField;
    SQLChqPdtID_VENDEDOR: TIntegerField;
    SQLChqPdtNM_VEN: TStringField;
    CDSChqPdtID_VENDEDOR: TIntegerField;
    CDSChqPdtNM_VEN: TStringField;
    SQLChqPdtDT_DVL_1: TSQLTimeStampField;
    SQLChqPdtCD_ALI_1: TStringField;
    SQLChqPdtDT_DVL_2: TSQLTimeStampField;
    SQLChqPdtCD_ALI_2: TStringField;
    CDSChqPdtDT_DVL_1: TSQLTimeStampField;
    CDSChqPdtCD_ALI_1: TStringField;
    CDSChqPdtDT_DVL_2: TSQLTimeStampField;
    CDSChqPdtCD_ALI_2: TStringField;
    SQLChqPdtSN_SPC: TStringField;
    CDSChqPdtSN_SPC: TStringField;
    SQLChqPdtST_CTR: TStringField;
    CDSChqPdtST_CTR: TStringField;
    SQLChqPdtNO_BCO: TStringField;
    SQLChqPdtNM_LOC_COB: TStringField;
    CDSChqPdtNO_BCO: TStringField;
    CDSChqPdtNM_LOC_COB: TStringField;
    SQLChqPdtID_EMPRESA: TIntegerField;
    SQLChqPdtID_CUSTODIA: TIntegerField;
    SQLChqPdtDT_DPS: TSQLTimeStampField;
    CDSChqPdtID_EMPRESA: TIntegerField;
    CDSChqPdtID_CUSTODIA: TIntegerField;
    CDSChqPdtDT_DPS: TSQLTimeStampField;
    SQLVendedorID_EMPRESA: TIntegerField;
    CDSVendedorID_EMPRESA: TIntegerField;
    SQLChqPdtDT_RCB: TSQLTimeStampField;
    CDSChqPdtDT_RCB: TSQLTimeStampField;
    SQLContasReceberID_VEN: TIntegerField;
    CDSContasReceberID_VEN: TIntegerField;
    SQLNTFENT: TSQLDataSet;
    DSPNTFENT: TDataSetProvider;
    CDSNTFENT: TClientDataSet;
    SQLNTFENTID: TIntegerField;
    SQLNTFENTID_FORNECEDOR: TIntegerField;
    SQLNTFENTNO_NTF: TStringField;
    SQLNTFENTID_NFE: TStringField;
    SQLNTFENTDS_SER_NTF: TStringField;
    SQLNTFENTDS_MOD_NTF: TStringField;
    SQLNTFENTCD_SIT_NTF: TStringField;
    SQLNTFENTTP_LCT: TStringField;
    SQLNTFENTCD_CFO: TStringField;
    SQLNTFENTCD_CFO_2: TStringField;
    SQLNTFENTCD_CFO_3: TStringField;
    SQLNTFENTDT_MOV_NTF: TSQLTimeStampField;
    SQLNTFENTDT_EMS_NTF: TSQLTimeStampField;
    SQLNTFENTVR_TOT_PDT: TIntegerField;
    SQLNTFENTVR_CTB_NTF: TIntegerField;
    SQLNTFENTVR_BDC_ICM: TIntegerField;
    SQLNTFENTVR_ICM_DEB: TIntegerField;
    SQLNTFENTAL_ICM: TIntegerField;
    SQLNTFENTVR_BDC_ICR: TIntegerField;
    SQLNTFENTVR_ICR_DEB: TIntegerField;
    SQLNTFENTTP_PGT_ICR: TStringField;
    SQLNTFENTVR_ICM_ISN: TIntegerField;
    SQLNTFENTVR_ICM_OUT: TIntegerField;
    SQLNTFENTVR_BDC_IPI: TIntegerField;
    SQLNTFENTVR_IPI_DEB: TIntegerField;
    SQLNTFENTVR_IPI_ISN: TIntegerField;
    SQLNTFENTVR_IPI_OUT: TIntegerField;
    SQLNTFENTSN_MOV_ETQ: TStringField;
    SQLNTFENTSN_DIF_ICM: TStringField;
    SQLNTFENTVR_ENC_NTF: TIntegerField;
    SQLNTFENTCD_BAS_CRD: TStringField;
    SQLNTFENTID_NAT_FRT: TStringField;
    SQLNTFENTTP_FRT: TStringField;
    SQLNTFENTVR_FRT_NTF: TIntegerField;
    SQLNTFENTAL_ICM_FRT: TIntegerField;
    SQLNTFENTVR_SEG: TIntegerField;
    SQLNTFENTVR_DCT: TIntegerField;
    SQLNTFENTVR_OUT_DPS: TIntegerField;
    SQLNTFENTNO_PED_CMP: TStringField;
    SQLNTFENTDT_PED_CMP: TSQLTimeStampField;
    SQLNTFENTCD_PLN_PGT: TStringField;
    SQLNTFENTUF_FOR: TStringField;
    SQLNTFENTDS_OBS: TBlobField;
    SQLNTFENTCD_USU: TStringField;
    SQLNTFENTID_VER_ATU: TIntegerField;
    CDSNTFENTID: TIntegerField;
    CDSNTFENTID_FORNECEDOR: TIntegerField;
    CDSNTFENTNO_NTF: TStringField;
    CDSNTFENTID_NFE: TStringField;
    CDSNTFENTDS_SER_NTF: TStringField;
    CDSNTFENTDS_MOD_NTF: TStringField;
    CDSNTFENTCD_SIT_NTF: TStringField;
    CDSNTFENTTP_LCT: TStringField;
    CDSNTFENTCD_CFO: TStringField;
    CDSNTFENTCD_CFO_2: TStringField;
    CDSNTFENTCD_CFO_3: TStringField;
    CDSNTFENTDT_MOV_NTF: TSQLTimeStampField;
    CDSNTFENTDT_EMS_NTF: TSQLTimeStampField;
    CDSNTFENTVR_TOT_PDT: TIntegerField;
    CDSNTFENTVR_CTB_NTF: TIntegerField;
    CDSNTFENTVR_BDC_ICM: TIntegerField;
    CDSNTFENTVR_ICM_DEB: TIntegerField;
    CDSNTFENTAL_ICM: TIntegerField;
    CDSNTFENTVR_BDC_ICR: TIntegerField;
    CDSNTFENTVR_ICR_DEB: TIntegerField;
    CDSNTFENTTP_PGT_ICR: TStringField;
    CDSNTFENTVR_ICM_ISN: TIntegerField;
    CDSNTFENTVR_ICM_OUT: TIntegerField;
    CDSNTFENTVR_BDC_IPI: TIntegerField;
    CDSNTFENTVR_IPI_DEB: TIntegerField;
    CDSNTFENTVR_IPI_ISN: TIntegerField;
    CDSNTFENTVR_IPI_OUT: TIntegerField;
    CDSNTFENTSN_MOV_ETQ: TStringField;
    CDSNTFENTSN_DIF_ICM: TStringField;
    CDSNTFENTVR_ENC_NTF: TIntegerField;
    CDSNTFENTCD_BAS_CRD: TStringField;
    CDSNTFENTID_NAT_FRT: TStringField;
    CDSNTFENTTP_FRT: TStringField;
    CDSNTFENTVR_FRT_NTF: TIntegerField;
    CDSNTFENTAL_ICM_FRT: TIntegerField;
    CDSNTFENTVR_SEG: TIntegerField;
    CDSNTFENTVR_DCT: TIntegerField;
    CDSNTFENTVR_OUT_DPS: TIntegerField;
    CDSNTFENTNO_PED_CMP: TStringField;
    CDSNTFENTDT_PED_CMP: TSQLTimeStampField;
    CDSNTFENTCD_PLN_PGT: TStringField;
    CDSNTFENTUF_FOR: TStringField;
    CDSNTFENTDS_OBS: TBlobField;
    CDSNTFENTCD_USU: TStringField;
    CDSNTFENTID_VER_ATU: TIntegerField;
    procedure SQLConnection1BeforeConnect(Sender: TObject);
    procedure CDSGruMetaAfterInsert(DataSet: TDataSet);
    procedure CDSFornecedorNO_CNP_CPFGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSVendedorNO_CNP_CPFGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSEmpresaNO_CNP_CPFGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSVendedorNO_FONValidate(Sender: TField);
    procedure CDSFornecedorBeforePost(DataSet: TDataSet);
    function Verifica_Campos_Em_Branco: Boolean;
    procedure CDSVendedorBeforePost(DataSet: TDataSet);
    procedure CDSEmpresaBeforePost(DataSet: TDataSet);
    function NO_CPF_CNT : Boolean;
    function NO_CNP_CPF : boolean;
    function NO_CNP_CNT : boolean;
    procedure CDSFuncionarioBeforePost(DataSet: TDataSet);
    procedure CDSPaisesBeforePost(DataSet: TDataSet);
    procedure CDSEmbalagemBeforePost(DataSet: TDataSet);
    procedure CDSSetorBeforePost(DataSet: TDataSet);
    procedure CDSRepresentanteBeforePost(DataSet: TDataSet);
    procedure CDSRepresentanteNO_CNP_CPFGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSUFederativaBeforePost(DataSet: TDataSet);
    procedure CDSCidadesBeforePost(DataSet: TDataSet);
    procedure CDSVendedor_MetasTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSClientesBeforePost(DataSet: TDataSet);
    procedure CDScfopBeforePost(DataSet: TDataSet);
    procedure CDSAlqIcmBeforePost(DataSet: TDataSet);
    procedure CDSCestDS_CESTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSCestBeforePost(DataSet: TDataSet);
    procedure CDSAlqIcmCD_UNF_ORIGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSAlqIcmCD_UNF_DSTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSnbmDS_NBMGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSCoresBeforePost(DataSet: TDataSet);
    procedure CDSCestSEGUIMENTOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSCestDESCRICAOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSChqPdtBeforePost(DataSet: TDataSet);
    procedure CDSNbmBeforePost(DataSet: TDataSet);
    procedure CDSClientesNO_CNP_CPFGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSContasPagarBeforePost(DataSet: TDataSet);
    procedure CDSPaisesNM_PAIGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);

    procedure Historico_ALT_TPC;
    procedure CDSLocalCobrancaNM_LOC_COBGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSEmpresaSN_CLI_ATLGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSContasReceberNO_DOCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSContasReceberTP_DOCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSContasReceberBeforePost(DataSet: TDataSet);
    procedure CDSProdutSN_CTL_ETQGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutAfterInsert(DataSet: TDataSet);
    procedure CDSProdutST_PDTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutSN_FAT_CVSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutSN_TAB_PRCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutSN_INDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutSN_CPLGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutBeforePost(DataSet: TDataSet);
    procedure CDSContasReceberTP_JURGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSContasReceberST_DOCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSContasReceberSN_NEGGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutAfterEdit(DataSet: TDataSet);
    procedure tipo_item;
    procedure CDSProdutTP_ITEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutCD_GEN_ITEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutCD_CST_IPSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutCD_CST_IPEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutTP_EPF_PDTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSProdutST_RVDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSObsNTFDS_OBSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSPDTTBTAfterInsert(DataSet: TDataSet);
    procedure CDSPDTTBTBeforePost(DataSet: TDataSet);
    procedure CDSPDTTBTUF_ORGGetText(Sender: TField; var Text: string;
      DisplayText: Boolean); // TP_ITE
    procedure AlimentaCodPlanoPag;
    procedure AlimentaCodPlanoPagEdit;
    procedure CDSPLNPGTBeforePost(DataSet: TDataSet);
    procedure CDSPLNPGTAfterEdit(DataSet: TDataSet);
    procedure CDSVenRotasBeforePost(DataSet: TDataSet);
    procedure CDSVenRotasAfterInsert(DataSet: TDataSet);
    procedure CDSRotasBeforePost(DataSet: TDataSet);
    procedure CDSChqPdtST_CHQGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSChqPdtST_CTRGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSCategoriaBeforePost(DataSet: TDataSet);
    procedure CDSUsuariosBeforePost(DataSet: TDataSet);
    procedure CDSGeneroItemBeforePost(DataSet: TDataSet);
    procedure CDSUnidadePDTBeforePost(DataSet: TDataSet);


  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMcadastro: TDMcadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFrmFornecedor, UFrmMetaVen, UFrmVendedor, UFrmEmpresa, UFrmFuncionario,
  UFrmEmbalagem, UFrmPais, UFrmSetor, UFrmRepresentante, uFrmUnidadeProduto,
  UFrmUniFederativa, UFrmCidades, uFrmClientes, UFrmCFOP, UFrmAlicota, UFrmCest,
  uFrmCores, uFrmChqPdt, UFrmNBM, uFrmContasPagar, UFrmPrincipal,
  uFrmContasReceber, UFrmCadProduto, UFrmCadPlanoPagamento, UFrmCadRotas,
  UFrmCategoria, UFrmUsuario, UFrmUsuarios, UFrmGeneroItem;

{$R *.dfm}



Function RetZero(zeros: String; quant: integer): String;
var
     i, Tamanho: integer;
     aux: String;
begin
     aux := zeros;
     Tamanho := Length(zeros);
     zeros := '';
     for i := 1 to quant - Tamanho do
          zeros := zeros + '0';
     aux := zeros + aux;
     Result := aux;
end;



function TDMcadastro.NO_CNP_CNT: boolean;
begin
   FormCadEmpresa.ACBrValidador1.Documento := FormCadEmpresa.DbeditCNPJContador.Text;
   FormCadEmpresa.ACBrValidador1.TipoDocto := docCNPJ;
      if not FormCadEmpresa.ACBrValidador1.Validar then
       begin
       FormCadEmpresa.DbeditCNPJContador.SetFocus;
       result := false;
       raise Exception.Create('CNPJ Inválido !!');
       end else
       result :=  true;
end;

function TDMcadastro.NO_CNP_CPF: boolean;
begin
   begin
     FormCadEmpresa.ACBrValidador1.Documento := FormCadEmpresa.DBeditNO_CNP_CPF.Text;
     FormCadEmpresa.ACBrValidador1.TipoDocto := docCNPJ;
    if NOT FormCadEmpresa.ACBrValidador1.Validar then
      begin
      FormCadEmpresa.DBeditNO_CNP_CPF.SetFocus;
      raise Exception.Create('Informe um CNPJ válido !!');
       end else
       DMcadastro.CDSEmpresa.FieldByName('NO_CNP_CPF').EditMask := '##.###.###/####-##;0';
      end;
end;

function TDMcadastro.NO_CPF_CNT : Boolean;
begin
     FormCadEmpresa.ACBrValidador1.Documento := FormCadEmpresa.DbEditCPFContador.Text;
     FormCadEmpresa.ACBrValidador1.TipoDocto := docCPF;
      if not FormCadEmpresa.ACBrValidador1.Validar then
       begin
       FormCadEmpresa.DbEditCPFContador.SetFocus;
       raise Exception.Create('CPF Inválido !!');
       Result := false;
       end else
       Result := true;
    end;



procedure TDMcadastro.AlimentaCodPlanoPag;
begin
   DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString :=
 FormCadPlanoPagamento.Edit1a3.Text+
 FormCadPlanoPagamento.Edit4a6.Text+
 FormCadPlanoPagamento.Edit7a9.Text+
 FormCadPlanoPagamento.Edit10a12.Text+
 FormCadPlanoPagamento.Edit13a15.Text+
 FormCadPlanoPagamento.Edit16a18.Text+
 FormCadPlanoPagamento.Edit19a21.Text+
 FormCadPlanoPagamento.Edit22a24.Text+
 FormCadPlanoPagamento.Edit25a27.Text+
 FormCadPlanoPagamento.Edit28a30.Text+
 FormCadPlanoPagamento.Edit31a33.Text+
 FormCadPlanoPagamento.Edit34a36.Text+
 FormCadPlanoPagamento.Edit37a39.Text+
 FormCadPlanoPagamento.Edit40a42.Text+
 FormCadPlanoPagamento.Edit43a45.Text+
 FormCadPlanoPagamento.Edit46a48.Text+
 FormCadPlanoPagamento.Edit49a51.Text+
 FormCadPlanoPagamento.Edit52a54.Text+
 FormCadPlanoPagamento.Edit55a57.Text+
 FormCadPlanoPagamento.Edit58a60.Text+
 FormCadPlanoPagamento.Edit61a63.Text+
 FormCadPlanoPagamento.Edit64a66.Text+
 FormCadPlanoPagamento.Edit67a69.Text+
 FormCadPlanoPagamento.Edit70a72.Text+
 FormCadPlanoPagamento.Edit73a75.Text+
 FormCadPlanoPagamento.Edit76a78.Text+
 FormCadPlanoPagamento.Edit79a81.Text+
 FormCadPlanoPagamento.Edit82a84.Text+
 FormCadPlanoPagamento.Edit85a87.Text+
 FormCadPlanoPagamento.Edit88a90.Text;
end;

procedure TDMcadastro.AlimentaCodPlanoPagEdit;
begin
 if DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString <> '' then
    begin
    FormCadPlanoPagamento.Edit1a3.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,1,3);
    FormCadPlanoPagamento.Edit4a6.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,4,3);
    FormCadPlanoPagamento.Edit7a9.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,7,3);
    FormCadPlanoPagamento.Edit10a12.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,10,3);
    FormCadPlanoPagamento.Edit13a15.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,13,3);
    FormCadPlanoPagamento.Edit16a18.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,16,3);
    FormCadPlanoPagamento.Edit19a21.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,19,3);
    FormCadPlanoPagamento.Edit22a24.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,22,3);
    FormCadPlanoPagamento.Edit25a27.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,25,3);
    FormCadPlanoPagamento.Edit28a30.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,28,3);
    FormCadPlanoPagamento.Edit31a33.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,31,3);
    FormCadPlanoPagamento.Edit34a36.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,34,3);
    FormCadPlanoPagamento.Edit37a39.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,37,3);
    FormCadPlanoPagamento.Edit40a42.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,40,3);
    FormCadPlanoPagamento.Edit43a45.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,43,3);
    FormCadPlanoPagamento.Edit46a48.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,46,3);
    FormCadPlanoPagamento.Edit49a51.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,49,3);
    FormCadPlanoPagamento.Edit52a54.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,52,3);
    FormCadPlanoPagamento.Edit55a57.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,55,3);
    FormCadPlanoPagamento.Edit58a60.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,58,3);
    FormCadPlanoPagamento.Edit61a63.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,61,3);
    FormCadPlanoPagamento.Edit64a66.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,64,3);
    FormCadPlanoPagamento.Edit67a69.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,67,3);
    FormCadPlanoPagamento.Edit70a72.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,70,3);
    FormCadPlanoPagamento.Edit73a75.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,73,3);
    FormCadPlanoPagamento.Edit76a78.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,76,3);
    FormCadPlanoPagamento.Edit79a81.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,79,3);
    FormCadPlanoPagamento.Edit82a84.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,82,3);
    FormCadPlanoPagamento.Edit85a87.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,85,3);
    FormCadPlanoPagamento.Edit88a90.Text := Copy(DMcadastro.CDSPLNPGTPZ_PLN_PGT.AsString,88,3);
    end;
end;

procedure TDMcadastro.CDSAlqIcmBeforePost(DataSet: TDataSet);
begin
if DMcadastro.CDSAlqIcm.FieldByName('CD_UNF_ORI').AsString <> '' then
  begin
      DMcadastro.CDSUFederativa.open;
  if  DMcadastro.CDSUFederativa.Locate('NM_UNF',FormAliquota.DBComboBoxOri.Text,[]) then
      DMcadastro.CDSAlqIcm.FieldByName('CD_UNF_ORI').AsString := DMcadastro.CDSUFederativaCD_UNF.AsString;
      DMcadastro.CDSUFederativa.close;
  end;

 if DMcadastro.CDSAlqIcm.FieldByName('CD_UNF_DST').AsString <> '' then
  begin
      DMcadastro.CDSUFederativa.open;
  if  DMcadastro.CDSUFederativa.Locate('NM_UNF',FormAliquota.DBComboBoxDst.Text,[]) then
      DMcadastro.CDSAlqIcm.FieldByName('CD_UNF_DST').AsString := DMcadastro.CDSUFederativaCD_UNF.AsString;
      DMcadastro.CDSUFederativa.close;
  end;
 if not FormAliquota.Verifica_Campos_Em_Branco then
   abort;

end;

procedure TDMcadastro.CDSAlqIcmCD_UNF_DSTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
      DMcadastro.CDSUFederativa.open;
  if  DMcadastro.CDSUFederativa.Locate('CD_UNF',sender.AsString,[]) then
      Text := DMcadastro.CDSUFederativaNM_UNF.AsString;
      DMcadastro.CDSUFederativa.close;
end;

procedure TDMcadastro.CDSAlqIcmCD_UNF_ORIGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
      DMcadastro.CDSUFederativa.open;
  if  DMcadastro.CDSUFederativa.Locate('CD_UNF',sender.AsString,[]) then
      Text := DMcadastro.CDSUFederativaNM_UNF.AsString;
      DMcadastro.CDSUFederativa.close;
end;

procedure TDMcadastro.CDSCategoriaBeforePost(DataSet: TDataSet);
begin
if not Verifica_Campos_Em_Branco then
abort;
end;

procedure TDMcadastro.CDSCestBeforePost(DataSet: TDataSet);
begin
 if not FormCest.Verifica_Campos_Em_Branco then begin
 abort;
 end;
end;

procedure TDMcadastro.CDSCestDESCRICAOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
 text := sender.AsString;

end;

procedure TDMcadastro.CDSCestDS_CESTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
text :=  sender.AsString;
end;

procedure TDMcadastro.CDSCestSEGUIMENTOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
text := sender.AsString;
end;

procedure TDMcadastro.CDScfopBeforePost(DataSet: TDataSet);
begin
 if not FormCFOP.Verifica_Campos_Em_Branco then begin
  abort;
 end;
end;

procedure TDMcadastro.CDSChqPdtBeforePost(DataSet: TDataSet);
begin
 if not FormChqPdt.Verifica_Campos_Em_Branco then begin
 abort;
 end;
end;

procedure TDMcadastro.CDSChqPdtST_CHQGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if  DMcadastro.CDSChqPdtST_CHQ.AsString = 'PD' then
    Text := 'Pré-Datado';
end;

procedure TDMcadastro.CDSChqPdtST_CTRGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case AnsiIndexStr(DMcadastro.CDSChqPdtST_CTR.AsString,['D','A','P','M'] ) of
   0: Text := 'Devolvido';
   1: text := 'Advogado';
   2: text := 'Perdido';
   3: text := 'Matriz';
  end;
end;

procedure TDMcadastro.CDSCidadesBeforePost(DataSet: TDataSet);
begin
  if not FormCidades.Verifica_Campos_Em_Branco then begin
 abort;
 end;
end;

procedure TDMcadastro.CDSClientesBeforePost(DataSet: TDataSet);
begin
  FormClientes.AcertaCPFCNPJ;
  FormClientes.consultaCPFExistente;

 if Length(DMcadastro.CDSClientes.FieldByName('NO_CNP_CPF').AsString) = 11 then
  BEGIN
    FormClientes.ACBrValidador1.Documento := DMcadastro.CDSClientes.FieldByName('NO_CNP_CPF').AsString;
    FormClientes.ACBrValidador1.TipoDocto := docCPF;

    if NOT FormClientes.ACBrValidador1.Validar then
    begin
      showmessage('CPF Inválido !!');
      FormClientes.DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end;
  end else

  if Length(DMcadastro.CDSClientes.FieldByName('NO_CNP_CPF').AsString) = 14 then
  BEGIN
    FormClientes.ACBrValidador1.Documento := DMcadastro.CDSClientes.FieldByName('NO_CNP_CPF').AsString;
    FormClientes.ACBrValidador1.TipoDocto := docCNPJ;

    if NOT FormClientes.ACBrValidador1.Validar then
    begin
      showmessage('CNPJ Inválido !!');
      FormClientes.DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end;
  end;

  if not(length(DMcadastro.CDSClientes.FieldByName('NO_CNP_CPF').AsString) = 14)
  and not (length(DMcadastro.CDSClientes.FieldByName('NO_CNP_CPF').AsString) = 11)    then
        begin
         ShowMessage('CNPJ ou CPF Inválido!!');
         FormClientes.DBEdit_NO_CNP_CPF.SetFocus;
         abort;
        end;

 if not FormClientes.Verifica_Campos_Em_Branco then  // rotina para verificar se os campos estao preenchidos !!!!
        abort;


 Historico_ALT_TPC;

end;

procedure TDMcadastro.CDSClientesNO_CNP_CPFGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
   if DMcadastro.CDSClientes.State in [dsEdit, dsInsert,dsBrowse] then
 begin
  Text := AnsiReplaceStr(Sender.AsString,'.','');
  Text := AnsiReplaceStr(text,'-','');
  Text := AnsiReplaceStr(text,'/','');
 end;

 if  Length(text) = 11 then
  begin
  Text := FormatMaskText('000.000.000-00;0', text); //sender.asstring
  exit;
  end;
  if Length(text) = 14 then
   begin
   Text := FormatMaskText('00.000.000/0000-00;0', text); // sender.asstring
   exit;
   end;
end;

procedure TDMcadastro.CDSContasPagarBeforePost(DataSet: TDataSet);
begin
 if not FormContasPagar.Verifica_Campos_Em_Branco then
 begin
  abort;
 end;
  FormContasPagar.calcularValorPago;

 if FormContasPagar.ValorAbatimento = true then
    exit;


 if (FormContasPagar.verificaDataPagamento =  true) and
    (FormContasPagar.DBEdit_VR_RCB.Enabled =  true) then
    begin
    ShowMessage('Os Valores, Pagamento,juros e Abatimento/desconto'+#13+
                'só podem ficar zerados se não houver data de pagamento !!');
    abort;
    end;

 if (FormContasPagar.cxDBDateEdit_DT_PGT.Text <> '') and
    (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert]) and
    (DMcadastro.CDSContasPagarVR_RCB.AsFloat = 0) then
     begin
     ShowMessage('Valor não pode ficar em branco se houver data de pagamento !!! ');
     abort;
     end;



end;

procedure TDMcadastro.CDSContasReceberBeforePost(DataSet: TDataSet);
begin
if not FormContasReceber.Verifica_Campos_Em_Branco then begin
 abort;
 end;

  if FormContasReceber.ComboBox_ST_DOC.ItemIndex = 0  then
   begin
     dmCadastro.CDSContasReceberST_DOC.AsString := 'N';
   end;
  if FormContasReceber.ComboBox_ST_DOC.ItemIndex = 1  then
   begin
     dmCadastro.CDSContasReceberST_DOC.AsString := 'P';
   end;
  if FormContasReceber.ComboBox_ST_DOC.ItemIndex = 2  then
   begin
     dmCadastro.CDSContasReceberST_DOC.AsString := 'D';
   end;


end;

procedure TDMcadastro.CDSContasReceberNO_DOCGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var NDOC : String;
begin
 NDOc := RetZero(FormContasReceber.DBEdit_NO_DOC.Text,9);


end;

procedure TDMcadastro.CDSContasReceberSN_NEGGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString = 'N' then
    Text := 'NAO';

  if Sender.AsString = 'S' then
    Text := 'SIM';
end;

procedure TDMcadastro.CDSContasReceberST_DOCGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if Sender.AsString = 'N' then
    Text := 'NORMAL';

 if Sender.AsString = 'P' then
    Text := 'PARCIAL';

 if Sender.AsString = 'D' then
    Text := 'DESCONTADO';
end;

procedure TDMcadastro.CDSContasReceberTP_DOCGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if Sender.AsString = 'D' then
    Text := 'DUPLICATA';
end;

procedure TDMcadastro.CDSContasReceberTP_JURGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if Sender.AsString = 'S' then
    Text := 'SIMPLES';

  if Sender.AsString = 'C' then
    Text := 'COMPOSTO';
end;

procedure TDMcadastro.CDSCoresBeforePost(DataSet: TDataSet);
begin
if not FormCores.Verifica_Campos_Em_Branco then begin
 abort;
 end;
end;

procedure TDMcadastro.CDSEmbalagemBeforePost(DataSet: TDataSet);
begin
if not FormEmbalagem.Verifica_Campos_Em_Branco then begin
 abort;
 end;
end;

procedure TDMcadastro.CDSEmpresaBeforePost(DataSet: TDataSet);
begin

    if  NO_CPF_CNT = false then
        abort;

    if  NO_CNP_CPF =  false then
        abort;

    if NO_CNP_CNT =  false then
       abort;

end;

procedure TDMcadastro.CDSEmpresaNO_CNP_CPFGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin

  if DMcadastro.CDSEmpresa.State in [dsEdit, dsInsert,dsBrowse] then
 begin
  Text := AnsiReplaceStr(Sender.AsString,'.','');
  Text := AnsiReplaceStr(text,'-','');
  Text := AnsiReplaceStr(text,'/','');
 end;

 if  Length(text) = 11 then
  begin
  Text := FormatMaskText('000.000.000-00;0', text); //sender.asstring
  exit;
  end;
  if Length(text) = 14 then
   begin
   Text := FormatMaskText('00.000.000/0000-00;0', text); // sender.asstring
   exit;
   end;
end;

procedure TDMcadastro.CDSEmpresaSN_CLI_ATLGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if Sender.AsString = 'S' then
    Text := 'SIM';

  if Sender.AsString = 'N' then
    Text := 'NÃO';
end;

procedure TDMcadastro.CDSFornecedorBeforePost(DataSet: TDataSet);
begin

if Length(DMcadastro.CDSFornecedor.FieldByName('NO_CNP_CPF').AsString) = 11 then
  BEGIN
    FormFornecedor.ACBrValidador1.Documento := DMcadastro.cdsfornecedor.FieldByName('NO_CNP_CPF').AsString;
    FormFornecedor.ACBrValidador1.TipoDocto := docCPF;

    if NOT FormFornecedor.ACBrValidador1.Validar then
    begin
      showmessage('CPF Inválido !!');
      formfornecedor.DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end
    else
      //DMcadastro.CDSFornecedor.FieldByName('NO_CNP_CPF').EditMask :='000.000.000-00;0';
  end
  else

  if Length(DMcadastro.CDSFornecedor.FieldByName('NO_CNP_CPF').AsString) = 14 then
  BEGIN
    formfornecedor.ACBrValidador1.Documento := DMcadastro.CDSFornecedor.FieldByName('NO_CNP_CPF').AsString;
    formfornecedor.ACBrValidador1.TipoDocto := docCNPJ;

    if NOT FormFornecedor.ACBrValidador1.Validar then
    begin
      showmessage('CNPJ Inválido !!');
      FormFornecedor.DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end;
  end;

  if not(length(DMcadastro.CDSFornecedor.FieldByName('NO_CNP_CPF').AsString) = 14)
  and not (length(DMcadastro.CDSFornecedor.FieldByName('NO_CNP_CPF').AsString) = 11)    then
        begin
         ShowMessage('CNPJ ou CPF Inválido!!');
         FormFornecedor.DBEdit_NO_CNP_CPF.SetFocus;
         abort;
        end;

 FormFornecedor.consultaCPFExistente;

if not Verifica_Campos_Em_Branco then
abort;
end;


procedure TDMcadastro.CDSFornecedorNO_CNP_CPFGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DMcadastro.CDSFornecedor.State in [dsEdit, dsInsert,dsBrowse] then
 begin
  Text := AnsiReplaceStr(Sender.AsString,'.','');
  Text := AnsiReplaceStr(text,'-','');
  Text := AnsiReplaceStr(text,'/','');
 end;

 if  Length(text) = 11 then
  begin
  Text := FormatMaskText('000.000.000-00;0', text); //sender.asstring
  exit;
  end;
  if Length(text) = 14 then
   begin
   Text := FormatMaskText('00.000.000/0000-00;0', text); // sender.asstring
   exit;
   end;
end;

procedure TDMcadastro.CDSFuncionarioBeforePost(DataSet: TDataSet);
begin
  if not FormFuncionario.Verifica_Campos_Em_Branco then begin
  abort;
 end;
end;

procedure TDMcadastro.CDSGeneroItemBeforePost(DataSet: TDataSet);
begin
 if not FormGeneroItem.Verifica_Campos_Em_Branco then
  abort;
end;

procedure TDMcadastro.CDSGruMetaAfterInsert(DataSet: TDataSet);
var q : tsqlquery;
begin
   try
   q :=  TSQLQuery.Create(nil);
   q.SQLConnection :=  DMcadastro.SQLConnection1;
   q.SQL.Clear;
   q.SQL.Add('select gen_id(gen_db_gru_meta_id,1) from rdb$database');
   q.open;
   finally
    if FormMetaVenda <> nil then
     begin
       DMcadastro.CDSGruMetaID_VENDA_META.AsInteger := DMcadastro.CDSVendaMetaID.AsInteger;
       DMcadastro.CDSGruMetaID.AsInteger := q.FieldByName('GEN_ID').AsInteger;
       q.Free;
     end;

   end;


end;


procedure TDMcadastro.CDSPaisesNM_PAIGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if not sender.IsNull  then
    Text := CDSPaises.FieldByName('CD_PAI').AsString + ' - ' +Sender.AsString
end;

procedure TDMcadastro.CDSPDTTBTAfterInsert(DataSet: TDataSet);
var Vid: integer;
begin
    FormCadProduto.DSPDTTBT.DataSet.Open;
 if FormCadProduto.DSPDTTBT.DataSet.State in[dsInsert]
  then begin
         WITH FormCadProduto.SP_GEN_PDT do
          begin
           Prepared := true;
           ExecProc;
           Prepared := false;
           Vid := ParamByName('ID').AsInteger;
           close;
          end;
       FormCadProduto.DSPDTTBT.DataSet.FieldByName('ID').AsInteger := Vid;
       DMcadastro.CDSPDTTBTAL_ICM.AsFloat   := 0;
       DMcadastro.CDSPDTTBTAL_FECOP.AsFloat := 0;
       DMcadastro.CDSPDTTBTID_PDT.AsInteger := DMcadastro.CDSProdutID.AsInteger;
       end;
end;

procedure TDMcadastro.CDSPDTTBTBeforePost(DataSet: TDataSet);
begin
DMcadastro.CDSPDTTBTCD_USU.AsString :=  inttostr(empresa) + ' ' + user + ' ' + DateToStr(now);

if not FormCadProduto.Verifica_PDTTBT then
       abort;
end;

procedure TDMcadastro.CDSPDTTBTUF_ORGGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
  var v1 : string;
      I,index : Integer;
 begin
   for I := 0 to  FormCadProduto.CB_UF_ORG.Items.Count do // estados com descrição completo
    begin
    FormCadProduto.CB_UF_ORG.ItemIndex := I;
    if copy(FormCadProduto.CB_UF_ORG.Text,1,2) = DMcadastro.CDSPDTTBTUF_ORG.AsString then
       begin
       text := FormCadProduto.CB_UF_ORG.Text;
       end;
     end;
 end;

procedure TDMcadastro.CDSPLNPGTAfterEdit(DataSet: TDataSet);
begin
AlimentaCodPlanoPagEdit;
end;

procedure TDMcadastro.CDSPLNPGTBeforePost(DataSet: TDataSet);
begin
 AlimentaCodPlanoPag;
end;

procedure TDMcadastro.CDSProdutAfterEdit(DataSet: TDataSet);
begin
// rotinas de trazer as descrições dos combobox
//tipo_item;
end;

procedure TDMcadastro.CDSProdutAfterInsert(DataSet: TDataSet);
var
  I: Integer;
begin

  for I := 0 to DMcadastro.CDSProdut.FieldCount - 1 do
   begin
      if DMcadastro.CDSProdut.Fields[I] is TNumericField  then
         DMcadastro.CDSProdut.Fields[i].Value := 0;
   end;

 DMcadastro.CDSProdutDT_CAD.AsDateTime := date;
 DMcadastro.CDSProdutST_PDT.AsString := 'A';
 DMcadastro.CDSProdutSN_CTL_ETQ.AsString := 'S';
 DMcadastro.CDSProdutSN_TAB_PRC.AsString := 'S';
 DMcadastro.CDSProdutSN_IND.AsString     := 'N';
 DMcadastro.CDSProdutSN_FAT_CVS.AsString := 'S';
 DMcadastro.CDSProdutSN_CPL.AsString := 'N';

end;

procedure TDMcadastro.CDSProdutBeforePost(DataSet: TDataSet);
begin
 if FormCadProduto.Verifica_CD_PDT =  false then
     begin
      FormCadProduto.DBEdit_CD_PDT.Clear;
      ShowMessage('Já Existe produto com esse código / código em branco');
      abort;
     end;


 FormCadProduto.gravarCST;
 FormCadProduto.gravarCST_CMP;
end;

procedure TDMcadastro.CDSProdutCD_CST_IPEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
    var v1 : string;
        I,index : Integer;
  begin
  if DMcadastro.CDSProdut.State in [dsEdit] then
   for I := 0 to  FormCadProduto.CB_CD_CST_IPE.Items.Count do // TP_ITE
    begin
    FormCadProduto.CB_CD_CST_IPE.ItemIndex := I;
    if copy(FormCadProduto.CB_CD_CST_IPE.Text,1,2) = DMcadastro.CDSProdutCD_CST_IPE.AsString then
       begin
       text := FormCadProduto.CB_CD_CST_IPE.Text;
       end;
     end;
end;

procedure TDMcadastro.CDSProdutCD_CST_IPSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
  var v1 : string;
      I,index : Integer;
 begin
  if DMcadastro.CDSProdut.State in [dsEdit] then
   for I := 0 to  FormCadProduto.CB_CD_CST_IPS.Items.Count do // TP_ITE
    begin
    FormCadProduto.CB_CD_CST_IPS.ItemIndex := I;
    if copy(FormCadProduto.CB_CD_CST_IPS.Text,1,2) = DMcadastro.CDSProdutCD_CST_IPS.AsString then
       begin
       text := FormCadProduto.CB_CD_CST_IPS.Text;
       end;
     end;
 end;


procedure TDMcadastro.CDSProdutCD_GEN_ITEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);

  var v1 : string;
      I,index : Integer;
 begin
   if DMcadastro.CDSProdut.State in [dsEdit] then
   for I := 0 to  FormCadProduto.CB_CD_GEN_ITE.Items.Count do // TP_ITE
    begin
    FormCadProduto.CB_CD_GEN_ITE.ItemIndex := I;
    if copy(FormCadProduto.CB_CD_GEN_ITE.Text,1,2) = DMcadastro.CDSProdutCD_GEN_ITE.AsString then
       begin
       text := FormCadProduto.CB_CD_GEN_ITE.Text;
       end;
     end;
 end;

procedure TDMcadastro.CDSProdutSN_CPLGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
if DMcadastro.CDSProdutSN_CPL.AsString = 'S' then
   begin
   text := 'SIM';
   end else
   text := 'NÃO';
end;

procedure TDMcadastro.CDSProdutSN_CTL_ETQGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DMcadastro.CDSProdutSN_CTL_ETQ.AsString = 'S' then
     text := 'SIM';
  if DMcadastro.CDSProdutSN_CTL_ETQ.AsString = 'N' then
     text := 'NÃO';


end;

procedure TDMcadastro.CDSProdutSN_FAT_CVSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if DMcadastro.CDSProdutSN_FAT_CVS.AsString = 'S' then
    Text :=  'SIM';

 if DMcadastro.CDSProdutSN_FAT_CVS.AsString = 'N' then
    Text :=  'NÃO';
end;

procedure TDMcadastro.CDSProdutSN_INDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DMcadastro.CDSProdutSN_IND.AsString = 'S' then
   Text :=  'SIM';

  if DMcadastro.CDSProdutSN_IND.AsString = 'N' then
   Text :=  'NÃO';
end;

procedure TDMcadastro.CDSProdutSN_TAB_PRCGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DMcadastro.CDSProdutSN_TAB_PRC.AsString = 'S' then
    Text :=  'SIM';

 if DMcadastro.CDSProdutSN_TAB_PRC.AsString = 'N' then
    Text :=  'NÃO';
end;

procedure TDMcadastro.CDSProdutST_PDTGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DMcadastro.CDSProdutST_PDT.AsString = 'A' then
     text := 'Ativado';
  if DMcadastro.CDSProdutST_PDT.AsString = 'D' then
     text := 'Desativado';

end;

procedure TDMcadastro.CDSProdutST_RVDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
   if CDSProdutST_RVD.AsString = 'S' then
      begin
       Text := 'SIM';
      end else
       Text := 'NÃO';



end;

procedure TDMcadastro.CDSProdutTP_EPF_PDTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
 var v1 : string;
      I,index : Integer;
  begin
    for I := 0 to  FormCadProduto.CB_TP_EPF_PDT.Items.Count do // TP_ITE
    begin
    FormCadProduto.CB_TP_EPF_PDT.ItemIndex := I;
    if copy(FormCadProduto.CB_TP_EPF_PDT.Text,1,1) = DMcadastro.CDSProdutTP_EPF_PDT.AsString then
       begin
       text := FormCadProduto.CB_TP_EPF_PDT.Text;
       end;
     end;
  end;

procedure TDMcadastro.CDSProdutTP_ITEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
  var v1 : string;
      I,index : Integer;
  begin
   if DMcadastro.CDSProdut.State in [dsEdit] then
   begin
   for I := 0 to  FormCadProduto.CB_CD_CST.Items.Count do // TP_ITE
    begin
    FormCadProduto.CB_TP_ITE.ItemIndex := I;
    if copy(FormCadProduto.CB_TP_ITE.Text,1,2) = DMcadastro.CDSProdutTP_ITE.AsString then
       begin
       text := FormCadProduto.CB_TP_ITE.Text;
       end;
     end;
   end;
  end;



procedure TDMcadastro.CDSLocalCobrancaNM_LOC_COBGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
if not sender.IsNull  then
      Text := CDSLocalCobranca.FieldByName('CD_LOC_COB').AsString + ' - ' + Sender.AsString
end;

procedure TDMcadastro.CDSNbmBeforePost(DataSet: TDataSet);
begin
if not FormNBM.Verifica_Campos_Em_Branco then
abort;
end;

procedure TDMcadastro.CDSnbmDS_NBMGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
text :=  sender.AsString;
end;

procedure TDMcadastro.CDSObsNTFDS_OBSGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
 text := Sender.AsString;
end;

procedure TDMcadastro.CDSPaisesBeforePost(DataSet: TDataSet);
begin
 if not FormPaises.Verifica_Campos_Em_Branco then begin
 abort;
 end;
end;



procedure TDMcadastro.CDSRepresentanteBeforePost(DataSet: TDataSet);
begin
 if Length(DMcadastro.CDSRepresentante.FieldByName('NO_CNP_CPF').AsString) = 11 then
  BEGIN
    FormRepresentante.ACBrValidador1.Documento := DMcadastro.CDSRepresentante.FieldByName('NO_CNP_CPF').AsString;
    FormRepresentante.ACBrValidador1.TipoDocto := docCPF;

    if NOT  FormRepresentante.ACBrValidador1.Validar then
    begin
      showmessage('CPF Inválido !!');
       FormRepresentante.DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end;
  end
  else
  if Length(DMcadastro.CDSRepresentante.FieldByName('NO_CNP_CPF').AsString) = 14 then
  BEGIN
     FormRepresentante.ACBrValidador1.Documento :=  DMcadastro.CDSRepresentante.FieldByName('NO_CNP_CPF').AsString;
     FormRepresentante.ACBrValidador1.TipoDocto := docCNPJ;

    if NOT FormRepresentante.ACBrValidador1.Validar then
    begin
      showmessage('CNPJ Inválido !!');
      FormRepresentante.DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end;
  end;

   if not FormRepresentante.Verifica_Campos_Em_Branco then
      abort;

end;

procedure TDMcadastro.CDSRepresentanteNO_CNP_CPFGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if DMcadastro.CDSrepresentante.State in [dsEdit, dsInsert] then
 begin
  Text := AnsiReplaceStr(Sender.AsString,'.','');
  Text := AnsiReplaceStr(text,'-','');
  Text := AnsiReplaceStr(text,'/','');
 end;


 if  Length(text) = 11 then
  begin
  Text := FormatMaskText('###.###.###-##;0', text);  // sender.asstring
  exit;
  end else
  if Length(text) = 14 then
  Text := FormatMaskText('##.###.###/####-##;0', text); // sender.asstring

end;

procedure TDMcadastro.CDSRotasBeforePost(DataSet: TDataSet);
begin
 if DMcadastro.CDSVenRotas.State in [dsEdit,dsInsert] then
    begin
      ShowMessage('Favor gravar ou cancelar o cadastro das cidades antes de gravar a rota !!');
      abort;
    end;
end;

procedure TDMcadastro.CDSSetorBeforePost(DataSet: TDataSet);
begin
 if not FormCadSetor.Verifica_Campos_Em_Branco then begin
 abort;
 end;
end;

procedure TDMcadastro.CDSUFederativaBeforePost(DataSet: TDataSet);
begin
  if not FormUnidadeFederativa.Verifica_Campos_Em_Branco then begin
 abort;
 end;
end;

procedure TDMcadastro.CDSUnidadePDTBeforePost(DataSet: TDataSet);
begin
if not FormUnidadeProduto.Verifica_Campos_Em_Branco then
abort;
end;

procedure TDMcadastro.CDSUsuariosBeforePost(DataSet: TDataSet);
begin
   if not  Verifica_Campos_Em_Branco then
   abort;

  if formusuario.EditConfirmaSenha.Text <> formusuario.DBEditDS_SNH.Text then
   begin
    ShowMessage('As senhas nao sao iguais');
    formusuario.EditConfirmaSenha.SetFocus;
    abort;
   end;
  formusuario.tabconsulta.TabVisible := false;
  formusuario.tabacesso.TabVisible   := False;
  formusuario.tabcadastro.TabVisible := False;
end;


procedure TDMcadastro.CDSVendedorBeforePost(DataSet: TDataSet);
begin
 if Length(DMcadastro.CDSVendedor.FieldByName('NO_CNP_CPF').AsString) = 11 then
  BEGIN
    FormVendedor.ACBrValidador1.Documento := DMcadastro.CDSVendedor.FieldByName('NO_CNP_CPF').AsString;
    FormVendedor.ACBrValidador1.TipoDocto := docCPF;

    if NOT FormVendedor.ACBrValidador1.Validar then
    begin
      showmessage('CPF Inválido !!');
      FormVendedor.DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end
    else
  end
  else
  if Length(DMcadastro.CDSVendedor.FieldByName('NO_CNP_CPF').AsString) = 14 then
  BEGIN
    FormVendedor.ACBrValidador1.Documento := DMcadastro.CDSVendedor.FieldByName('NO_CNP_CPF').AsString;
    FormVendedor.ACBrValidador1.TipoDocto := docCNPJ;

    if NOT FormVendedor.ACBrValidador1.Validar then
    begin
      showmessage('CNPJ Inválido !!');
      FormVendedor.DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end;
  end;

  if not(length(DMcadastro.CDSVendedor.FieldByName('NO_CNP_CPF').AsString) = 14)
  and not (length(DMcadastro.CDSVendedor.FieldByName('NO_CNP_CPF').AsString) = 11)    then
        begin
         ShowMessage('Favor preencher o CNPJ ou CPF corretamente !!');
         FormVendedor.DBEdit_NO_CNP_CPF.SetFocus;
         abort;
        end;


   FormVendedor.CK_SN_CLI;
   FormVendedor.CK_SN_PDT;
   FormVendedor.CK_SN_OCM;
   FormVendedor.CK_SN_PED;
   FormVendedor.SN_DIV_FIN;

if not FormVendedor.Verifica_Campos_Em_Branco then
abort;

    if (FormVendedor.DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
    if (FormVendedor.EdCodbanco.Text <> '')   then
  begin
     FormVendedor.Dscobranca.Enabled := true;
    if not FormVendedor.Dscobranca.DataSet.Locate('CD_LOC_COB',FormVendedor.EdCodbanco.Text,[]) then
        begin
        FormVendedor.EdCodbanco.Clear;
        FormVendedor.Dscobranca.Enabled := false;
        FormVendedor.EdCodbanco.SetFocus;
        abort;
        end
        else
        FormVendedor.dspadrao.DataSet.FieldByName('id_banco').AsInteger := DMcadastro.CDSLocalCobrancaID.AsInteger;
  end else begin
     FormVendedor.dspadrao.DataSet.FieldByName('id_banco').Clear;
     FormVendedor.Dscobranca.Enabled := false;
  end;


  if FormVendedor.DSpadrao.DataSet.State in [dsEdit] then
   TClientDataSet(FormVendedor.DsVendedorMetas.DataSet).ApplyUpdates(0);






end;

procedure TDMcadastro.CDSVendedorNO_CNP_CPFGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if DMcadastro.CDSVendedor.State in [dsEdit, dsInsert] then
 begin
  Text := AnsiReplaceStr(Sender.AsString,'.','');
  Text := AnsiReplaceStr(text,'-','');
  Text := AnsiReplaceStr(text,'/','');
 end;


 if  Length(text) = 11 then
  begin
  Text := FormatMaskText('###.###.###-##;0', text);  // sender.asstring
  exit;
  end else
  if Length(text) = 14 then
  Text := FormatMaskText('##.###.###/####-##;0', text); // sender.asstring
end;

procedure TDMcadastro.CDSVendedorNO_FONValidate(Sender: TField);
begin
try
 ;
except
 ShowMessage('telefone invalido!');
 abort;
end;
end;

procedure TDMcadastro.CDSVendedor_MetasTIPOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if CDSVendedor_Metas.FieldByName('tipo').AsString = 'K' then
    Text := 'KG';

  if CDSVendedor_Metas.FieldByName('tipo').AsString = 'R' then
    Text := 'R$';

    if CDSVendedor_Metas.FieldByName('tipo').AsString = 'M' then
    Text := 'Margem';
end;

procedure TDMcadastro.CDSVenRotasAfterInsert(DataSet: TDataSet);
var  q : tsqlquery;
begin
  try
    q := tsqlquery.Create(nil);
    q.SQLConnection :=  DMcadastro.SQLConnection1;
    q.SQL.Clear;
    q.SQL.Add('select gen_id(GEN_DB_ROTCID_ID,1) from rdb$database');
    q.Open;

    DMcadastro.CDSVenRotasID.AsInteger := q.FieldByName('Gen_id').AsInteger;
    finally
    q.Free;
    end;
end;

procedure TDMcadastro.CDSVenRotasBeforePost(DataSet: TDataSet);
begin
  if  FormCadRotas.DsCidades.DataSet.locate('nm_cid',FormCadRotas.CB_CIDADES.Text,[]) then
      DMcadastro.CDSVenRotasID_CIDADE.AsInteger := FormCadRotas.DsCidades.DataSet.FieldByName('id').AsInteger;
      DMcadastro.CDSVenRotasID_ROTAS.AsInteger  := DMcadastro.CDSRotasID.AsInteger;
 //DMcadastro.CDSVenRotasCD_USU.AsString     := Format('%.3d',[empresa]) + ' ' +  user + ' ' + DateToStr(now);




 // ShowMessage(DsCidades.DataSet.FieldByName('nm_cid').AsString + DsCidades.DataSet.FieldByName('UF_cid').AsString );


end;

procedure TDMcadastro.Historico_ALT_TPC;
var Vid: integer;
    q : tsqlquery;
begin
    q :=  TSQLQuery.Create(nil);
    q.SQLConnection :=  DMcadastro.SQLConnection1;
    q.SQL.Add('select first(1) *   from db_htr_cli where db_htr_cli.id_cliente =:pCliente order by id desc');
    q.ParamByName('pCLiente').AsInteger :=  CDSClientes.FieldByName('id').AsInteger;
    q.Open;
    DMcadastro.CDS_Historico_ALT.close;
    SQL_Historico_ALT.ParamByName('pcliente').AsInteger := CDSClientes.FieldByName('id').AsInteger;
    DMcadastro.CDS_Historico_ALT.Open;
    if q.FieldByName('id').AsInteger >0 then
     begin
     if q.FieldByName('NM_ALT_TPC').AsString[1] <> FormClientes.DB_CB_Consumidor.Text[1]  then // gravando no historico a informação do tipo de cliente [consumidor final/revendedor]
       begin
       try
       if DMcadastro.CDS_Historico_ALT.State in[dsBrowse] then begin
          WITH FormClientes.SP_GEN_HISTORICO do
          begin
          Prepared := true;
          ExecProc;
          Prepared := false;
          Vid := ParamByName('ID').AsInteger;
          close;
         end;
       CDS_Historico_ALT.Insert;
       CDS_Historico_ALT.FieldByName('ID').AsInteger := Vid;
       CDS_Historico_ALT.FieldByName('id_cliente').AsInteger  := CDSClientes.FieldByName('id').AsInteger;
       CDS_Historico_ALT.FieldByName('DT_ALT_TPC').AsDateTime := now;
       CDS_Historico_ALT.FieldByName('NM_ALT_TPC').AsString   := FormClientes.DB_CB_Consumidor.Text;
       CDS_Historico_ALT.FieldByName('CD_USU_TPC').AsString   := idUsuario + ' ' + user + ' ' + inttostr(empresa) +' ' + nm_empresa;
       CDS_Historico_ALT.ApplyUpdates(0);
       end;
        finally
        ShowMessage('Tipo de consumidor foi alterado para ' + FormClientes.DB_CB_Consumidor.Text + ' Estaremos gravando o usuário e data da alteração !!!  Em caso de duvida favor consultar gerente fiscal. '  );
       end;
      end;
     end;

     if q.FieldByName('id').AsInteger <=0 then
        begin
          try
             DMcadastro.CDS_Historico_ALT.close;
             SQL_Historico_ALT.ParamByName('pcliente').AsInteger := CDSClientes.FieldByName('id').AsInteger;
             DMcadastro.CDS_Historico_ALT.Open;
           if DMcadastro.CDS_Historico_ALT.State in[dsBrowse] then begin
               WITH FormClientes.SP_GEN_HISTORICO do
                 begin
                  Prepared := true;
                  ExecProc;
                  Prepared := false;
                  Vid := ParamByName('ID').AsInteger;
                  close;
                 end;
              CDS_Historico_ALT.Insert;
              CDS_Historico_ALT.FieldByName('ID').AsInteger := Vid;
              CDS_Historico_ALT.FieldByName('id_cliente').AsInteger  := CDSClientes.FieldByName('id').AsInteger;
              CDS_Historico_ALT.FieldByName('DT_ALT_TPC').AsDateTime := now;
              CDS_Historico_ALT.FieldByName('NM_ALT_TPC').AsString   := FormClientes.DB_CB_Consumidor.Text;
              CDS_Historico_ALT.FieldByName('CD_USU_TPC').AsString   := idUsuario + ' ' + user + ' ' + inttostr(empresa) +' ' + nm_empresa;
              CDS_Historico_ALT.ApplyUpdates(0);
           end;

            finally
            ShowMessage('Tipo de consumidor foi alterado para ' + FormClientes.DB_CB_Consumidor.Text + ' estaremos gravando o usuário e data da alteração !!! em caso de duvida favor consultar gerente fiscal '  );
          end;
         q.Free;
         DMcadastro.CDS_Historico_ALT.close;
        end;
end;

procedure TDMcadastro.SQLConnection1BeforeConnect(Sender: TObject);
var ArquivoIni : tinifile;
CaminhoBanco : String;
begin
 try
   ArquivoIni := TIniFile.Create(ExtractFilePath(Application.ExeName)+'Config.ini');
   with DMcadastro.SQLConnection1 do
  begin
         SQLConnection1.Params.Values['DataBase'] := arquivoini.readstring('CONFIGURACAO', 'DATABASE', '');//(ExtractFilePath(ParamStr(0) + 'banco.fdb'));
         SQLConnection1.Params.Values['username'] := arquivoini.readstring('CONFIGURACAO', 'USUARIO', '');
         SQLConnection1.Params.Values['Password'] := arquivoini.readstring('CONFIGURACAO', 'SENHA', '');
   end;
except
 ShowMessage('Não foi possivel conectar! ');
 end;
end;

procedure TDMcadastro.tipo_item; // TP_ITE
 var v1 : string;
     I,index : Integer;
 begin
   for I := 0 to  FormCadProduto.CB_CD_CST.Items.Count do // TP_ITE
    begin
    FormCadProduto.CB_TP_ITE.ItemIndex := I;
    if copy(FormCadProduto.CB_TP_ITE.Text,1,2) = DMcadastro.CDSProdutTP_ITE.AsString then
       begin
       index := FormCadProduto.CB_TP_ITE.ItemIndex;
       end;
     end;

 end;

function TDMcadastro.Verifica_Campos_Em_Branco: Boolean;
var
  I: Integer;

begin
  Result := True;
  for I := 0 to cdsfornecedor.FieldCount - 1 do
    if cdsfornecedor.Fields[I].Required then
      if (cdsfornecedor.Fields[I].IsNull) or
        (cdsfornecedor.Fields[I].AsString = '') then
      begin
        beep;
        MessageDlg('Preencha o campo "' + cdsfornecedor.Fields[I]
          .DisplayLabel + '"', mtInformation, [mbOk], 0);
        Result := False;
        cdsfornecedor.Fields[I].FocusControl;
        Break;
      end;
end;

end.
