object DMcadastro: TDMcadastro
  OldCreateOrder = False
  Height = 814
  Width = 1172
  object SQLConnection1: TSQLConnection
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver250.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver250.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False'
      'Database=\\Desktop-gife4jg\c:\Evolucao\banco\EVOLUCAO.FDB')
    BeforeConnect = SQLConnection1BeforeConnect
    Connected = True
    Left = 40
    Top = 744
  end
  object SQLEmpresa: TSQLDataSet
    CommandText = 
      'select'#13#10' db_empresa.*,'#13#10' db_cep.nm_cid,'#13#10' db_cep.nm_bai,'#13#10' db_ce' +
      'p.nm_rua,'#13#10' db_cep.no_cep,'#13#10' db_cep.id as ID_CEP,'#13#10'db_cep.uf_cid' +
      ','#13#10#13#10' CEPContador.nm_cid as NM_CID_CON,'#13#10' CEPContador.nm_bai as ' +
      'NM_BAI_CON,'#13#10' CEPContador.nm_rua as NM_RUA_CON,'#13#10' CEPContador.no' +
      '_cep as NO_CEP_CON,'#13#10' CEPContador.id as ID_CEP_CONT,'#13#10'CEPContado' +
      'r.uf_cid as UF_cid_CONT'#13#10#13#10#13#10#13#10' from db_empresa'#13#10' inner join db_' +
      'cep on db_cep.id = db_empresa.id_cep'#13#10' inner join db_cep as CEPC' +
      'ontador on CEPContador.id = db_empresa.id_cep_contador'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 32
    Top = 16
    object SQLEmpresaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLEmpresaID_CEP: TIntegerField
      FieldName = 'ID_CEP'
      Required = True
    end
    object SQLEmpresaID_CEP_CONTADOR: TIntegerField
      FieldName = 'ID_CEP_CONTADOR'
      Required = True
    end
    object SQLEmpresaNM_EMP: TStringField
      FieldName = 'NM_EMP'
      Required = True
      Size = 45
    end
    object SQLEmpresaDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object SQLEmpresaNM_FAN: TStringField
      FieldName = 'NM_FAN'
      Required = True
      Size = 45
    end
    object SQLEmpresaDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object SQLEmpresaNO_FON: TStringField
      FieldName = 'NO_FON'
      Size = 13
    end
    object SQLEmpresaNO_FAX: TStringField
      FieldName = 'NO_FAX'
      Size = 13
    end
    object SQLEmpresaNO_CEL: TStringField
      FieldName = 'NO_CEL'
      Size = 14
    end
    object SQLEmpresaCD_PAI: TStringField
      DisplayWidth = 4
      FieldName = 'CD_PAI'
      Size = 4
    end
    object SQLEmpresaNO_CNP_CPF: TStringField
      DisplayWidth = 18
      FieldName = 'NO_CNP_CPF'
      Required = True
      Size = 18
    end
    object SQLEmpresaNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Required = True
      Size = 18
    end
    object SQLEmpresaCD_REG_TBT: TStringField
      FieldName = 'CD_REG_TBT'
      Size = 1
    end
    object SQLEmpresaNM_CTT: TStringField
      FieldName = 'NM_CTT'
      Size = 45
    end
    object SQLEmpresaE_MAIL_CTT: TStringField
      FieldName = 'E_MAIL_CTT'
      Size = 45
    end
    object SQLEmpresaHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 45
    end
    object SQLEmpresaDT_SLD_INI: TSQLTimeStampField
      FieldName = 'DT_SLD_INI'
    end
    object SQLEmpresaDT_ULT_INV: TSQLTimeStampField
      FieldName = 'DT_ULT_INV'
    end
    object SQLEmpresaNO_NTF: TStringField
      FieldName = 'NO_NTF'
      Size = 9
    end
    object SQLEmpresaDS_SER_NTF: TStringField
      FieldName = 'DS_SER_NTF'
      Size = 3
    end
    object SQLEmpresaQT_ITE_NTF: TStringField
      FieldName = 'QT_ITE_NTF'
      Size = 2
    end
    object SQLEmpresaNO_NTF_SD: TStringField
      FieldName = 'NO_NTF_SD'
      Size = 9
    end
    object SQLEmpresaNO_CUP_FIS: TStringField
      FieldName = 'NO_CUP_FIS'
      Size = 9
    end
    object SQLEmpresaNO_NT2: TStringField
      FieldName = 'NO_NT2'
      Size = 9
    end
    object SQLEmpresaDS_SER_NT2: TStringField
      FieldName = 'DS_SER_NT2'
      Size = 3
    end
    object SQLEmpresaNO_NTF_SCA: TStringField
      FieldName = 'NO_NTF_SCA'
      Size = 9
    end
    object SQLEmpresaDS_SER_SCA: TStringField
      FieldName = 'DS_SER_SCA'
      Size = 3
    end
    object SQLEmpresaNO_PED: TStringField
      FieldName = 'NO_PED'
      Size = 6
    end
    object SQLEmpresaNO_OCM: TStringField
      FieldName = 'NO_OCM'
      Size = 6
    end
    object SQLEmpresaNO_RQS: TStringField
      FieldName = 'NO_RQS'
      Size = 6
    end
    object SQLEmpresaNO_RQS_FIL: TStringField
      FieldName = 'NO_RQS_FIL'
      Size = 6
    end
    object SQLEmpresaNO_CRD: TStringField
      FieldName = 'NO_CRD'
      Size = 6
    end
    object SQLEmpresaNO_KIT: TStringField
      FieldName = 'NO_KIT'
      Size = 6
    end
    object SQLEmpresaNO_RMN: TStringField
      FieldName = 'NO_RMN'
      Size = 6
    end
    object SQLEmpresaCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 6
    end
    object SQLEmpresaCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 6
    end
    object SQLEmpresaCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 6
    end
    object SQLEmpresaCD_FCN: TStringField
      FieldName = 'CD_FCN'
      Size = 3
    end
    object SQLEmpresaVR_PED_MAX: TSingleField
      FieldName = 'VR_PED_MAX'
    end
    object SQLEmpresaCD_LIB_VND: TStringField
      FieldName = 'CD_LIB_VND'
      Size = 33
    end
    object SQLEmpresaCD_CCL_VND: TStringField
      FieldName = 'CD_CCL_VND'
      Size = 33
    end
    object SQLEmpresaCD_CRT_VND: TStringField
      FieldName = 'CD_CRT_VND'
      Size = 33
    end
    object SQLEmpresaCD_AUX: TStringField
      FieldName = 'CD_AUX'
      Size = 100
    end
    object SQLEmpresaNM_CTD: TStringField
      FieldName = 'NM_CTD'
      Size = 45
    end
    object SQLEmpresaNO_INS_CRC: TStringField
      FieldName = 'NO_INS_CRC'
      Size = 15
    end
    object SQLEmpresaNO_CPF_CTD: TStringField
      FieldName = 'NO_CPF_CTD'
      Size = 11
    end
    object SQLEmpresaNO_CNP_CTD: TStringField
      FieldName = 'NO_CNP_CTD'
      Size = 14
    end
    object SQLEmpresaE_MAIL_CTD: TStringField
      FieldName = 'E_MAIL_CTD'
      Size = 35
    end
    object SQLEmpresaNO_EDR_CTD: TStringField
      FieldName = 'NO_EDR_CTD'
      Size = 10
    end
    object SQLEmpresaDS_CPL_CTD: TStringField
      FieldName = 'DS_CPL_CTD'
      Size = 15
    end
    object SQLEmpresaNO_FON_CTD: TStringField
      FieldName = 'NO_FON_CTD'
      Size = 13
    end
    object SQLEmpresaNO_FAX_CTD: TStringField
      FieldName = 'NO_FAX_CTD'
      Size = 13
    end
    object SQLEmpresaNO_CEL_CTD: TStringField
      FieldName = 'NO_CEL_CTD'
      Size = 13
    end
    object SQLEmpresaUF_CID_CTD: TStringField
      FieldName = 'UF_CID_CTD'
      Size = 2
    end
    object SQLEmpresaCD_PAI_CTD: TStringField
      FieldName = 'CD_PAI_CTD'
      Size = 4
    end
    object SQLEmpresaNO_CEP_CTD: TStringField
      FieldName = 'NO_CEP_CTD'
      Size = 9
    end
    object SQLEmpresaAL_PIS: TSingleField
      FieldName = 'AL_PIS'
    end
    object SQLEmpresaCD_CST_PIS: TStringField
      FieldName = 'CD_CST_PIS'
      Size = 2
    end
    object SQLEmpresaCD_CST_PIE: TStringField
      FieldName = 'CD_CST_PIE'
      Size = 2
    end
    object SQLEmpresaSN_APV_PIS: TStringField
      FieldName = 'SN_APV_PIS'
      Size = 1
    end
    object SQLEmpresaAL_COF: TSingleField
      FieldName = 'AL_COF'
    end
    object SQLEmpresaCD_CST_COS: TStringField
      FieldName = 'CD_CST_COS'
      Size = 2
    end
    object SQLEmpresaCD_CST_COE: TStringField
      FieldName = 'CD_CST_COE'
      Size = 2
    end
    object SQLEmpresaSN_APV_COF: TStringField
      FieldName = 'SN_APV_COF'
      Size = 1
    end
    object SQLEmpresaID_NAT_PJ: TStringField
      FieldName = 'ID_NAT_PJ'
      Size = 2
    end
    object SQLEmpresaID_ATV: TStringField
      FieldName = 'ID_ATV'
      Size = 1
    end
    object SQLEmpresaID_ESC: TStringField
      FieldName = 'ID_ESC'
      Size = 1
    end
    object SQLEmpresaID_SIT_ESP: TStringField
      FieldName = 'ID_SIT_ESP'
      Size = 1
    end
    object SQLEmpresaCD_VER_PCF: TStringField
      FieldName = 'CD_VER_PCF'
      Size = 3
    end
    object SQLEmpresaCD_MOD_FIS: TStringField
      FieldName = 'CD_MOD_FIS'
      Size = 2
    end
    object SQLEmpresaCD_MOD_ECF: TStringField
      FieldName = 'CD_MOD_ECF'
    end
    object SQLEmpresaNO_SER_ECF: TStringField
      FieldName = 'NO_SER_ECF'
    end
    object SQLEmpresaNO_CXA_ECF: TStringField
      FieldName = 'NO_CXA_ECF'
      Size = 3
    end
    object SQLEmpresaCD_BAS_CRD: TStringField
      FieldName = 'CD_BAS_CRD'
      Size = 2
    end
    object SQLEmpresaVR_ALG: TSingleField
      FieldName = 'VR_ALG'
    end
    object SQLEmpresaCD_FOR_ALG: TStringField
      FieldName = 'CD_FOR_ALG'
      Size = 6
    end
    object SQLEmpresaAL_ICM_MKP: TSingleField
      FieldName = 'AL_ICM_MKP'
    end
    object SQLEmpresaAL_PIS_MKP: TSingleField
      FieldName = 'AL_PIS_MKP'
    end
    object SQLEmpresaAL_COF_MKP: TSingleField
      FieldName = 'AL_COF_MKP'
    end
    object SQLEmpresaPC_DPA_MKP: TSingleField
      FieldName = 'PC_DPA_MKP'
    end
    object SQLEmpresaPC_DPF_MKP: TSingleField
      FieldName = 'PC_DPF_MKP'
    end
    object SQLEmpresaPC_DPE_MKP: TSingleField
      FieldName = 'PC_DPE_MKP'
    end
    object SQLEmpresaPC_CMS_MKP: TSingleField
      FieldName = 'PC_CMS_MKP'
    end
    object SQLEmpresaPC_MLC_MKP: TSingleField
      FieldName = 'PC_MLC_MKP'
    end
    object SQLEmpresaAL_ICM_MKC: TSingleField
      FieldName = 'AL_ICM_MKC'
    end
    object SQLEmpresaAL_PIS_MKC: TSingleField
      FieldName = 'AL_PIS_MKC'
    end
    object SQLEmpresaAL_COF_MKC: TSingleField
      FieldName = 'AL_COF_MKC'
    end
    object SQLEmpresaPC_DPA_MKC: TSingleField
      FieldName = 'PC_DPA_MKC'
    end
    object SQLEmpresaPC_DPF_MKC: TSingleField
      FieldName = 'PC_DPF_MKC'
    end
    object SQLEmpresaPC_DPE_MKC: TSingleField
      FieldName = 'PC_DPE_MKC'
    end
    object SQLEmpresaPC_CMS_MKC: TSingleField
      FieldName = 'PC_CMS_MKC'
    end
    object SQLEmpresaPC_MLC_MKC: TSingleField
      FieldName = 'PC_MLC_MKC'
    end
    object SQLEmpresaAL_ICM_M12: TSingleField
      FieldName = 'AL_ICM_M12'
    end
    object SQLEmpresaAL_PIS_M12: TSingleField
      FieldName = 'AL_PIS_M12'
    end
    object SQLEmpresaAL_COF_M12: TSingleField
      FieldName = 'AL_COF_M12'
    end
    object SQLEmpresaPC_DPA_M12: TSingleField
      FieldName = 'PC_DPA_M12'
    end
    object SQLEmpresaPC_DPF_M12: TSingleField
      FieldName = 'PC_DPF_M12'
    end
    object SQLEmpresaPC_DPE_M12: TSingleField
      FieldName = 'PC_DPE_M12'
    end
    object SQLEmpresaPC_CMS_M12: TSingleField
      FieldName = 'PC_CMS_M12'
    end
    object SQLEmpresaPC_MLC_M12: TSingleField
      FieldName = 'PC_MLC_M12'
    end
    object SQLEmpresaDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object SQLEmpresaCD_USU: TStringField
      DisplayWidth = 45
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLEmpresaID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLEmpresaNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Size = 10
    end
    object SQLEmpresaNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLEmpresaNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLEmpresaNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLEmpresaNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLEmpresaID_CEP_1: TIntegerField
      FieldName = 'ID_CEP_1'
      ProviderFlags = []
    end
    object SQLEmpresaNM_CID_CON: TStringField
      FieldName = 'NM_CID_CON'
      ProviderFlags = []
      Size = 45
    end
    object SQLEmpresaNM_BAI_CON: TStringField
      FieldName = 'NM_BAI_CON'
      ProviderFlags = []
      Size = 45
    end
    object SQLEmpresaNM_RUA_CON: TStringField
      FieldName = 'NM_RUA_CON'
      ProviderFlags = []
      Size = 45
    end
    object SQLEmpresaNO_CEP_CON: TStringField
      FieldName = 'NO_CEP_CON'
      ProviderFlags = []
      Size = 9
    end
    object SQLEmpresaID_CEP_CONT: TIntegerField
      FieldName = 'ID_CEP_CONT'
      ProviderFlags = []
    end
    object SQLEmpresaUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLEmpresaUF_CID_CONT: TStringField
      FieldName = 'UF_CID_CONT'
      ProviderFlags = []
      Size = 2
    end
    object SQLEmpresaSN_CLI_ATL: TStringField
      FieldName = 'SN_CLI_ATL'
      Required = True
      Size = 1
    end
    object SQLEmpresaSN_DIG_PDT: TStringField
      FieldName = 'SN_DIG_PDT'
      Required = True
      Size = 3
    end
  end
  object DSPEmpresa: TDataSetProvider
    DataSet = SQLEmpresa
    Left = 32
    Top = 66
  end
  object CDSEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmpresa'
    BeforePost = CDSEmpresaBeforePost
    Left = 32
    Top = 125
    object CDSEmpresaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditFormat = '000'
    end
    object CDSEmpresaID_CEP: TIntegerField
      FieldName = 'ID_CEP'
      Required = True
    end
    object CDSEmpresaID_CEP_CONTADOR: TIntegerField
      FieldName = 'ID_CEP_CONTADOR'
      Required = True
    end
    object CDSEmpresaNM_EMP: TStringField
      FieldName = 'NM_EMP'
      Required = True
      Size = 45
    end
    object CDSEmpresaDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object CDSEmpresaNM_FAN: TStringField
      FieldName = 'NM_FAN'
      Required = True
      Size = 45
    end
    object CDSEmpresaNO_FON: TStringField
      FieldName = 'NO_FON'
      EditMask = '(##)####-####;0;_'
      Size = 13
    end
    object CDSEmpresaNO_FAX: TStringField
      FieldName = 'NO_FAX'
      EditMask = '(##)####-####;0;_'
      Size = 13
    end
    object CDSEmpresaNO_CEL: TStringField
      FieldName = 'NO_CEL'
      EditMask = '(##)#####-####;0;_'
      Size = 14
    end
    object CDSEmpresaCD_PAI: TStringField
      DisplayWidth = 4
      FieldName = 'CD_PAI'
      Size = 4
    end
    object CDSEmpresaNO_CNP_CPF: TStringField
      DisplayWidth = 18
      FieldName = 'NO_CNP_CPF'
      Required = True
      OnGetText = CDSEmpresaNO_CNP_CPFGetText
      EditMask = '##.###.###/####-##;0;_'
      Size = 18
    end
    object CDSEmpresaNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Required = True
      Size = 18
    end
    object CDSEmpresaCD_REG_TBT: TStringField
      FieldName = 'CD_REG_TBT'
      Size = 1
    end
    object CDSEmpresaNM_CTT: TStringField
      FieldName = 'NM_CTT'
      Size = 45
    end
    object CDSEmpresaE_MAIL_CTT: TStringField
      FieldName = 'E_MAIL_CTT'
      Size = 45
    end
    object CDSEmpresaHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 45
    end
    object CDSEmpresaDT_SLD_INI: TSQLTimeStampField
      FieldName = 'DT_SLD_INI'
      EditMask = '00/00/0000;1;_'
    end
    object aaa: TSQLTimeStampField
      FieldName = 'DT_ULT_INV'
      EditMask = '00/00/0000;1;_'
    end
    object CDSEmpresaDS_SER_NTF: TStringField
      FieldName = 'DS_SER_NTF'
      Size = 3
    end
    object CDSEmpresaQT_ITE_NTF: TStringField
      FieldName = 'QT_ITE_NTF'
      Size = 2
    end
    object CDSEmpresaNO_NTF_SD: TStringField
      FieldName = 'NO_NTF_SD'
      Size = 9
    end
    object CDSEmpresaNO_CUP_FIS: TStringField
      FieldName = 'NO_CUP_FIS'
      Size = 9
    end
    object CDSEmpresaNO_NT2: TStringField
      FieldName = 'NO_NT2'
      Size = 9
    end
    object CDSEmpresaDS_SER_NT2: TStringField
      FieldName = 'DS_SER_NT2'
      Size = 3
    end
    object CDSEmpresaNO_NTF_SCA: TStringField
      FieldName = 'NO_NTF_SCA'
      Size = 9
    end
    object CDSEmpresaDS_SER_SCA: TStringField
      FieldName = 'DS_SER_SCA'
      Size = 3
    end
    object CDSEmpresaNO_PED: TStringField
      FieldName = 'NO_PED'
      Size = 6
    end
    object CDSEmpresaNO_OCM: TStringField
      FieldName = 'NO_OCM'
      Size = 6
    end
    object CDSEmpresaNO_RQS: TStringField
      FieldName = 'NO_RQS'
      Size = 6
    end
    object CDSEmpresaNO_RQS_FIL: TStringField
      FieldName = 'NO_RQS_FIL'
      Size = 6
    end
    object CDSEmpresaNO_CRD: TStringField
      FieldName = 'NO_CRD'
      Size = 6
    end
    object CDSEmpresaNO_KIT: TStringField
      FieldName = 'NO_KIT'
      Size = 6
    end
    object CDSEmpresaNO_RMN: TStringField
      FieldName = 'NO_RMN'
      Size = 6
    end
    object CDSEmpresaCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 6
    end
    object CDSEmpresaCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 6
    end
    object CDSEmpresaCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 6
    end
    object CDSEmpresaCD_FCN: TStringField
      FieldName = 'CD_FCN'
      Size = 3
    end
    object CDSEmpresaVR_PED_MAX: TSingleField
      FieldName = 'VR_PED_MAX'
      EditFormat = '#,0.00'
    end
    object CDSEmpresaCD_LIB_VND: TStringField
      FieldName = 'CD_LIB_VND'
      Size = 33
    end
    object CDSEmpresaCD_CCL_VND: TStringField
      FieldName = 'CD_CCL_VND'
      Size = 33
    end
    object CDSEmpresaCD_CRT_VND: TStringField
      FieldName = 'CD_CRT_VND'
      Size = 33
    end
    object CDSEmpresaCD_AUX: TStringField
      FieldName = 'CD_AUX'
      Size = 100
    end
    object CDSEmpresaNM_CTD: TStringField
      FieldName = 'NM_CTD'
      Size = 45
    end
    object CDSEmpresaNO_INS_CRC: TStringField
      FieldName = 'NO_INS_CRC'
      Size = 15
    end
    object CDSEmpresaNO_CPF_CTD: TStringField
      FieldName = 'NO_CPF_CTD'
      EditMask = '###.###.###-##;0;_'
      Size = 11
    end
    object CDSEmpresaNO_CNP_CTD: TStringField
      FieldName = 'NO_CNP_CTD'
      EditMask = '##.###.###/####-##;0;_'
      Size = 14
    end
    object CDSEmpresaE_MAIL_CTD: TStringField
      FieldName = 'E_MAIL_CTD'
      Size = 35
    end
    object CDSEmpresaNO_EDR_CTD: TStringField
      FieldName = 'NO_EDR_CTD'
      Size = 10
    end
    object CDSEmpresaDS_CPL_CTD: TStringField
      FieldName = 'DS_CPL_CTD'
      Size = 15
    end
    object CDSEmpresaNO_FON_CTD: TStringField
      FieldName = 'NO_FON_CTD'
      EditMask = '(##)####-####;0;_'
      Size = 13
    end
    object CDSEmpresaNO_FAX_CTD: TStringField
      FieldName = 'NO_FAX_CTD'
      EditMask = '(##)####-####;0;_'
      Size = 13
    end
    object CDSEmpresaNO_CEL_CTD: TStringField
      FieldName = 'NO_CEL_CTD'
      EditMask = '(##)#####-####;0;_'
      Size = 13
    end
    object CDSEmpresaUF_CID_CTD: TStringField
      FieldName = 'UF_CID_CTD'
      Size = 2
    end
    object CDSEmpresaCD_PAI_CTD: TStringField
      FieldName = 'CD_PAI_CTD'
      Size = 4
    end
    object CDSEmpresaNO_CEP_CTD: TStringField
      FieldName = 'NO_CEP_CTD'
      Size = 9
    end
    object CDSEmpresaCD_CST_PIS: TStringField
      FieldName = 'CD_CST_PIS'
      Size = 2
    end
    object CDSEmpresaCD_CST_PIE: TStringField
      FieldName = 'CD_CST_PIE'
      Size = 2
    end
    object CDSEmpresaSN_APV_PIS: TStringField
      FieldName = 'SN_APV_PIS'
      Size = 1
    end
    object CDSEmpresaAL_COF: TSingleField
      FieldName = 'AL_COF'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaCD_CST_COS: TStringField
      FieldName = 'CD_CST_COS'
      Size = 2
    end
    object CDSEmpresaCD_CST_COE: TStringField
      FieldName = 'CD_CST_COE'
      Size = 2
    end
    object CDSEmpresaSN_APV_COF: TStringField
      FieldName = 'SN_APV_COF'
      Size = 1
    end
    object CDSEmpresaID_NAT_PJ: TStringField
      FieldName = 'ID_NAT_PJ'
      Size = 2
    end
    object CDSEmpresaID_ATV: TStringField
      FieldName = 'ID_ATV'
      Size = 1
    end
    object CDSEmpresaID_ESC: TStringField
      FieldName = 'ID_ESC'
      Size = 1
    end
    object CDSEmpresaID_SIT_ESP: TStringField
      FieldName = 'ID_SIT_ESP'
      Size = 1
    end
    object CDSEmpresaCD_VER_PCF: TStringField
      FieldName = 'CD_VER_PCF'
      Size = 3
    end
    object CDSEmpresaCD_MOD_FIS: TStringField
      FieldName = 'CD_MOD_FIS'
      Size = 2
    end
    object CDSEmpresaCD_MOD_ECF: TStringField
      FieldName = 'CD_MOD_ECF'
    end
    object CDSEmpresaNO_SER_ECF: TStringField
      FieldName = 'NO_SER_ECF'
    end
    object CDSEmpresaNO_CXA_ECF: TStringField
      FieldName = 'NO_CXA_ECF'
      Size = 3
    end
    object CDSEmpresaCD_BAS_CRD: TStringField
      FieldName = 'CD_BAS_CRD'
      Size = 2
    end
    object CDSEmpresaVR_ALG: TSingleField
      FieldName = 'VR_ALG'
      DisplayFormat = 'R$ #,0.00'
    end
    object CDSEmpresaCD_FOR_ALG: TStringField
      FieldName = 'CD_FOR_ALG'
      Size = 6
    end
    object CDSEmpresaAL_ICM_MKP: TSingleField
      FieldName = 'AL_ICM_MKP'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaAL_PIS_MKP: TSingleField
      FieldName = 'AL_PIS_MKP'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaAL_COF_MKP: TSingleField
      FieldName = 'AL_COF_MKP'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaPC_DPA_MKP: TSingleField
      FieldName = 'PC_DPA_MKP'
    end
    object CDSEmpresaPC_DPF_MKP: TSingleField
      FieldName = 'PC_DPF_MKP'
    end
    object CDSEmpresaPC_DPE_MKP: TSingleField
      FieldName = 'PC_DPE_MKP'
    end
    object CDSEmpresaPC_CMS_MKP: TSingleField
      FieldName = 'PC_CMS_MKP'
    end
    object CDSEmpresaPC_MLC_MKP: TSingleField
      FieldName = 'PC_MLC_MKP'
    end
    object CDSEmpresaAL_ICM_MKC: TSingleField
      FieldName = 'AL_ICM_MKC'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaAL_PIS_MKC: TSingleField
      FieldName = 'AL_PIS_MKC'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaAL_COF_MKC: TSingleField
      FieldName = 'AL_COF_MKC'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaPC_DPA_MKC: TSingleField
      FieldName = 'PC_DPA_MKC'
    end
    object CDSEmpresaPC_DPF_MKC: TSingleField
      FieldName = 'PC_DPF_MKC'
    end
    object CDSEmpresaPC_DPE_MKC: TSingleField
      FieldName = 'PC_DPE_MKC'
    end
    object CDSEmpresaPC_CMS_MKC: TSingleField
      FieldName = 'PC_CMS_MKC'
    end
    object CDSEmpresaPC_MLC_MKC: TSingleField
      FieldName = 'PC_MLC_MKC'
    end
    object CDSEmpresaAL_ICM_M12: TSingleField
      FieldName = 'AL_ICM_M12'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaAL_PIS_M12: TSingleField
      FieldName = 'AL_PIS_M12'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaAL_COF_M12: TSingleField
      FieldName = 'AL_COF_M12'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaPC_DPA_M12: TSingleField
      FieldName = 'PC_DPA_M12'
    end
    object CDSEmpresaPC_DPF_M12: TSingleField
      FieldName = 'PC_DPF_M12'
    end
    object CDSEmpresaPC_DPE_M12: TSingleField
      FieldName = 'PC_DPE_M12'
    end
    object CDSEmpresaPC_CMS_M12: TSingleField
      FieldName = 'PC_CMS_M12'
    end
    object CDSEmpresaPC_MLC_M12: TSingleField
      FieldName = 'PC_MLC_M12'
    end
    object CDSEmpresaDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object CDSEmpresaCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSEmpresaID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSEmpresaNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Size = 10
    end
    object CDSEmpresaDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object CDSEmpresaAL_PIS: TSingleField
      FieldName = 'AL_PIS'
      DisplayFormat = '#,0.00 %'
      EditFormat = '#,0.00 %'
    end
    object CDSEmpresaNO_NTF: TStringField
      FieldName = 'NO_NTF'
      Size = 9
    end
    object CDSEmpresaNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSEmpresaNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSEmpresaNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSEmpresaNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSEmpresaID_CEP_1: TIntegerField
      FieldName = 'ID_CEP_1'
      ProviderFlags = []
    end
    object CDSEmpresaNM_CID_CON: TStringField
      FieldName = 'NM_CID_CON'
      ProviderFlags = []
      Size = 45
    end
    object uu: TStringField
      FieldName = 'NM_BAI_CON'
      ProviderFlags = []
      Size = 45
    end
    object CDSEmpresaNM_RUA_CON: TStringField
      FieldName = 'NM_RUA_CON'
      ProviderFlags = []
      Size = 45
    end
    object CDSEmpresaNO_CEP_CON: TStringField
      FieldName = 'NO_CEP_CON'
      ProviderFlags = []
      Size = 9
    end
    object CDSEmpresaID_CEP_CONT: TIntegerField
      FieldName = 'ID_CEP_CONT'
      ProviderFlags = []
    end
    object CDSEmpresaUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSEmpresaUF_CID_CONT: TStringField
      FieldName = 'UF_CID_CONT'
      ProviderFlags = []
      Size = 2
    end
    object CDSEmpresaSN_CLI_ATL: TStringField
      FieldName = 'SN_CLI_ATL'
      Required = True
      OnGetText = CDSEmpresaSN_CLI_ATLGetText
      Size = 1
    end
    object CDSEmpresaSN_DIG_PDT: TStringField
      FieldName = 'SN_DIG_PDT'
      Required = True
      Size = 3
    end
  end
  object CDSUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUsuarios'
    Left = 120
    Top = 125
    object CDSUsuariosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object CDSUsuariosNM_USU: TStringField
      DisplayLabel = 'Nome do Usu'#225'rio'
      FieldName = 'NM_USU'
      Required = True
      Size = 15
    end
    object CDSUsuariosDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object CDSUsuariosST_USU: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 10
      FieldName = 'ST_USU'
      Required = True
      Size = 10
    end
    object CDSUsuariosNM_SET_TRB: TStringField
      DisplayLabel = 'Nome Setor Trabalho'
      FieldName = 'NM_SET_TRB'
      Required = True
      Size = 25
    end
    object CDSUsuariosNM_FNC: TStringField
      DisplayLabel = 'Fun'#231#227'o do Funcion'#225'rio'
      FieldName = 'NM_FNC'
      Required = True
      Size = 25
    end
    object CDSUsuariosNV_ACS: TStringField
      DisplayLabel = 'N'#237'vel Acesso'
      FieldName = 'NV_ACS'
      Required = True
      Size = 1
    end
    object CDSUsuariosID_EMPRESA: TIntegerField
      DisplayLabel = 'Nome da Empresa/Filial'
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object CDSUsuariosTP_IMP: TStringField
      FieldName = 'TP_IMP'
      Size = 10
    end
    object CDSUsuariosDS_SNH: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'DS_SNH'
      Required = True
      Size = 15
    end
    object CDSUsuariosCD_FAM_PDT: TStringField
      FieldName = 'CD_FAM_PDT'
      Size = 50
    end
    object CDSUsuariosTP_ACS_CLI: TStringField
      FieldName = 'TP_ACS_CLI'
      Size = 4
    end
    object CDSUsuariosTP_ACS_FOR: TStringField
      FieldName = 'TP_ACS_FOR'
      Size = 4
    end
    object CDSUsuariosSN_CTL: TStringField
      FieldName = 'SN_CTL'
      Size = 40
    end
    object CDSUsuariosSN_PRC: TStringField
      FieldName = 'SN_PRC'
      Size = 40
    end
    object CDSUsuariosSN_CLI: TStringField
      FieldName = 'SN_CLI'
      Size = 10
    end
    object CDSUsuariosSN_FOR: TStringField
      FieldName = 'SN_FOR'
      Size = 10
    end
    object CDSUsuariosSN_CTR: TStringField
      FieldName = 'SN_CTR'
      Size = 10
    end
    object CDSUsuariosSN_CHQ_PDT: TStringField
      FieldName = 'SN_CHQ_PDT'
      Size = 10
    end
    object CDSUsuariosSN_CHQ_BXD: TStringField
      FieldName = 'SN_CHQ_BXD'
      Size = 10
    end
    object CDSUsuariosSN_CHQ_PDV: TStringField
      FieldName = 'SN_CHQ_PDV'
      Size = 10
    end
    object CDSUsuariosSN_CHQ_DVD: TStringField
      FieldName = 'SN_CHQ_DVD'
      Size = 10
    end
    object CDSUsuariosSN_CHQ_DVB: TStringField
      FieldName = 'SN_CHQ_DVB'
      Size = 10
    end
    object CDSUsuariosSN_CTP: TStringField
      FieldName = 'SN_CTP'
      Size = 10
    end
    object CDSUsuariosSN_PDT: TStringField
      FieldName = 'SN_PDT'
      Size = 10
    end
    object CDSUsuariosSN_ETQ: TStringField
      FieldName = 'SN_ETQ'
      Size = 10
    end
    object CDSUsuariosSN_TAB_PRC: TStringField
      FieldName = 'SN_TAB_PRC'
      Size = 10
    end
    object CDSUsuariosSN_EST: TStringField
      FieldName = 'SN_EST'
      Size = 10
    end
    object CDSUsuariosSN_DIV_FIN: TStringField
      FieldName = 'SN_DIV_FIN'
      Size = 10
    end
    object CDSUsuariosSN_DIV_FIS: TStringField
      FieldName = 'SN_DIV_FIS'
      Size = 10
    end
    object CDSUsuariosSN_FUN: TStringField
      FieldName = 'SN_FUN'
      Size = 10
    end
    object CDSUsuariosSN_VEN: TStringField
      FieldName = 'SN_VEN'
      Size = 10
    end
    object CDSUsuariosSN_REP: TStringField
      FieldName = 'SN_REP'
      Size = 10
    end
    object CDSUsuariosSN_TRN: TStringField
      FieldName = 'SN_TRN'
      Size = 10
    end
    object CDSUsuariosSN_NTF_RDZ: TStringField
      FieldName = 'SN_NTF_RDZ'
      Size = 10
    end
    object CDSUsuariosSN_NTE: TStringField
      FieldName = 'SN_NTE'
      Size = 10
    end
    object CDSUsuariosSN_PED_OCM: TStringField
      FieldName = 'SN_PED_OCM'
      Size = 10
    end
    object CDSUsuariosSN_RQS: TStringField
      FieldName = 'SN_RQS'
      Size = 10
    end
    object CDSUsuariosCD_USU: TStringField
      DisplayWidth = 45
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSUsuariosID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSUsuariosSN_PRC_FAT_EMS_NOTA: TStringField
      FieldName = 'SN_PRC_FAT_EMS_NOTA'
      Size = 1
    end
    object CDSUsuariosSN_PRC_RMS_RET_BANCARIA: TStringField
      FieldName = 'SN_PRC_RMS_RET_BANCARIA'
      Size = 1
    end
    object CDSUsuariosSN_PRC_CONTROLE_CHQ: TStringField
      FieldName = 'SN_PRC_CONTROLE_CHQ'
      Size = 1
    end
    object CDSUsuariosSN_PRC_SINTEGRA: TStringField
      FieldName = 'SN_PRC_SINTEGRA'
      Size = 1
    end
    object CDSUsuariosSN_PRC_LIVROSFISCAIS: TStringField
      FieldName = 'SN_PRC_LIVROSFISCAIS'
      Size = 1
    end
    object CDSUsuariosSN_PRC_LOTE_ORCAMENTOS: TStringField
      FieldName = 'SN_PRC_LOTE_ORCAMENTOS'
      Size = 1
    end
    object CDSUsuariosSN_PRC_CMS_VEND: TStringField
      FieldName = 'SN_PRC_CMS_VEND'
      Size = 1
    end
    object CDSUsuariosCD_USU_INC: TStringField
      FieldName = 'CD_USU_INC'
      Size = 4
    end
  end
  object DSPUsuarios: TDataSetProvider
    DataSet = SQLUsuarios
    Left = 120
    Top = 66
  end
  object SQLUsuarios: TSQLDataSet
    CommandText = 'select * from DB_USUARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 122
    Top = 16
  end
  object SQLCEP: TSQLDataSet
    CommandText = 'select first 200 * from DB_CEP'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 212
    Top = 16
  end
  object DSPCEP: TDataSetProvider
    DataSet = SQLCEP
    Left = 212
    Top = 76
  end
  object CDSCEP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCEP'
    Left = 212
    Top = 136
    object CDSCEPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCEPNO_CEP: TStringField
      FieldName = 'NO_CEP'
      Required = True
      Size = 9
    end
    object CDSCEPNM_RUA: TStringField
      FieldName = 'NM_RUA'
      Required = True
      Size = 45
    end
    object CDSCEPNM_BAI: TStringField
      FieldName = 'NM_BAI'
      Size = 45
    end
    object CDSCEPNM_CID: TStringField
      FieldName = 'NM_CID'
      Required = True
      Size = 45
    end
    object CDSCEPUF_CID: TStringField
      FieldName = 'UF_CID'
      Required = True
      Size = 2
    end
    object CDSCEPCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 4
    end
    object CDSCEPSN_EDR_ATU: TStringField
      FieldName = 'SN_EDR_ATU'
      Size = 1
    end
    object CDSCEPCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 18
    end
    object CDSCEPID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLFornecedor: TSQLDataSet
    CommandText = 
      'SELECT db_fornecedor.*,'#13#10'db_cep.nm_bai,'#13#10'db_cep.nm_cid,'#13#10'db_cep.' +
      'nm_rua,'#13#10'db_cep.no_cep,'#13#10'db_cep.uf_cid'#13#10#13#10'FROM db_fornecedor'#13#10'IN' +
      'NER JOIN db_cep ON db_cep.id = db_fornecedor.id_cep'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 302
    Top = 16
    object SQLFornecedorID: TIntegerField
      FieldName = 'ID'
    end
    object SQLFornecedorNM_FOR: TStringField
      FieldName = 'NM_FOR'
      Required = True
      Size = 45
    end
    object SQLFornecedorST_FOR: TStringField
      FieldName = 'ST_FOR'
      Size = 10
    end
    object SQLFornecedorDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object SQLFornecedorNM_FAN: TStringField
      FieldName = 'NM_FAN'
      Required = True
      Size = 45
    end
    object SQLFornecedorNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Size = 10
    end
    object SQLFornecedorDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object SQLFornecedorNO_FON: TStringField
      FieldName = 'NO_FON'
      Size = 13
    end
    object SQLFornecedorNO_FAX: TStringField
      FieldName = 'NO_FAX'
      Size = 13
    end
    object SQLFornecedorNO_CEL: TStringField
      FieldName = 'NO_CEL'
      Size = 13
    end
    object SQLFornecedorID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object SQLFornecedorCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 4
    end
    object SQLFornecedorNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Required = True
      Size = 18
    end
    object SQLFornecedorNM_CTT: TStringField
      FieldName = 'NM_CTT'
      Size = 45
    end
    object SQLFornecedorE_MAIL_CTT: TStringField
      FieldName = 'E_MAIL_CTT'
      Size = 45
    end
    object SQLFornecedorE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 45
    end
    object SQLFornecedorHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 45
    end
    object SQLFornecedorCD_REP: TStringField
      FieldName = 'CD_REP'
      Size = 3
    end
    object SQLFornecedorNM_CTT_VEN: TStringField
      FieldName = 'NM_CTT_VEN'
      Size = 45
    end
    object SQLFornecedorNO_FON_VEN: TStringField
      FieldName = 'NO_FON_VEN'
      Size = 13
    end
    object SQLFornecedorNO_RAM_VEN: TStringField
      FieldName = 'NO_RAM_VEN'
      Size = 4
    end
    object SQLFornecedorE_MAIL_VEN: TStringField
      FieldName = 'E_MAIL_VEN'
      Size = 45
    end
    object SQLFornecedorNM_CTT_FIN: TStringField
      FieldName = 'NM_CTT_FIN'
      Size = 45
    end
    object SQLFornecedorNO_FON_FIN: TStringField
      FieldName = 'NO_FON_FIN'
      Size = 13
    end
    object SQLFornecedorNO_RAM_FIN: TStringField
      FieldName = 'NO_RAM_FIN'
      Size = 4
    end
    object SQLFornecedorE_MAIL_FIN: TStringField
      FieldName = 'E_MAIL_FIN'
      Size = 45
    end
    object SQLFornecedorVR_MAI_CMP: TSingleField
      FieldName = 'VR_MAI_CMP'
    end
    object SQLFornecedorDT_MAI_CMP: TSQLTimeStampField
      FieldName = 'DT_MAI_CMP'
    end
    object SQLFornecedorDT_ULT_CMP: TSQLTimeStampField
      FieldName = 'DT_ULT_CMP'
    end
    object SQLFornecedorCD_LOC_COB: TStringField
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object SQLFornecedorCD_AGC: TStringField
      FieldName = 'CD_AGC'
      Size = 6
    end
    object SQLFornecedorNO_CTA_COR: TStringField
      FieldName = 'NO_CTA_COR'
      Size = 15
    end
    object SQLFornecedorCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLFornecedorID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLFornecedorID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Required = True
    end
    object SQLFornecedorDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object SQLFornecedorID_REPRESENTANTE: TIntegerField
      FieldName = 'ID_REPRESENTANTE'
      Required = True
    end
    object SQLFornecedorID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object SQLFornecedorNM_LOC_COB: TStringField
      FieldName = 'NM_LOC_COB'
      Size = 25
    end
    object SQLFornecedorNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLFornecedorNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLFornecedorNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLFornecedorNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLFornecedorUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLFornecedorNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      Required = True
      Size = 18
    end
  end
  object DSPFornecedor: TDataSetProvider
    DataSet = SQLFornecedor
    Left = 302
    Top = 76
  end
  object CDSFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFornecedor'
    BeforePost = CDSFornecedorBeforePost
    Left = 302
    Top = 136
    object CDSFornecedorID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      DisplayFormat = '000,000'
    end
    object CDSFornecedorNM_FOR: TStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'NM_FOR'
      Required = True
      Size = 45
    end
    object CDSFornecedorST_FOR: TStringField
      DisplayLabel = 'Status'
      FieldName = 'ST_FOR'
      Size = 10
    end
    object CDSFornecedorDT_CAD: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CAD'
      Required = True
    end
    object CDSFornecedorNM_FAN: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NM_FAN'
      Required = True
      Size = 45
    end
    object CDSFornecedorNO_EDR: TStringField
      DisplayLabel = 'No. Endere'#231'o'
      FieldName = 'NO_EDR'
      Size = 10
    end
    object CDSFornecedorDS_CPL: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'DS_CPL'
      Size = 15
    end
    object CDSFornecedorNO_FON: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'NO_FON'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 13
    end
    object CDSFornecedorNO_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'NO_FAX'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 13
    end
    object CDSFornecedorNO_CEL: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'NO_CEL'
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 13
    end
    object CDSFornecedorID_CEP: TIntegerField
      DisplayLabel = 'Cep'
      FieldName = 'ID_CEP'
    end
    object CDSFornecedorCD_PAI: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'CD_PAI'
      Size = 4
    end
    object CDSFornecedorNO_INS_EST: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'NO_INS_EST'
      Required = True
      Size = 18
    end
    object CDSFornecedorNM_CTT: TStringField
      DisplayLabel = 'Nome Contato'
      FieldName = 'NM_CTT'
      Size = 45
    end
    object CDSFornecedorE_MAIL_CTT: TStringField
      DisplayLabel = 'Email Contato'
      FieldName = 'E_MAIL_CTT'
      Size = 45
    end
    object CDSFornecedorE_MAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'E_MAIL'
      Size = 45
    end
    object CDSFornecedorHOME_PAGE: TStringField
      DisplayLabel = 'Home Page'
      FieldName = 'HOME_PAGE'
      Size = 45
    end
    object CDSFornecedorCD_REP: TStringField
      DisplayLabel = 'C'#243'd. Representante'
      FieldName = 'CD_REP'
      Size = 3
    end
    object CDSFornecedorNM_CTT_VEN: TStringField
      DisplayLabel = 'Nome Contato Venda'
      FieldName = 'NM_CTT_VEN'
      Size = 45
    end
    object CDSFornecedorNO_FON_VEN: TStringField
      DisplayLabel = 'Telefone Vendedor'
      FieldName = 'NO_FON_VEN'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 13
    end
    object CDSFornecedorNO_RAM_VEN: TStringField
      DisplayLabel = 'Ramal'
      FieldName = 'NO_RAM_VEN'
      Size = 4
    end
    object CDSFornecedorE_MAIL_VEN: TStringField
      DisplayLabel = 'E-mail Vendedor'
      FieldName = 'E_MAIL_VEN'
      Size = 45
    end
    object CDSFornecedorNM_CTT_FIN: TStringField
      DisplayLabel = 'Nome Contato Financeiro'
      FieldName = 'NM_CTT_FIN'
      Size = 45
    end
    object CDSFornecedorNO_FON_FIN: TStringField
      DisplayLabel = 'Telefone Contato Financeiro'
      FieldName = 'NO_FON_FIN'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 13
    end
    object CDSFornecedorNO_RAM_FIN: TStringField
      DisplayLabel = 'Ramal'
      FieldName = 'NO_RAM_FIN'
      Size = 4
    end
    object CDSFornecedorE_MAIL_FIN: TStringField
      DisplayLabel = 'Email Financeiro'
      FieldName = 'E_MAIL_FIN'
      Size = 45
    end
    object CDSFornecedorVR_MAI_CMP: TSingleField
      DisplayLabel = 'Valor Maior Compra'
      FieldName = 'VR_MAI_CMP'
    end
    object CDSFornecedorDT_MAI_CMP: TSQLTimeStampField
      DisplayLabel = 'Data Maior Compra'
      FieldName = 'DT_MAI_CMP'
    end
    object CDSFornecedorDT_ULT_CMP: TSQLTimeStampField
      DisplayLabel = 'Data Ultima Compra'
      FieldName = 'DT_ULT_CMP'
    end
    object CDSFornecedorCD_LOC_COB: TStringField
      DisplayLabel = 'C'#243'd. Local Cobran'#231'a'
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object CDSFornecedorCD_AGC: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CD_AGC'
      Size = 6
    end
    object CDSFornecedorNO_CTA_COR: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'NO_CTA_COR'
      Size = 15
    end
    object CDSFornecedorCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSFornecedorID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSFornecedorID_CATEGORIA: TIntegerField
      DisplayLabel = 'C'#243'd. Categoria'
      FieldName = 'ID_CATEGORIA'
      Required = True
    end
    object CDSFornecedorDS_OBS: TBlobField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'DS_OBS'
      Size = 1
    end
    object CDSFornecedorID_REPRESENTANTE: TIntegerField
      DisplayLabel = 'C'#243'd. Representante'
      FieldName = 'ID_REPRESENTANTE'
      Required = True
    end
    object CDSFornecedorID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSFornecedorNM_LOC_COB: TStringField
      FieldName = 'NM_LOC_COB'
      Size = 25
    end
    object CDSFornecedorNM_BAI: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSFornecedorNM_CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSFornecedorNM_RUA: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSFornecedorNO_CEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSFornecedorUF_CID: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSFornecedorNO_CNP_CPF: TStringField
      DisplayLabel = 'CNPJ / CPF'
      FieldName = 'NO_CNP_CPF'
      Required = True
      OnGetText = CDSFornecedorNO_CNP_CPFGetText
      Size = 18
    end
  end
  object SQLCategoria: TSQLDataSet
    CommandText = 'select * from db_categoria'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 392
    Top = 16
  end
  object DSPCategoria: TDataSetProvider
    DataSet = SQLCategoria
    Constraints = False
    Left = 392
    Top = 76
  end
  object CDSCategoria: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCategoria'
    Left = 392
    Top = 136
    object CDSCategoriaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object CDSCategoriaCD_CTG: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CD_CTG'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CDSCategoriaNM_CTG_CLI: TStringField
      DisplayLabel = 'Nome da Categoria!'
      FieldName = 'NM_CTG_CLI'
      Required = True
      Size = 45
    end
    object CDSCategoriaSN_IPI_ICM: TStringField
      DisplayWidth = 3
      FieldName = 'SN_IPI_ICM'
      Size = 3
    end
    object CDSCategoriaCD_USU: TStringField
      DisplayWidth = 45
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSCategoriaID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLFamProduto: TSQLDataSet
    CommandText = 'select * from db_fam_produto'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 785
    Top = 16
    object SQLFamProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLFamProdutoDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object SQLFamProdutoCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object SQLFamProdutoID_VER_ATU: TIntegerField
      FieldName = 'ID_VER_ATU'
    end
    object SQLFamProdutoNM_FAM_PDT: TStringField
      FieldName = 'NM_FAM_PDT'
      Required = True
      Size = 45
    end
  end
  object DSPFamProduto: TDataSetProvider
    DataSet = SQLFamProduto
    Left = 785
    Top = 76
  end
  object CDSFamProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFamProduto'
    Left = 785
    Top = 136
    object CDSFamProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSFamProdutoDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object CDSFamProdutoCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object CDSFamProdutoID_VER_ATU: TIntegerField
      FieldName = 'ID_VER_ATU'
    end
    object CDSFamProdutoNM_FAM_PDT: TStringField
      FieldName = 'NM_FAM_PDT'
      Required = True
      Size = 45
    end
  end
  object SQLRepresentante: TSQLDataSet
    CommandText = 
      'select db_representante.*,'#13#10'db_cep.nm_bai,'#13#10'db_cep.nm_cid,'#13#10'db_c' +
      'ep.nm_rua,'#13#10'db_cep.no_cep,'#13#10'db_cep.uf_cid'#13#10#13#10'from db_representan' +
      'te'#13#10'inner join db_cep on db_cep.id = db_representante.id_cep'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 482
    Top = 16
    object SQLRepresentanteID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLRepresentanteNM_REP: TStringField
      FieldName = 'NM_REP'
      Required = True
      Size = 45
    end
    object SQLRepresentanteST_REP: TStringField
      FieldName = 'ST_REP'
      Size = 10
    end
    object SQLRepresentanteDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object SQLRepresentanteNM_REP_RAZ: TStringField
      FieldName = 'NM_REP_RAZ'
      Required = True
      Size = 45
    end
    object SQLRepresentanteNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      Required = True
      Size = 18
    end
    object SQLRepresentanteNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Required = True
      Size = 18
    end
    object SQLRepresentanteE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 45
    end
    object SQLRepresentanteHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 45
    end
    object SQLRepresentanteCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLRepresentanteID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLRepresentanteNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Required = True
      Size = 4
    end
    object SQLRepresentanteDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object SQLRepresentanteNO_FON: TStringField
      FieldName = 'NO_FON'
      Size = 13
    end
    object SQLRepresentanteNO_FAX: TStringField
      FieldName = 'NO_FAX'
      Size = 13
    end
    object SQLRepresentanteNO_CEL: TStringField
      FieldName = 'NO_CEL'
      Size = 13
    end
    object SQLRepresentanteID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object SQLRepresentanteDS_OBS: TMemoField
      FieldName = 'DS_OBS'
      BlobType = ftMemo
      Size = 1
    end
    object SQLRepresentanteNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLRepresentanteNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLRepresentanteNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLRepresentanteNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLRepresentanteUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
  end
  object DSPRepresentante: TDataSetProvider
    DataSet = SQLRepresentante
    Left = 482
    Top = 76
  end
  object CDSRepresentante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRepresentante'
    BeforePost = CDSRepresentanteBeforePost
    Left = 482
    Top = 136
    object CDSRepresentanteID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000'
    end
    object CDSRepresentanteNM_REP: TStringField
      DisplayLabel = 'Nome do Representante!'
      FieldName = 'NM_REP'
      Required = True
      Size = 45
    end
    object CDSRepresentanteNM_REP_RAZ: TStringField
      DisplayLabel = 'Raz'#227'o Representante'
      FieldName = 'NM_REP_RAZ'
      Required = True
      Size = 45
    end
    object CDSRepresentanteST_REP: TStringField
      FieldName = 'ST_REP'
      Size = 10
    end
    object CDSRepresentanteNO_CNP_CPF: TStringField
      DisplayLabel = 'N'#250'mero CNPJ / CPF!'
      FieldName = 'NO_CNP_CPF'
      Required = True
      OnGetText = CDSRepresentanteNO_CNP_CPFGetText
      Size = 18
    end
    object CDSRepresentanteNO_INS_EST: TStringField
      DisplayLabel = 'N'#250'mero Inscri'#231#227'o Estadual'
      FieldName = 'NO_INS_EST'
      Required = True
      Size = 18
    end
    object CDSRepresentanteDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object CDSRepresentanteE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 45
    end
    object CDSRepresentanteHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 45
    end
    object CDSRepresentanteCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSRepresentanteID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSRepresentanteDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object CDSRepresentanteNO_FON: TStringField
      FieldName = 'NO_FON'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 13
    end
    object CDSRepresentanteNO_FAX: TStringField
      FieldName = 'NO_FAX'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 13
    end
    object CDSRepresentanteNO_CEL: TStringField
      FieldName = 'NO_CEL'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 13
    end
    object CDSRepresentanteID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object CDSRepresentanteDS_OBS: TMemoField
      FieldName = 'DS_OBS'
      BlobType = ftMemo
      Size = 1
    end
    object CDSRepresentanteNO_EDR: TStringField
      DisplayLabel = 'N'#250'mero do Endere'#231'o!'
      FieldName = 'NO_EDR'
      Required = True
      Size = 4
    end
    object CDSRepresentanteNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSRepresentanteNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSRepresentanteNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSRepresentanteNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSRepresentanteUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
  end
  object SQLGruProduto: TSQLDataSet
    CommandText = 
      'select g.*,f.nm_fam_pdt from db_gru_produto G'#13#10'inner join db_fam' +
      '_produto f on f.id = g.id_fam_pdt'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 679
    Top = 16
    object SQLGruProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLGruProdutoNM_GRU_PDT: TStringField
      FieldName = 'NM_GRU_PDT'
      Required = True
      Size = 45
    end
    object SQLGruProdutoID_FAM_PDT: TIntegerField
      FieldName = 'ID_FAM_PDT'
      Required = True
    end
    object SQLGruProdutoDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object SQLGruProdutoCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object SQLGruProdutoID_VER_ATU: TIntegerField
      FieldName = 'ID_VER_ATU'
    end
    object SQLGruProdutoNM_FAM_PDT: TStringField
      FieldName = 'NM_FAM_PDT'
      ProviderFlags = []
      Size = 45
    end
  end
  object DSPGruProduto: TDataSetProvider
    DataSet = SQLGruProduto
    Left = 679
    Top = 76
  end
  object CDSGruProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPGruProduto'
    Left = 679
    Top = 136
    object CDSGruProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSGruProdutoNM_GRU_PDT: TStringField
      FieldName = 'NM_GRU_PDT'
      Required = True
      Size = 45
    end
    object CDSGruProdutoID_FAM_PDT: TIntegerField
      FieldName = 'ID_FAM_PDT'
      Required = True
    end
    object CDSGruProdutoDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object CDSGruProdutoCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object CDSGruProdutoID_VER_ATU: TIntegerField
      FieldName = 'ID_VER_ATU'
    end
    object CDSGruProdutoNM_FAM_PDT: TStringField
      FieldName = 'NM_FAM_PDT'
      ProviderFlags = []
      Size = 45
    end
  end
  object SQLLocalCobranca: TSQLDataSet
    CommandText = 'select * from db_localcobranca'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 581
    Top = 16
  end
  object DSPLocalCobranca: TDataSetProvider
    DataSet = SQLLocalCobranca
    Left = 581
    Top = 76
  end
  object CDSLocalCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPLocalCobranca'
    Left = 581
    Top = 136
    object CDSLocalCobrancaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSLocalCobrancaCD_LOC_COB: TStringField
      DisplayLabel = 'C'#243'digo Local Cobran'#231'a'
      FieldName = 'CD_LOC_COB'
      Required = True
      EditMask = '000'
      Size = 3
    end
    object CDSLocalCobrancaNM_LOC_COB: TStringField
      DisplayLabel = 'Nome Local de Cobran'#231'a'
      FieldName = 'NM_LOC_COB'
      OnGetText = CDSLocalCobrancaNM_LOC_COBGetText
      Size = 15
    end
    object CDSLocalCobrancaTP_LOC_COB: TStringField
      DisplayLabel = 'Tipo Local Cobran'#231'a'
      FieldName = 'TP_LOC_COB'
      Size = 10
    end
    object CDSLocalCobrancaDT_CAD: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CAD'
    end
    object CDSLocalCobrancaNO_FOL_CHQ: TStringField
      DisplayLabel = 'N'#250'mero Folha de Cheque'
      FieldName = 'NO_FOL_CHQ'
      Size = 6
    end
    object CDSLocalCobrancaDIA_LIB: TStringField
      FieldName = 'DIA_LIB'
      Size = 2
    end
    object CDSLocalCobrancaNO_BCO: TStringField
      FieldName = 'NO_BCO'
      Size = 3
    end
    object CDSLocalCobrancaNO_CTA_COR: TStringField
      FieldName = 'NO_CTA_COR'
      Size = 15
    end
    object CDSLocalCobrancaDT_SLD_INI: TSQLTimeStampField
      FieldName = 'DT_SLD_INI'
    end
    object CDSLocalCobrancaVR_SLD_INI: TSingleField
      FieldName = 'VR_SLD_INI'
    end
    object CDSLocalCobrancaVR_SLD_ATU: TSingleField
      FieldName = 'VR_SLD_ATU'
    end
    object CDSLocalCobrancaNO_BCO_COB: TStringField
      FieldName = 'NO_BCO_COB'
      Size = 3
    end
    object CDSLocalCobrancaNO_AGC_COB: TStringField
      FieldName = 'NO_AGC_COB'
      Size = 10
    end
    object CDSLocalCobrancaCD_CIA_CTR: TStringField
      FieldName = 'CD_CIA_CTR'
    end
    object CDSLocalCobrancaID_CIA_CTR: TStringField
      FieldName = 'ID_CIA_CTR'
    end
    object CDSLocalCobrancaCD_CDT: TStringField
      FieldName = 'CD_CDT'
    end
    object CDSLocalCobrancaTP_DOC_COB: TStringField
      FieldName = 'TP_DOC_COB'
      Size = 2
    end
    object CDSLocalCobrancaNO_INS_NUM: TStringField
      FieldName = 'NO_INS_NUM'
      Size = 15
    end
    object CDSLocalCobrancaNO_FNS_NUM: TStringField
      FieldName = 'NO_FNS_NUM'
      Size = 15
    end
    object CDSLocalCobrancaSQ_NOS_NUM: TStringField
      FieldName = 'SQ_NOS_NUM'
      Size = 15
    end
    object CDSLocalCobrancaNO_DIA_PRT: TStringField
      FieldName = 'NO_DIA_PRT'
      Size = 2
    end
    object CDSLocalCobrancaPC_MUL: TSingleField
      FieldName = 'PC_MUL'
    end
    object CDSLocalCobrancaPC_JUR: TSingleField
      FieldName = 'PC_JUR'
    end
    object CDSLocalCobrancaTP_LAY_ARQ: TStringField
      FieldName = 'TP_LAY_ARQ'
      Size = 15
    end
    object CDSLocalCobrancaTP_LAY_BOL: TStringField
      FieldName = 'TP_LAY_BOL'
      Size = 50
    end
    object CDSLocalCobrancaNM_ARQ_CFG: TStringField
      FieldName = 'NM_ARQ_CFG'
      Size = 70
    end
    object CDSLocalCobrancaNM_ARQ_RMS: TStringField
      FieldName = 'NM_ARQ_RMS'
    end
    object CDSLocalCobrancaNO_CRT_CTR: TStringField
      FieldName = 'NO_CRT_CTR'
      Size = 2
    end
    object CDSLocalCobrancaCD_VAR_CTR: TStringField
      FieldName = 'CD_VAR_CTR'
      Size = 3
    end
    object CDSLocalCobrancaDS_MSG: TStringField
      FieldName = 'DS_MSG'
      Size = 25
    end
    object CDSLocalCobrancaTP_TIT_CTR: TStringField
      FieldName = 'TP_TIT_CTR'
      Size = 2
    end
    object CDSLocalCobrancaNM_DIR_CTR: TStringField
      FieldName = 'NM_DIR_CTR'
      Size = 50
    end
    object CDSLocalCobrancaNO_RMS_CTR: TStringField
      FieldName = 'NO_RMS_CTR'
      Size = 7
    end
    object CDSLocalCobrancaTT_ARQ_CTR: TStringField
      FieldName = 'TT_ARQ_CTR'
      Size = 6
    end
    object CDSLocalCobrancaVR_LMT_RMS: TSingleField
      FieldName = 'VR_LMT_RMS'
    end
    object CDSLocalCobrancaDT_RMS_CTR: TSQLTimeStampField
      FieldName = 'DT_RMS_CTR'
    end
    object CDSLocalCobrancaTP_MOE_ENV: TStringField
      FieldName = 'TP_MOE_ENV'
      Size = 2
    end
    object CDSLocalCobrancaTP_MOE_RET: TStringField
      FieldName = 'TP_MOE_RET'
      Size = 2
    end
    object CDSLocalCobrancaTX_DCT_CTR: TSingleField
      FieldName = 'TX_DCT_CTR'
    end
    object CDSLocalCobrancaID_CIA_CTP: TStringField
      FieldName = 'ID_CIA_CTP'
      Size = 8
    end
    object CDSLocalCobrancaNM_DIR_CTP: TStringField
      FieldName = 'NM_DIR_CTP'
      Size = 50
    end
    object CDSLocalCobrancaNO_RMS_CTP: TStringField
      FieldName = 'NO_RMS_CTP'
      Size = 6
    end
    object CDSLocalCobrancaTT_ARQ_CTP: TStringField
      FieldName = 'TT_ARQ_CTP'
      Size = 6
    end
    object CDSLocalCobrancaDT_RMS_CTP: TSQLTimeStampField
      FieldName = 'DT_RMS_CTP'
    end
    object CDSLocalCobrancaTX_DCT_CTP: TSingleField
      FieldName = 'TX_DCT_CTP'
    end
    object CDSLocalCobrancaNO_SEQ_CTP: TStringField
      FieldName = 'NO_SEQ_CTP'
      Size = 16
    end
    object CDSLocalCobrancaDT_RMS_CHQ: TSQLTimeStampField
      FieldName = 'DT_RMS_CHQ'
    end
    object CDSLocalCobrancaNO_SEQ_CHQ: TStringField
      FieldName = 'NO_SEQ_CHQ'
      Size = 3
    end
    object CDSLocalCobrancaCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 7
    end
    object CDSLocalCobrancaCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 7
    end
    object CDSLocalCobrancaCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 7
    end
    object CDSLocalCobrancaNM_CTT: TStringField
      FieldName = 'NM_CTT'
      Size = 45
    end
    object CDSLocalCobrancaNO_CEL_CTT: TStringField
      FieldName = 'NO_CEL_CTT'
      Size = 13
    end
    object CDSLocalCobrancaID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object CDSLocalCobrancaNM_RUA: TStringField
      FieldName = 'NM_RUA'
      Size = 45
    end
    object CDSLocalCobrancaNM_BAI: TStringField
      FieldName = 'NM_BAI'
    end
    object CDSLocalCobrancaNO_FON: TStringField
      FieldName = 'NO_FON'
      Size = 13
    end
    object CDSLocalCobrancaNO_FAX: TStringField
      FieldName = 'NO_FAX'
      Size = 13
    end
    object CDSLocalCobrancaNM_CID: TStringField
      FieldName = 'NM_CID'
      Size = 45
    end
    object CDSLocalCobrancaUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 2
    end
    object CDSLocalCobrancaNO_CEP: TStringField
      FieldName = 'NO_CEP'
      Size = 9
    end
    object CDSLocalCobrancaTT_ARQ_CHQ: TStringField
      FieldName = 'TT_ARQ_CHQ'
      Size = 6
    end
    object CDSLocalCobrancaDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object CDSLocalCobrancaCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSLocalCobrancaID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLGruMeta: TSQLDataSet
    CommandText = 
      'select * from DB_GRU_META'#13#10'where db_gru_meta.id_venda_meta =:PGr' +
      'upoVenda'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PGrupoVenda'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 875
    Top = 16
    object SQLGruMetaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLGruMetaID_VENDA_META: TIntegerField
      FieldName = 'ID_VENDA_META'
    end
    object SQLGruMetaID_GRU_PRODUTO: TIntegerField
      FieldName = 'ID_GRU_PRODUTO'
      Required = True
    end
  end
  object DSPGruMeta: TDataSetProvider
    DataSet = SQLGruMeta
    Left = 875
    Top = 76
  end
  object CDSGruMeta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPGruMeta'
    AfterInsert = CDSGruMetaAfterInsert
    Left = 875
    Top = 136
    object CDSGruMetaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSGruMetaID_VENDA_META: TIntegerField
      FieldName = 'ID_VENDA_META'
    end
    object CDSGruMetaID_GRU_PRODUTO: TIntegerField
      FieldName = 'ID_GRU_PRODUTO'
      Required = True
    end
    object CDSGruMetaGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'Grupo'
      LookupDataSet = CDSGruProduto
      LookupKeyFields = 'ID'
      LookupResultField = 'NM_GRU_PDT'
      KeyFields = 'ID_GRU_PRODUTO'
      Size = 45
      Lookup = True
    end
  end
  object SQLVendaMeta: TSQLDataSet
    CommandText = 'select * from DB_VENDA_META'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 965
    Top = 16
    object SQLVendaMetaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLVendaMetaNM_GRU_MET: TStringField
      FieldName = 'NM_GRU_MET'
      Required = True
      Size = 45
    end
    object SQLVendaMetaCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLVendaMetaDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
  end
  object DSPVendaMeta: TDataSetProvider
    DataSet = SQLVendaMeta
    Left = 965
    Top = 76
  end
  object CDSVendaMeta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVendaMeta'
    Left = 965
    Top = 136
    object CDSVendaMetaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSVendaMetaNM_GRU_MET: TStringField
      FieldName = 'NM_GRU_MET'
      Required = True
      Size = 45
    end
    object CDSVendaMetaCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSVendaMetaDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
  end
  object SQLVendedor: TSQLDataSet
    CommandText = 
      'select db_vendedor.*,'#13#10'db_cep.nm_bai,'#13#10'db_cep.nm_cid,'#13#10'db_cep.nm' +
      '_rua,'#13#10'db_cep.no_cep,'#13#10'db_cep.uf_cid'#13#10#13#10'from db_vendedor'#13#10'inner ' +
      'join db_cep on db_cep.id = db_vendedor.id_cep'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 32
    Top = 184
    object SQLVendedorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLVendedorNM_VEN: TStringField
      FieldName = 'NM_VEN'
      Size = 35
    end
    object SQLVendedorST_VEN: TStringField
      DisplayWidth = 10
      FieldName = 'ST_VEN'
      Size = 10
    end
    object SQLVendedorTP_VEN: TStringField
      FieldName = 'TP_VEN'
      Size = 10
    end
    object SQLVendedorDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object SQLVendedorDT_ANV: TSQLTimeStampField
      FieldName = 'DT_ANV'
    end
    object SQLVendedorNM_VEN_RAZ: TStringField
      FieldName = 'NM_VEN_RAZ'
      Size = 35
    end
    object SQLVendedorNO_FON: TStringField
      FieldName = 'NO_FON'
      Size = 13
    end
    object SQLVendedorNO_FAX: TStringField
      FieldName = 'NO_FAX'
      Size = 13
    end
    object SQLVendedorNO_CEL: TStringField
      FieldName = 'NO_CEL'
      Size = 13
    end
    object SQLVendedorCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 3
    end
    object SQLVendedorNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Size = 18
    end
    object SQLVendedorE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 35
    end
    object SQLVendedorHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 35
    end
    object SQLVendedorCD_BCO: TStringField
      FieldName = 'CD_BCO'
      Size = 3
    end
    object SQLVendedorNM_BCO: TStringField
      FieldName = 'NM_BCO'
      Size = 15
    end
    object SQLVendedorCD_AGC: TStringField
      FieldName = 'CD_AGC'
      Size = 6
    end
    object SQLVendedorNO_CTA_COR: TStringField
      FieldName = 'NO_CTA_COR'
      Size = 15
    end
    object SQLVendedorCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 7
    end
    object SQLVendedorCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 7
    end
    object SQLVendedorCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 7
    end
    object SQLVendedorSN_CMS: TStringField
      DisplayWidth = 3
      FieldName = 'SN_CMS'
      Size = 3
    end
    object SQLVendedorSN_RLT: TStringField
      FieldName = 'SN_RLT'
      Size = 1
    end
    object SQLVendedorPC_CMS: TSingleField
      FieldName = 'PC_CMS'
    end
    object SQLVendedorCD_FOR: TStringField
      FieldName = 'CD_FOR'
      Size = 6
    end
    object SQLVendedorDS_SNH: TStringField
      FieldName = 'DS_SNH'
      Size = 15
    end
    object SQLVendedorFM_MET_1: TStringField
      FieldName = 'FM_MET_1'
      Size = 4
    end
    object SQLVendedorVR_MET_1: TSingleField
      FieldName = 'VR_MET_1'
    end
    object SQLVendedorTP_MET_1: TStringField
      FieldName = 'TP_MET_1'
      Size = 1
    end
    object SQLVendedorFM_MET_2: TStringField
      FieldName = 'FM_MET_2'
      Size = 4
    end
    object SQLVendedorVR_MET_2: TSingleField
      FieldName = 'VR_MET_2'
    end
    object SQLVendedorTP_MET_2: TStringField
      FieldName = 'TP_MET_2'
      Size = 1
    end
    object SQLVendedorFM_MET_3: TStringField
      FieldName = 'FM_MET_3'
      Size = 4
    end
    object SQLVendedorVR_MET_3: TSingleField
      FieldName = 'VR_MET_3'
    end
    object SQLVendedorTP_MET_3: TStringField
      FieldName = 'TP_MET_3'
      Size = 1
    end
    object SQLVendedorFM_MET_4: TStringField
      FieldName = 'FM_MET_4'
      Size = 4
    end
    object SQLVendedorVR_MET_4: TSingleField
      FieldName = 'VR_MET_4'
    end
    object SQLVendedorTP_MET_4: TStringField
      FieldName = 'TP_MET_4'
      Size = 1
    end
    object SQLVendedorFM_MET_5: TStringField
      FieldName = 'FM_MET_5'
      Size = 4
    end
    object SQLVendedorVR_MET_5: TSingleField
      FieldName = 'VR_MET_5'
    end
    object SQLVendedorTP_MET_5: TStringField
      FieldName = 'TP_MET_5'
      Size = 1
    end
    object SQLVendedorFM_MET_6: TStringField
      FieldName = 'FM_MET_6'
      Size = 4
    end
    object SQLVendedorVR_MET_6: TSingleField
      FieldName = 'VR_MET_6'
    end
    object SQLVendedorTP_MET_6: TStringField
      FieldName = 'TP_MET_6'
      Size = 1
    end
    object SQLVendedorFM_MET_7: TStringField
      FieldName = 'FM_MET_7'
      Size = 4
    end
    object SQLVendedorVR_MET_7: TSingleField
      FieldName = 'VR_MET_7'
    end
    object SQLVendedorTP_MET_7: TStringField
      FieldName = 'TP_MET_7'
      Size = 1
    end
    object SQLVendedorFM_MET_8: TStringField
      FieldName = 'FM_MET_8'
      Size = 4
    end
    object SQLVendedorVR_MET_8: TSingleField
      FieldName = 'VR_MET_8'
    end
    object SQLVendedorTP_MET_8: TStringField
      FieldName = 'TP_MET_8'
      Size = 1
    end
    object SQLVendedorCD_SUP: TStringField
      FieldName = 'CD_SUP'
      Size = 3
    end
    object SQLVendedorPC_CMS_SUP: TSingleField
      FieldName = 'PC_CMS_SUP'
    end
    object SQLVendedorDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object SQLVendedorSN_CLI: TStringField
      FieldName = 'SN_CLI'
      Size = 10
    end
    object SQLVendedorSN_PDT: TStringField
      FieldName = 'SN_PDT'
      Size = 10
    end
    object SQLVendedorSN_PED: TStringField
      FieldName = 'SN_PED'
      Size = 10
    end
    object SQLVendedorSN_OCM: TStringField
      FieldName = 'SN_OCM'
      Size = 10
    end
    object SQLVendedorSN_DIV_FIN: TStringField
      FieldName = 'SN_DIV_FIN'
      Size = 10
    end
    object SQLVendedorCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLVendedorID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLVendedorID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object SQLVendedorNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLVendedorNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLVendedorNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLVendedorNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLVendedorUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLVendedorNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Size = 45
    end
    object SQLVendedorID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object SQLVendedorNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      Size = 18
    end
    object SQLVendedorID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
  end
  object DSPVendedor: TDataSetProvider
    DataSet = SQLVendedor
    Left = 32
    Top = 243
  end
  object CDSVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVendedor'
    BeforePost = CDSVendedorBeforePost
    Left = 32
    Top = 316
    object CDSVendedorID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000'
    end
    object CDSVendedorNM_VEN: TStringField
      FieldName = 'NM_VEN'
      Size = 35
    end
    object CDSVendedorST_VEN: TStringField
      DisplayWidth = 10
      FieldName = 'ST_VEN'
      Size = 10
    end
    object CDSVendedorTP_VEN: TStringField
      FieldName = 'TP_VEN'
      Size = 10
    end
    object CDSVendedorDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object CDSVendedorDT_ANV: TSQLTimeStampField
      FieldName = 'DT_ANV'
    end
    object CDSVendedorNM_VEN_RAZ: TStringField
      FieldName = 'NM_VEN_RAZ'
      Size = 35
    end
    object CDSVendedorNO_FON: TStringField
      FieldName = 'NO_FON'
      OnValidate = CDSVendedorNO_FONValidate
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 13
    end
    object CDSVendedorNO_FAX: TStringField
      FieldName = 'NO_FAX'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 13
    end
    object CDSVendedorNO_CEL: TStringField
      FieldName = 'NO_CEL'
      EditMask = '!\(99\)00000-0000;0;_'
      Size = 13
    end
    object CDSVendedorCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 3
    end
    object CDSVendedorNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Size = 18
    end
    object CDSVendedorE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 35
    end
    object CDSVendedorHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 35
    end
    object CDSVendedorCD_BCO: TStringField
      FieldName = 'CD_BCO'
      Size = 3
    end
    object CDSVendedorNM_BCO: TStringField
      FieldName = 'NM_BCO'
      Size = 15
    end
    object CDSVendedorCD_AGC: TStringField
      FieldName = 'CD_AGC'
      Size = 6
    end
    object CDSVendedorNO_CTA_COR: TStringField
      FieldName = 'NO_CTA_COR'
      Size = 15
    end
    object CDSVendedorCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 7
    end
    object CDSVendedorCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 7
    end
    object CDSVendedorCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 7
    end
    object CDSVendedorSN_CMS: TStringField
      FieldName = 'SN_CMS'
      Size = 3
    end
    object CDSVendedorSN_RLT: TStringField
      FieldName = 'SN_RLT'
      Size = 1
    end
    object CDSVendedorPC_CMS: TSingleField
      FieldName = 'PC_CMS'
      EditFormat = ',0.00'
    end
    object CDSVendedorCD_FOR: TStringField
      FieldName = 'CD_FOR'
      Size = 6
    end
    object CDSVendedorDS_SNH: TStringField
      FieldName = 'DS_SNH'
      Size = 15
    end
    object CDSVendedorFM_MET_1: TStringField
      FieldName = 'FM_MET_1'
      Size = 4
    end
    object CDSVendedorVR_MET_1: TSingleField
      FieldName = 'VR_MET_1'
    end
    object CDSVendedorTP_MET_1: TStringField
      FieldName = 'TP_MET_1'
      Size = 1
    end
    object CDSVendedorFM_MET_2: TStringField
      FieldName = 'FM_MET_2'
      Size = 4
    end
    object CDSVendedorVR_MET_2: TSingleField
      FieldName = 'VR_MET_2'
    end
    object CDSVendedorTP_MET_2: TStringField
      FieldName = 'TP_MET_2'
      Size = 1
    end
    object CDSVendedorFM_MET_3: TStringField
      FieldName = 'FM_MET_3'
      Size = 4
    end
    object CDSVendedorVR_MET_3: TSingleField
      FieldName = 'VR_MET_3'
    end
    object CDSVendedorTP_MET_3: TStringField
      FieldName = 'TP_MET_3'
      Size = 1
    end
    object CDSVendedorFM_MET_4: TStringField
      FieldName = 'FM_MET_4'
      Size = 4
    end
    object CDSVendedorVR_MET_4: TSingleField
      FieldName = 'VR_MET_4'
    end
    object CDSVendedorTP_MET_4: TStringField
      FieldName = 'TP_MET_4'
      Size = 1
    end
    object CDSVendedorFM_MET_5: TStringField
      FieldName = 'FM_MET_5'
      Size = 4
    end
    object CDSVendedorVR_MET_5: TSingleField
      FieldName = 'VR_MET_5'
    end
    object CDSVendedorTP_MET_5: TStringField
      FieldName = 'TP_MET_5'
      Size = 1
    end
    object CDSVendedorFM_MET_6: TStringField
      FieldName = 'FM_MET_6'
      Size = 4
    end
    object CDSVendedorVR_MET_6: TSingleField
      FieldName = 'VR_MET_6'
    end
    object CDSVendedorTP_MET_6: TStringField
      FieldName = 'TP_MET_6'
      Size = 1
    end
    object CDSVendedorFM_MET_7: TStringField
      FieldName = 'FM_MET_7'
      Size = 4
    end
    object CDSVendedorVR_MET_7: TSingleField
      FieldName = 'VR_MET_7'
    end
    object CDSVendedorTP_MET_7: TStringField
      FieldName = 'TP_MET_7'
      Size = 1
    end
    object CDSVendedorFM_MET_8: TStringField
      FieldName = 'FM_MET_8'
      Size = 4
    end
    object CDSVendedorVR_MET_8: TSingleField
      FieldName = 'VR_MET_8'
    end
    object CDSVendedorTP_MET_8: TStringField
      FieldName = 'TP_MET_8'
      Size = 1
    end
    object CDSVendedorCD_SUP: TStringField
      FieldName = 'CD_SUP'
      Size = 3
    end
    object CDSVendedorPC_CMS_SUP: TSingleField
      FieldName = 'PC_CMS_SUP'
    end
    object CDSVendedorDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object CDSVendedorSN_CLI: TStringField
      FieldName = 'SN_CLI'
      Size = 10
    end
    object CDSVendedorSN_PDT: TStringField
      FieldName = 'SN_PDT'
      Size = 10
    end
    object CDSVendedorSN_PED: TStringField
      FieldName = 'SN_PED'
      Size = 10
    end
    object CDSVendedorSN_OCM: TStringField
      FieldName = 'SN_OCM'
      Size = 10
    end
    object CDSVendedorSN_DIV_FIN: TStringField
      FieldName = 'SN_DIV_FIN'
      Size = 10
    end
    object CDSVendedorCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSVendedorID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSVendedorID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object CDSVendedorNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSVendedorNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSVendedorNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSVendedorNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSVendedorUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSVendedorNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Size = 45
    end
    object CDSVendedorID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSVendedorNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      OnGetText = CDSVendedorNO_CNP_CPFGetText
      Size = 18
    end
    object CDSVendedorID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
  end
  object SQLGeneroItem: TSQLDataSet
    CommandText = 'select * from DB_GEN_ITEM'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 1056
    Top = 16
  end
  object DSPGeneroItem: TDataSetProvider
    DataSet = SQLGeneroItem
    Left = 1056
    Top = 76
  end
  object CDSGeneroItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPGeneroItem'
    Left = 1056
    Top = 136
    object CDSGeneroItemID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '00'
    end
    object CDSGeneroItemNM_GEN_ITE: TStringField
      DisplayLabel = 'Descri'#231#227'o do Genero do Item de Mercadoria / Servi'#231'o'
      FieldName = 'NM_GEN_ITE'
      Required = True
      Size = 250
    end
    object CDSGeneroItemCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSGeneroItemID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLUnidadePDT: TSQLDataSet
    CommandText = 'select * from DB_UNIDADEPDT'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 120
    Top = 184
  end
  object DSPUnidadePDT: TDataSetProvider
    DataSet = SQLUnidadePDT
    Left = 120
    Top = 243
  end
  object CDSUnidadePDT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUnidadePDT'
    Left = 122
    Top = 316
    object CDSUnidadePDTID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object CDSUnidadePDTNM_UNI_RDZ: TStringField
      DisplayLabel = 'Unidade Reduzida'
      FieldName = 'NM_UNI_RDZ'
      Required = True
      Size = 2
    end
    object CDSUnidadePDTNM_UNI_PDT: TStringField
      DisplayLabel = 'Nome Unidade Produto'
      FieldName = 'NM_UNI_PDT'
      Required = True
    end
    object CDSUnidadePDTSN_FRC: TStringField
      DisplayLabel = 'Fraciona'
      FieldName = 'SN_FRC'
      Required = True
      Size = 3
    end
    object CDSUnidadePDTCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSUnidadePDTID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLVenEmp: TSQLDataSet
    CommandText = 
      'select db_ven_emp.*,db_vendedor.nm_ven from db_ven_emp'#13#10'inner jo' +
      'in db_vendedor on db_vendedor.id =  db_ven_emp.id_cod_ven'#13#10'where' +
      ' db_ven_emp.id_empresa =:pEMP'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftWideString
        Name = 'pEMP'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 212
    Top = 196
    object SQLVenEmpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLVenEmpID_COD_VEN: TIntegerField
      FieldName = 'ID_COD_VEN'
      Required = True
    end
    object SQLVenEmpID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object SQLVenEmpNM_VEN: TStringField
      FieldName = 'NM_VEN'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPVenEmp: TDataSetProvider
    DataSet = SQLVenEmp
    Left = 212
    Top = 256
  end
  object CDSVenEmp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVenEmp'
    Left = 212
    Top = 316
    object CDSVenEmpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSVenEmpID_COD_VEN: TIntegerField
      FieldName = 'ID_COD_VEN'
      Required = True
    end
    object CDSVenEmpID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object CDSVenEmpNM_VEN: TStringField
      FieldName = 'NM_VEN'
      ProviderFlags = []
      Size = 35
    end
  end
  object SQLEmbalagem: TSQLDataSet
    CommandText = 'select * from DB_EMBALAGEM'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 302
    Top = 196
  end
  object DSPEmbalagem: TDataSetProvider
    DataSet = SQLEmbalagem
    Left = 302
    Top = 256
  end
  object CDSEmbalagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPEmbalagem'
    BeforePost = CDSEmbalagemBeforePost
    Left = 302
    Top = 316
    object CDSEmbalagemID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object CDSEmbalagemCD_EMB_PDT: TStringField
      DisplayLabel = 'Nome Embalagem Abreviada'
      FieldName = 'CD_EMB_PDT'
      Required = True
      Size = 3
    end
    object CDSEmbalagemNM_EMB_PDT: TStringField
      DisplayLabel = 'Descri'#231#227'o da Embalagem'
      FieldName = 'NM_EMB_PDT'
      Required = True
    end
    object CDSEmbalagemCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSEmbalagemID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLTransportadora: TSQLDataSet
    CommandText = 
      'SELECT db_transportadora.*,'#13#10'db_cep.nm_bai,'#13#10'db_cep.nm_cid,'#13#10'db_' +
      'cep.nm_rua,'#13#10'db_cep.no_cep,'#13#10'db_cep.uf_cid'#13#10#13#10'FROM db_transporta' +
      'dora'#13#10'INNER JOIN db_cep ON db_cep.id = db_transportadora.id_cep'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 392
    Top = 196
    object SQLTransportadoraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLTransportadoraNM_TRN: TStringField
      FieldName = 'NM_TRN'
      Required = True
      Size = 35
    end
    object SQLTransportadoraST_TRN: TStringField
      FieldName = 'ST_TRN'
      Size = 10
    end
    object SQLTransportadoraDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object SQLTransportadoraNM_TRN_FAN: TStringField
      FieldName = 'NM_TRN_FAN'
      Size = 35
    end
    object SQLTransportadoraNO_FON: TStringField
      FieldName = 'NO_FON'
      Size = 13
    end
    object SQLTransportadoraNO_FAX: TStringField
      FieldName = 'NO_FAX'
      Size = 13
    end
    object SQLTransportadoraNO_CEL: TStringField
      FieldName = 'NO_CEL'
      Size = 13
    end
    object SQLTransportadoraID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object SQLTransportadoraNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Required = True
      Size = 4
    end
    object SQLTransportadoraDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object SQLTransportadoraCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 3
    end
    object SQLTransportadoraNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      Size = 14
    end
    object SQLTransportadoraNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Size = 18
    end
    object SQLTransportadoraE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 35
    end
    object SQLTransportadoraHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 35
    end
    object SQLTransportadoraCD_BCO: TStringField
      FieldName = 'CD_BCO'
      Size = 3
    end
    object SQLTransportadoraNM_BCO: TStringField
      FieldName = 'NM_BCO'
      Size = 15
    end
    object SQLTransportadoraCD_AGC: TStringField
      FieldName = 'CD_AGC'
      Size = 6
    end
    object SQLTransportadoraNO_CTA_COR: TStringField
      FieldName = 'NO_CTA_COR'
      Size = 15
    end
    object SQLTransportadoraNM_CTT_RSP: TStringField
      FieldName = 'NM_CTT_RSP'
      Size = 35
    end
    object SQLTransportadoraTP_TRN: TStringField
      FieldName = 'TP_TRN'
      Size = 1
    end
    object SQLTransportadoraCD_FOR: TStringField
      FieldName = 'CD_FOR'
      Size = 6
    end
    object SQLTransportadoraCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 7
    end
    object SQLTransportadoraCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 6
    end
    object SQLTransportadoraCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 6
    end
    object SQLTransportadoraNO_PLC_VEI: TStringField
      FieldName = 'NO_PLC_VEI'
      Size = 8
    end
    object SQLTransportadoraDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object SQLTransportadoraCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLTransportadoraID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLTransportadoraNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLTransportadoraNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLTransportadoraNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLTransportadoraNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLTransportadoraUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLTransportadoraID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
  end
  object DSPTransportadora: TDataSetProvider
    DataSet = SQLTransportadora
    Left = 392
    Top = 256
  end
  object CDSTransportadora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTransportadora'
    Left = 392
    Top = 316
    object CDSTransportadoraID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000'
    end
    object CDSTransportadoraNM_TRN: TStringField
      FieldName = 'NM_TRN'
      Required = True
      Size = 35
    end
    object CDSTransportadoraST_TRN: TStringField
      FieldName = 'ST_TRN'
      Size = 10
    end
    object CDSTransportadoraDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object CDSTransportadoraNM_TRN_FAN: TStringField
      FieldName = 'NM_TRN_FAN'
      Size = 35
    end
    object CDSTransportadoraNO_FON: TStringField
      FieldName = 'NO_FON'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 13
    end
    object CDSTransportadoraNO_FAX: TStringField
      FieldName = 'NO_FAX'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 13
    end
    object CDSTransportadoraNO_CEL: TStringField
      FieldName = 'NO_CEL'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 13
    end
    object CDSTransportadoraID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object CDSTransportadoraNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Required = True
      Size = 4
    end
    object CDSTransportadoraDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object CDSTransportadoraCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 3
    end
    object CDSTransportadoraNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      Size = 14
    end
    object CDSTransportadoraNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Size = 18
    end
    object CDSTransportadoraE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 35
    end
    object CDSTransportadoraHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 35
    end
    object CDSTransportadoraID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object CDSTransportadoraCD_BCO: TStringField
      FieldName = 'CD_BCO'
      Size = 3
    end
    object CDSTransportadoraNM_BCO: TStringField
      FieldName = 'NM_BCO'
      Size = 15
    end
    object CDSTransportadoraCD_AGC: TStringField
      FieldName = 'CD_AGC'
      Size = 6
    end
    object CDSTransportadoraNO_CTA_COR: TStringField
      FieldName = 'NO_CTA_COR'
      Size = 15
    end
    object CDSTransportadoraNM_CTT_RSP: TStringField
      FieldName = 'NM_CTT_RSP'
      Size = 35
    end
    object CDSTransportadoraTP_TRN: TStringField
      FieldName = 'TP_TRN'
      Size = 1
    end
    object CDSTransportadoraCD_FOR: TStringField
      FieldName = 'CD_FOR'
      Size = 6
    end
    object CDSTransportadoraCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 7
    end
    object CDSTransportadoraCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 6
    end
    object CDSTransportadoraCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 6
    end
    object CDSTransportadoraNO_PLC_VEI: TStringField
      FieldName = 'NO_PLC_VEI'
      EditMask = '>AAA-####;0'
      Size = 8
    end
    object CDSTransportadoraDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object CDSTransportadoraCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSTransportadoraID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSTransportadoraNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSTransportadoraNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSTransportadoraNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSTransportadoraNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSTransportadoraUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
  end
  object SQLSetor: TSQLDataSet
    CommandText = 'select * from db_setor'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 482
    Top = 196
  end
  object DSPSetor: TDataSetProvider
    DataSet = SQLSetor
    Left = 482
    Top = 256
  end
  object CDSSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPSetor'
    BeforePost = CDSSetorBeforePost
    Left = 482
    Top = 316
    object CDSSetorID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object CDSSetorNM_SET: TStringField
      DisplayLabel = 'Nome do Setor'
      FieldName = 'NM_SET'
      Required = True
      Size = 35
    end
    object CDSSetorCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSSetorID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLFuncionario: TSQLDataSet
    CommandText = 
      'SELECT db_funcionario.*,'#13#10'db_cep.nm_bai,'#13#10'db_cep.nm_cid,'#13#10'db_cep' +
      '.nm_rua,'#13#10'db_cep.no_cep,'#13#10'db_cep.uf_cid'#13#10#13#10'FROM db_funcionario'#13#10 +
      'INNER JOIN db_cep ON db_cep.id = db_funcionario.id_cep'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 581
    Top = 196
    object SQLFuncionarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLFuncionarioNM_FCN: TStringField
      FieldName = 'NM_FCN'
      Size = 45
    end
    object SQLFuncionarioST_FNC: TStringField
      FieldName = 'ST_FNC'
      Size = 10
    end
    object SQLFuncionarioDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object SQLFuncionarioDT_ANV: TSQLTimeStampField
      FieldName = 'DT_ANV'
    end
    object SQLFuncionarioNM_FUN: TStringField
      FieldName = 'NM_FUN'
      Required = True
      Size = 45
    end
    object SQLFuncionarioID_SET: TIntegerField
      FieldName = 'ID_SET'
    end
    object SQLFuncionarioDT_ADS: TSQLTimeStampField
      FieldName = 'DT_ADS'
    end
    object SQLFuncionarioDT_DMS: TSQLTimeStampField
      FieldName = 'DT_DMS'
    end
    object SQLFuncionarioSN_RQS: TStringField
      FieldName = 'SN_RQS'
      Size = 1
    end
    object SQLFuncionarioID_CEP: TIntegerField
      FieldName = 'ID_CEP'
      Required = True
    end
    object SQLFuncionarioNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Required = True
      Size = 10
    end
    object SQLFuncionarioDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object SQLFuncionarioNO_FON: TStringField
      FieldName = 'NO_FON'
      Size = 13
    end
    object SQLFuncionarioNO_FAX: TStringField
      FieldName = 'NO_FAX'
      Size = 13
    end
    object SQLFuncionarioNO_CEL: TStringField
      FieldName = 'NO_CEL'
      Size = 13
    end
    object SQLFuncionarioE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 35
    end
    object SQLFuncionarioHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 35
    end
    object SQLFuncionarioID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
    end
    object SQLFuncionarioNM_BCO: TStringField
      FieldName = 'NM_BCO'
      Size = 15
    end
    object SQLFuncionarioCD_AGC: TStringField
      FieldName = 'CD_AGC'
      Size = 6
    end
    object SQLFuncionarioNO_CTA_COR: TStringField
      FieldName = 'NO_CTA_COR'
      Size = 15
    end
    object SQLFuncionarioCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 4
    end
    object SQLFuncionarioCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 7
    end
    object SQLFuncionarioCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 7
    end
    object SQLFuncionarioCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 7
    end
    object SQLFuncionarioDS_SNH: TStringField
      FieldName = 'DS_SNH'
      Size = 15
    end
    object SQLFuncionarioDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object SQLFuncionarioCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLFuncionarioID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLFuncionarioNO_CPF: TStringField
      FieldName = 'NO_CPF'
      Size = 11
    end
    object SQLFuncionarioNO_RG: TStringField
      FieldName = 'NO_RG'
      Size = 13
    end
    object SQLFuncionarioID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object SQLFuncionarioNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLFuncionarioNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLFuncionarioNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLFuncionarioNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLFuncionarioUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
  end
  object DSPFuncionario: TDataSetProvider
    DataSet = SQLFuncionario
    Left = 581
    Top = 256
  end
  object CDSFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPFuncionario'
    BeforePost = CDSFuncionarioBeforePost
    Left = 581
    Top = 316
    object CDSFuncionarioID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000'
    end
    object CDSFuncionarioNM_FCN: TStringField
      DisplayLabel = 'Nome Funcion'#225'rio'
      FieldName = 'NM_FCN'
      Required = True
      Size = 45
    end
    object CDSFuncionarioST_FNC: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ST_FNC'
      Size = 10
    end
    object CDSFuncionarioDT_CAD: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CAD'
    end
    object CDSFuncionarioDT_ANV: TSQLTimeStampField
      DisplayLabel = 'Data Anivers'#225'rio'
      FieldName = 'DT_ANV'
    end
    object CDSFuncionarioNM_FUN: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'NM_FUN'
      Required = True
      Size = 45
    end
    object CDSFuncionarioID_SET: TIntegerField
      DisplayLabel = 'C'#243'digo Setor'
      FieldName = 'ID_SET'
    end
    object CDSFuncionarioDT_ADS: TSQLTimeStampField
      DisplayLabel = 'Data Admiss'#227'o'
      FieldName = 'DT_ADS'
      Required = True
    end
    object CDSFuncionarioDT_DMS: TSQLTimeStampField
      DisplayLabel = 'Data Demiss'#227'o'
      FieldName = 'DT_DMS'
    end
    object CDSFuncionarioSN_RQS: TStringField
      FieldName = 'SN_RQS'
      Size = 1
    end
    object CDSFuncionarioID_CEP: TIntegerField
      DisplayLabel = 'N'#250'mero Cep'
      FieldName = 'ID_CEP'
      Required = True
    end
    object CDSFuncionarioNO_EDR: TStringField
      DisplayLabel = 'N'#250'mero Endere'#231'o'
      FieldName = 'NO_EDR'
      Required = True
      Size = 10
    end
    object CDSFuncionarioDS_CPL: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'DS_CPL'
      Size = 15
    end
    object CDSFuncionarioNO_FON: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'NO_FON'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 13
    end
    object CDSFuncionarioNO_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'NO_FAX'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 13
    end
    object CDSFuncionarioNO_CEL: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'NO_CEL'
      EditMask = '!\(99\) #####-####;0;'
      Size = 13
    end
    object CDSFuncionarioE_MAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'E_MAIL'
      Size = 35
    end
    object CDSFuncionarioHOME_PAGE: TStringField
      DisplayLabel = 'Home Page'
      FieldName = 'HOME_PAGE'
      Size = 35
    end
    object CDSFuncionarioID_BANCO: TIntegerField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'ID_BANCO'
    end
    object CDSFuncionarioNM_BCO: TStringField
      DisplayLabel = 'Nome Banco'
      FieldName = 'NM_BCO'
      Size = 15
    end
    object CDSFuncionarioCD_AGC: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CD_AGC'
      Size = 6
    end
    object CDSFuncionarioNO_CTA_COR: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'NO_CTA_COR'
      Size = 15
    end
    object CDSFuncionarioCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 4
    end
    object CDSFuncionarioCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 7
    end
    object CDSFuncionarioCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 7
    end
    object CDSFuncionarioCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 7
    end
    object CDSFuncionarioDS_SNH: TStringField
      FieldName = 'DS_SNH'
      Size = 15
    end
    object CDSFuncionarioDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object CDSFuncionarioCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSFuncionarioID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSFuncionarioNO_CPF: TStringField
      DisplayLabel = 'N'#250'mero CPF'
      FieldName = 'NO_CPF'
      EditMask = '###.###.###-##;0'
      Size = 11
    end
    object CDSFuncionarioNO_RG: TStringField
      DisplayLabel = 'N'#250'mero Identidade'
      FieldName = 'NO_RG'
      Size = 13
    end
    object CDSFuncionarioID_SETOR: TIntegerField
      DisplayLabel = 'C'#243'digo Setor'
      FieldName = 'ID_SETOR'
    end
    object CDSFuncionarioNM_BAI: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSFuncionarioNM_CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NM_CID'
      ProviderFlags = []
      Required = True
      Size = 45
    end
    object CDSFuncionarioNM_RUA: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Required = True
      Size = 45
    end
    object CDSFuncionarioNO_CEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Required = True
      Size = 9
    end
    object CDSFuncionarioUF_CID: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UF_CID'
      ProviderFlags = []
      Required = True
      Size = 2
    end
  end
  object SQLPaises: TSQLDataSet
    CommandText = 'select * from db_paises'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 679
    Top = 196
  end
  object DSPPaises: TDataSetProvider
    DataSet = SQLPaises
    Left = 679
    Top = 256
  end
  object CDSPaises: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPaises'
    BeforePost = CDSPaisesBeforePost
    Left = 679
    Top = 316
    object CDSPaisesID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSPaisesCD_PAI: TStringField
      DisplayLabel = 'C'#243'digo Pa'#237's'
      FieldName = 'CD_PAI'
      Required = True
      Size = 4
    end
    object CDSPaisesNM_PAI: TStringField
      DisplayLabel = 'Nome do Pa'#237's'
      FieldName = 'NM_PAI'
      Required = True
      OnGetText = CDSPaisesNM_PAIGetText
      Size = 35
    end
    object CDSPaisesCD_DDI: TStringField
      DisplayLabel = 'C'#243'digo DDI'
      FieldName = 'CD_DDI'
      Size = 3
    end
    object CDSPaisesCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSPaisesID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLUFederativa: TSQLDataSet
    CommandText = 'select * from db_UFederativa'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 785
    Top = 196
  end
  object DSPUFederativa: TDataSetProvider
    DataSet = SQLUFederativa
    Left = 785
    Top = 256
  end
  object CDSUFederativa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUFederativa'
    BeforePost = CDSUFederativaBeforePost
    Left = 785
    Top = 316
    object CDSUFederativaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDSUFederativaCD_UNF: TStringField
      DisplayLabel = 'C'#243'd. Unidade'
      FieldName = 'CD_UNF'
      Required = True
      Size = 2
    end
    object CDSUFederativaNM_UNF: TStringField
      DisplayLabel = 'Nome Unidade Federativa'
      FieldName = 'NM_UNF'
      Required = True
      Size = 25
    end
    object CDSUFederativaCD_UNF_IBG: TStringField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'CD_UNF_IBG'
      Required = True
      Size = 2
    end
    object CDSUFederativaSN_MVA: TStringField
      DisplayLabel = 'MVA'
      FieldName = 'SN_MVA'
      Size = 3
    end
    object CDSUFederativaPC_RJT: TSingleField
      DisplayLabel = 'Percentual Reajuste'
      FieldName = 'PC_RJT'
    end
    object CDSUFederativaCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSUFederativaID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLCidades: TSQLDataSet
    CommandText = 'select * from DB_CIDADES'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 875
    Top = 196
  end
  object DSPCidades: TDataSetProvider
    DataSet = SQLCidades
    Left = 875
    Top = 256
  end
  object CDSCidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCidades'
    BeforePost = CDSCidadesBeforePost
    Left = 875
    Top = 316
    object CDSCidadesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSCidadesCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 4
    end
    object CDSCidadesUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 2
    end
    object CDSCidadesNM_CID: TStringField
      FieldName = 'NM_CID'
      Required = True
      Size = 35
    end
    object CDSCidadesCD_CID_IBG: TStringField
      FieldName = 'CD_CID_IBG'
      Required = True
      Size = 7
    end
    object CDSCidadesNM_UNF: TStringField
      FieldName = 'NM_UNF'
      Size = 25
    end
    object CDSCidadesCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSCidadesID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSCidadesID_UF: TIntegerField
      FieldName = 'ID_UF'
      Required = True
    end
  end
  object SQLVendedor_Metas: TSQLDataSet
    CommandText = 
      'select * from DB_VENDEDOR_META'#13#10'where db_vendedor_meta.id_vended' +
      'or =:pVendedor'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pVendedor'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 1056
    Top = 196
  end
  object DSPVendedor_Metas: TDataSetProvider
    DataSet = SQLVendedor_Metas
    Left = 1056
    Top = 256
  end
  object CDSVendedor_Metas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVendedor_Metas'
    Left = 1056
    Top = 316
    object CDSVendedor_MetasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSVendedor_MetasID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object CDSVendedor_MetasID_GRU_PRO: TIntegerField
      FieldName = 'ID_GRU_PRO'
    end
    object CDSVendedor_MetasINDICE: TSingleField
      FieldName = 'INDICE'
      Required = True
      DisplayFormat = ',0.00'
    end
    object CDSVendedor_MetasTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      OnGetText = CDSVendedor_MetasTIPOGetText
      Size = 6
    end
    object CDSVendedor_MetasGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'Grupo'
      LookupDataSet = CDSVendaMeta
      LookupKeyFields = 'ID'
      LookupResultField = 'NM_GRU_MET'
      KeyFields = 'ID_GRU_PRO'
      Size = 45
      Lookup = True
    end
  end
  object SQLClientes: TSQLDataSet
    CommandText = 
      'SELECT db_cliente.*,'#13#10'db_cep.nm_bai,'#13#10'db_cep.nm_cid,'#13#10'db_cep.nm_' +
      'rua,'#13#10'db_cep.no_cep,'#13#10'db_cep.uf_cid,'#13#10#13#10'cob.nm_bai as cobnm_bai,' +
      #13#10'cob.nm_cid as cobnm_cid,'#13#10'cob.nm_rua as cobnm_rua,'#13#10'cob.no_cep' +
      ' as cobno_cep,'#13#10'cob.uf_cid as cobuf_cid,'#13#10#13#10#13#10'av1.nm_bai as av1n' +
      'm_bai,'#13#10'av1.nm_cid as av1nm_cid,'#13#10'av1.nm_rua as av1nm_rua,'#13#10'av1.' +
      'no_cep as av1no_cep,'#13#10'av1.uf_cid as av1uf_cid,'#13#10#13#10'av2.nm_bai as ' +
      'av2nm_bai,'#13#10'av2.nm_cid as av2nm_cid,'#13#10'av2.nm_rua as av2nm_rua,'#13#10 +
      'av2.no_cep as av2no_cep,'#13#10'av2.uf_cid as av2uf_cid'#13#10#13#10'FROM db_cli' +
      'ente'#13#10'left outer join db_cep  on db_cliente.id_cep  = db_cep.id'#13 +
      #10'left outer join db_cep  cob  on db_cliente.id_cep_cob  = cob.id' +
      #13#10'left outer join db_cep  av1  on db_cliente.id_cep_av1  = av1.i' +
      'd'#13#10'left outer join db_cep  av2  on db_cliente.id_cep_av2  = av2.' +
      'id'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 965
    Top = 196
    object SQLClientesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLClientesNM_CLI: TStringField
      FieldName = 'NM_CLI'
      Required = True
      Size = 45
    end
    object SQLClientesST_CLI: TStringField
      FieldName = 'ST_CLI'
      Size = 10
    end
    object SQLClientesID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Required = True
    end
    object SQLClientesCD_CTG: TStringField
      FieldName = 'CD_CTG'
      Size = 3
    end
    object SQLClientesDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object SQLClientesSN_DCL: TStringField
      FieldName = 'SN_DCL'
      Size = 1
    end
    object SQLClientesNM_FAN: TStringField
      FieldName = 'NM_FAN'
      Size = 45
    end
    object SQLClientesID_CEP: TIntegerField
      FieldName = 'ID_CEP'
      Required = True
    end
    object SQLClientesNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Size = 10
    end
    object SQLClientesDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object SQLClientesNO_FON: TStringField
      FieldName = 'NO_FON'
      Size = 14
    end
    object SQLClientesNO_FAX: TStringField
      FieldName = 'NO_FAX'
      Size = 14
    end
    object SQLClientesNO_CEL: TStringField
      FieldName = 'NO_CEL'
      Size = 14
    end
    object SQLClientesCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 4
    end
    object SQLClientesNO_CNP_CPF: TStringField
      DisplayWidth = 18
      FieldName = 'NO_CNP_CPF'
      Size = 18
    end
    object SQLClientesNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Size = 18
    end
    object SQLClientesTP_CSM_FIN: TStringField
      FieldName = 'TP_CSM_FIN'
      Size = 1
    end
    object SQLClientesNM_CTT: TStringField
      FieldName = 'NM_CTT'
      Size = 35
    end
    object SQLClientesE_MAIL_CTT: TStringField
      FieldName = 'E_MAIL_CTT'
      Size = 35
    end
    object SQLClientesDS_CPL_COB: TStringField
      FieldName = 'DS_CPL_COB'
      Size = 15
    end
    object SQLClientesNO_FON_COB: TStringField
      FieldName = 'NO_FON_COB'
      Size = 14
    end
    object SQLClientesNO_FAX_COB: TStringField
      FieldName = 'NO_FAX_COB'
      Size = 14
    end
    object SQLClientesNO_CEL_COB: TStringField
      FieldName = 'NO_CEL_COB'
      Size = 14
    end
    object SQLClientesCD_PAI_COB: TStringField
      FieldName = 'CD_PAI_COB'
      Size = 4
    end
    object SQLClientesNM_CTT_COB: TStringField
      FieldName = 'NM_CTT_COB'
      Size = 35
    end
    object SQLClientesE_MAIL_COB: TStringField
      FieldName = 'E_MAIL_COB'
      Size = 35
    end
    object SQLClientesE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 35
    end
    object SQLClientesHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 35
    end
    object SQLClientesCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 6
    end
    object SQLClientesCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 6
    end
    object SQLClientesCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 6
    end
    object SQLClientesNM_CTT_VEN: TStringField
      FieldName = 'NM_CTT_VEN'
      Size = 35
    end
    object SQLClientesNO_RAM_VEN: TStringField
      FieldName = 'NO_RAM_VEN'
      Size = 4
    end
    object SQLClientesDT_NCT_VEN: TSQLTimeStampField
      FieldName = 'DT_NCT_VEN'
    end
    object SQLClientesE_MAIL_VEN: TStringField
      FieldName = 'E_MAIL_VEN'
      Size = 35
    end
    object SQLClientesNM_CTT_FIN: TStringField
      FieldName = 'NM_CTT_FIN'
      Size = 35
    end
    object SQLClientesNO_RAM_FIN: TStringField
      FieldName = 'NO_RAM_FIN'
      Size = 4
    end
    object SQLClientesDT_NCT_FIN: TSQLTimeStampField
      FieldName = 'DT_NCT_FIN'
    end
    object SQLClientesE_MAIL_FIN: TStringField
      FieldName = 'E_MAIL_FIN'
      Size = 35
    end
    object SQLClientesNO_PED_CMP: TStringField
      FieldName = 'NO_PED_CMP'
      Size = 6
    end
    object SQLClientesPZ_PGT_CMP: TStringField
      FieldName = 'PZ_PGT_CMP'
      Size = 30
    end
    object SQLClientesPZ_PGT_VEN: TStringField
      FieldName = 'PZ_PGT_VEN'
      Size = 30
    end
    object SQLClientesVR_LMT_CRD: TSingleField
      FieldName = 'VR_LMT_CRD'
    end
    object SQLClientesVR_LMT_AUX: TSingleField
      FieldName = 'VR_LMT_AUX'
    end
    object SQLClientesID_IE: TStringField
      DisplayWidth = 1
      FieldName = 'ID_IE'
      Size = 1
    end
    object SQLClientesCD_LBR_LMT: TStringField
      FieldName = 'CD_LBR_LMT'
      Size = 3
    end
    object SQLClientesVR_LMT_ANT: TSingleField
      FieldName = 'VR_LMT_ANT'
    end
    object SQLClientesVR_LMA_ANT: TSingleField
      FieldName = 'VR_LMA_ANT'
    end
    object SQLClientesDT_LMT_CRD: TSQLTimeStampField
      FieldName = 'DT_LMT_CRD'
    end
    object SQLClientesSN_CC: TStringField
      FieldName = 'SN_CC'
      Size = 1
    end
    object SQLClientesCD_CTL: TStringField
      FieldName = 'CD_CTL'
      Size = 40
    end
    object SQLClientesVR_MAI_CMP: TSingleField
      FieldName = 'VR_MAI_CMP'
    end
    object SQLClientesDT_MAI_CMP: TSQLTimeStampField
      FieldName = 'DT_MAI_CMP'
    end
    object SQLClientesVR_ULT_CMP: TSingleField
      FieldName = 'VR_ULT_CMP'
    end
    object SQLClientesDT_ULT_CMP: TSQLTimeStampField
      FieldName = 'DT_ULT_CMP'
    end
    object SQLClientesCD_LOC_COB: TStringField
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object SQLClientesCD_TRN: TStringField
      FieldName = 'CD_TRN'
      Size = 3
    end
    object SQLClientesNO_IDT: TStringField
      FieldName = 'NO_IDT'
      Size = 16
    end
    object SQLClientesST_CIV: TStringField
      FieldName = 'ST_CIV'
      Size = 1
    end
    object SQLClientesNM_CJG: TStringField
      FieldName = 'NM_CJG'
      Size = 35
    end
    object SQLClientesDT_NCT: TSQLTimeStampField
      FieldName = 'DT_NCT'
    end
    object SQLClientesNM_CID_NCT: TStringField
      FieldName = 'NM_CID_NCT'
      Size = 35
    end
    object SQLClientesUF_CID_NCT: TStringField
      FieldName = 'UF_CID_NCT'
      Size = 2
    end
    object SQLClientesNM_PAI: TStringField
      FieldName = 'NM_PAI'
      Size = 35
    end
    object SQLClientesNM_MAE: TStringField
      FieldName = 'NM_MAE'
      Size = 35
    end
    object SQLClientesNM_LOC_TRB: TStringField
      FieldName = 'NM_LOC_TRB'
      Size = 35
    end
    object SQLClientesNM_FUN_TRB: TStringField
      FieldName = 'NM_FUN_TRB'
      Size = 30
    end
    object SQLClientesVR_SAL: TSingleField
      FieldName = 'VR_SAL'
    end
    object SQLClientesNO_FON_TRB: TStringField
      FieldName = 'NO_FON_TRB'
      Size = 14
    end
    object SQLClientesCD_CAR_COB: TStringField
      FieldName = 'CD_CAR_COB'
      Size = 1
    end
    object SQLClientesDT_CAR_COB: TSQLTimeStampField
      FieldName = 'DT_CAR_COB'
    end
    object SQLClientesDT_ULT_LGC: TSQLTimeStampField
      FieldName = 'DT_ULT_LGC'
    end
    object SQLClientesDT_PRX_LGC: TSQLTimeStampField
      FieldName = 'DT_PRX_LGC'
    end
    object SQLClientesTP_CAT: TStringField
      FieldName = 'TP_CAT'
      Size = 5
    end
    object SQLClientesMD_ATR: TStringField
      FieldName = 'MD_ATR'
      Size = 6
    end
    object SQLClientesNO_DIA_ATR: TStringField
      FieldName = 'NO_DIA_ATR'
      Size = 12
    end
    object SQLClientesTT_TIT_PRT: TSingleField
      FieldName = 'TT_TIT_PRT'
    end
    object SQLClientesNO_ULT_OS: TStringField
      FieldName = 'NO_ULT_OS'
      Size = 6
    end
    object SQLClientesCD_VEN: TStringField
      FieldName = 'CD_VEN'
      Size = 3
    end
    object SQLClientesDS_OBS_AUX: TBlobField
      FieldName = 'DS_OBS_AUX'
      Size = 1
    end
    object SQLClientesNO_PLC_VEI: TStringField
      FieldName = 'NO_PLC_VEI'
      Size = 8
    end
    object SQLClientesNM_EMP_CM1: TStringField
      FieldName = 'NM_EMP_CM1'
      Size = 40
    end
    object SQLClientesNO_FON_CM1: TStringField
      FieldName = 'NO_FON_CM1'
      Size = 14
    end
    object SQLClientesDT_CAD_CM1: TSQLTimeStampField
      FieldName = 'DT_CAD_CM1'
    end
    object SQLClientesFO_PGT_CM1: TStringField
      FieldName = 'FO_PGT_CM1'
      Size = 1
    end
    object SQLClientesVR_MFT_CM1: TSingleField
      FieldName = 'VR_MFT_CM1'
    end
    object SQLClientesDT_MFT_CM1: TSQLTimeStampField
      FieldName = 'DT_MFT_CM1'
    end
    object SQLClientesVR_UCP_CM1: TSingleField
      FieldName = 'VR_UCP_CM1'
    end
    object SQLClientesDT_UCP_CM1: TSQLTimeStampField
      FieldName = 'DT_UCP_CM1'
    end
    object SQLClientesVR_MDM_CM1: TSingleField
      FieldName = 'VR_MDM_CM1'
    end
    object SQLClientesVR_LMT_CM1: TSingleField
      FieldName = 'VR_LMT_CM1'
    end
    object SQLClientesTP_CCT_CM1: TStringField
      FieldName = 'TP_CCT_CM1'
      Size = 1
    end
    object SQLClientesNM_INF_CM1: TStringField
      FieldName = 'NM_INF_CM1'
      Size = 15
    end
    object SQLClientesSN_PGP_CM1: TStringField
      FieldName = 'SN_PGP_CM1'
      Size = 1
    end
    object SQLClientesMD_ATR_CM1: TStringField
      FieldName = 'MD_ATR_CM1'
      Size = 3
    end
    object SQLClientesDS_OBS_CM1: TBlobField
      FieldName = 'DS_OBS_CM1'
      Size = 1
    end
    object SQLClientesNM_BCO_CM1: TStringField
      FieldName = 'NM_BCO_CM1'
    end
    object SQLClientesCD_AGC_CM1: TStringField
      FieldName = 'CD_AGC_CM1'
      Size = 6
    end
    object SQLClientesNO_CTA_CM1: TStringField
      FieldName = 'NO_CTA_CM1'
      Size = 15
    end
    object SQLClientesDT_ABC_CM1: TSQLTimeStampField
      FieldName = 'DT_ABC_CM1'
    end
    object SQLClientesNO_FBC_CM1: TStringField
      FieldName = 'NO_FBC_CM1'
      Size = 14
    end
    object SQLClientesNM_GBC_CM1: TStringField
      FieldName = 'NM_GBC_CM1'
    end
    object SQLClientesNM_EMP_CM2: TStringField
      FieldName = 'NM_EMP_CM2'
      Size = 40
    end
    object SQLClientesNO_FON_CM2: TStringField
      FieldName = 'NO_FON_CM2'
      Size = 14
    end
    object SQLClientesDT_CAD_CM2: TSQLTimeStampField
      FieldName = 'DT_CAD_CM2'
    end
    object SQLClientesFO_PGT_CM2: TStringField
      FieldName = 'FO_PGT_CM2'
      Size = 1
    end
    object SQLClientesVR_MFT_CM2: TSingleField
      FieldName = 'VR_MFT_CM2'
    end
    object SQLClientesDT_MFT_CM2: TSQLTimeStampField
      FieldName = 'DT_MFT_CM2'
    end
    object SQLClientesVR_UCP_CM2: TSingleField
      FieldName = 'VR_UCP_CM2'
    end
    object SQLClientesDT_UCP_CM2: TSQLTimeStampField
      FieldName = 'DT_UCP_CM2'
    end
    object SQLClientesVR_MDM_CM2: TSingleField
      FieldName = 'VR_MDM_CM2'
    end
    object SQLClientesVR_LMT_CM2: TSingleField
      FieldName = 'VR_LMT_CM2'
    end
    object SQLClientesTP_CCT_CM2: TStringField
      FieldName = 'TP_CCT_CM2'
      Size = 1
    end
    object SQLClientesNM_INF_CM2: TStringField
      FieldName = 'NM_INF_CM2'
      Size = 15
    end
    object SQLClientesSN_PGP_CM2: TStringField
      FieldName = 'SN_PGP_CM2'
      Size = 1
    end
    object SQLClientesMD_ATR_CM2: TStringField
      FieldName = 'MD_ATR_CM2'
      Size = 3
    end
    object SQLClientesDS_OBS_CM2: TBlobField
      FieldName = 'DS_OBS_CM2'
      Size = 1
    end
    object SQLClientesNM_BCO_CM2: TStringField
      FieldName = 'NM_BCO_CM2'
    end
    object SQLClientesCD_AGC_CM2: TStringField
      FieldName = 'CD_AGC_CM2'
      Size = 6
    end
    object SQLClientesNO_CTA_CM2: TStringField
      FieldName = 'NO_CTA_CM2'
      Size = 15
    end
    object SQLClientesDT_ABC_CM2: TSQLTimeStampField
      FieldName = 'DT_ABC_CM2'
    end
    object SQLClientesNO_FBC_CM2: TStringField
      FieldName = 'NO_FBC_CM2'
      Size = 14
    end
    object SQLClientesNM_GBC_CM2: TStringField
      FieldName = 'NM_GBC_CM2'
    end
    object SQLClientesNM_EMP_CM3: TStringField
      FieldName = 'NM_EMP_CM3'
    end
    object SQLClientesNO_FON_CM3: TStringField
      FieldName = 'NO_FON_CM3'
      Size = 14
    end
    object SQLClientesDT_CAD_CM3: TSQLTimeStampField
      FieldName = 'DT_CAD_CM3'
    end
    object SQLClientesFO_PGT_CM3: TStringField
      FieldName = 'FO_PGT_CM3'
      Size = 1
    end
    object SQLClientesVR_MFT_CM3: TSingleField
      FieldName = 'VR_MFT_CM3'
    end
    object SQLClientesDT_MFT_CM3: TSQLTimeStampField
      FieldName = 'DT_MFT_CM3'
    end
    object SQLClientesVR_UCP_CM3: TSingleField
      FieldName = 'VR_UCP_CM3'
    end
    object SQLClientesDT_UCP_CM3: TSQLTimeStampField
      FieldName = 'DT_UCP_CM3'
    end
    object SQLClientesVR_MDM_CM3: TSingleField
      FieldName = 'VR_MDM_CM3'
    end
    object SQLClientesVR_LMT_CM3: TSingleField
      FieldName = 'VR_LMT_CM3'
    end
    object SQLClientesTP_CCT_CM3: TStringField
      FieldName = 'TP_CCT_CM3'
      Size = 1
    end
    object SQLClientesNM_INF_CM3: TStringField
      FieldName = 'NM_INF_CM3'
      Size = 15
    end
    object SQLClientesSN_PGP_CM3: TStringField
      FieldName = 'SN_PGP_CM3'
      Size = 1
    end
    object SQLClientesMD_ATR_CM3: TStringField
      FieldName = 'MD_ATR_CM3'
      Size = 3
    end
    object SQLClientesDS_OBS_CM3: TStringField
      FieldName = 'DS_OBS_CM3'
      Size = 45
    end
    object SQLClientesNM_BCO_CM3: TStringField
      FieldName = 'NM_BCO_CM3'
    end
    object SQLClientesCD_AGC_CM3: TStringField
      FieldName = 'CD_AGC_CM3'
      Size = 6
    end
    object SQLClientesNO_CTA_CM3: TStringField
      FieldName = 'NO_CTA_CM3'
      Size = 15
    end
    object SQLClientesDT_ABC_CM3: TSQLTimeStampField
      FieldName = 'DT_ABC_CM3'
    end
    object SQLClientesNO_FBC_CM3: TStringField
      FieldName = 'NO_FBC_CM3'
      Size = 14
    end
    object SQLClientesNM_GBC_CM3: TStringField
      FieldName = 'NM_GBC_CM3'
    end
    object SQLClientesDT_FDC: TSQLTimeStampField
      FieldName = 'DT_FDC'
    end
    object SQLClientesRG_TBT_ANT: TStringField
      FieldName = 'RG_TBT_ANT'
    end
    object SQLClientesRG_TBT_ATU: TStringField
      FieldName = 'RG_TBT_ATU'
    end
    object SQLClientesNM_SOC_1: TStringField
      FieldName = 'NM_SOC_1'
      Size = 35
    end
    object SQLClientesDT_ENT_SC1: TSQLTimeStampField
      FieldName = 'DT_ENT_SC1'
    end
    object SQLClientesPC_EMP_SC1: TSingleField
      FieldName = 'PC_EMP_SC1'
    end
    object SQLClientesRG_SOC_1: TStringField
      FieldName = 'RG_SOC_1'
      Size = 15
    end
    object SQLClientesNO_CPF_SC1: TStringField
      FieldName = 'NO_CPF_SC1'
      Size = 11
    end
    object SQLClientesNM_RUA_SC1: TStringField
      FieldName = 'NM_RUA_SC1'
      Size = 40
    end
    object SQLClientesNM_BAI_SC1: TStringField
      FieldName = 'NM_BAI_SC1'
      Size = 25
    end
    object SQLClientesNO_FON_SC1: TStringField
      FieldName = 'NO_FON_SC1'
      Size = 14
    end
    object SQLClientesNO_CEL_SC1: TStringField
      FieldName = 'NO_CEL_SC1'
      Size = 14
    end
    object SQLClientesNM_CID_SC1: TStringField
      FieldName = 'NM_CID_SC1'
      Size = 35
    end
    object SQLClientesNO_CEP_SC1: TStringField
      FieldName = 'NO_CEP_SC1'
      Size = 9
    end
    object SQLClientesUF_CID_SC1: TStringField
      FieldName = 'UF_CID_SC1'
      Size = 2
    end
    object SQLClientesCD_PAI_SC1: TStringField
      FieldName = 'CD_PAI_SC1'
      Size = 4
    end
    object SQLClientesNM_RF1_SC1: TStringField
      FieldName = 'NM_RF1_SC1'
      Size = 30
    end
    object SQLClientesNO_FR1_SC1: TStringField
      FieldName = 'NO_FR1_SC1'
      Size = 14
    end
    object SQLClientesNM_RF2_SC1: TStringField
      FieldName = 'NM_RF2_SC1'
      Size = 30
    end
    object SQLClientesNO_FR2_SC1: TStringField
      FieldName = 'NO_FR2_SC1'
      Size = 14
    end
    object SQLClientesNM_BC1_SC1: TStringField
      FieldName = 'NM_BC1_SC1'
    end
    object SQLClientesCD_AG1_SC1: TStringField
      FieldName = 'CD_AG1_SC1'
      Size = 6
    end
    object SQLClientesNO_CT1_SC1: TStringField
      FieldName = 'NO_CT1_SC1'
      Size = 15
    end
    object SQLClientesDT_AB1_SC1: TSQLTimeStampField
      FieldName = 'DT_AB1_SC1'
    end
    object SQLClientesNO_FB1_SC1: TStringField
      FieldName = 'NO_FB1_SC1'
      Size = 14
    end
    object SQLClientesNM_GB1_SC1: TStringField
      FieldName = 'NM_GB1_SC1'
    end
    object SQLClientesNM_BC2_SC1: TStringField
      FieldName = 'NM_BC2_SC1'
    end
    object SQLClientesCD_AG2_SC1: TStringField
      FieldName = 'CD_AG2_SC1'
      Size = 6
    end
    object SQLClientesNO_CT2_SC1: TStringField
      FieldName = 'NO_CT2_SC1'
      Size = 15
    end
    object SQLClientesDT_AB2_SC1: TSQLTimeStampField
      FieldName = 'DT_AB2_SC1'
    end
    object SQLClientesNO_FB2_SC1: TStringField
      FieldName = 'NO_FB2_SC1'
      Size = 14
    end
    object SQLClientesNM_GB2_SC1: TStringField
      FieldName = 'NM_GB2_SC1'
    end
    object SQLClientesNM_SOC_2: TStringField
      FieldName = 'NM_SOC_2'
      Size = 35
    end
    object SQLClientesDT_ENT_SC2: TSQLTimeStampField
      FieldName = 'DT_ENT_SC2'
    end
    object SQLClientesPC_EMP_SC2: TSingleField
      FieldName = 'PC_EMP_SC2'
    end
    object SQLClientesRG_SOC_2: TStringField
      FieldName = 'RG_SOC_2'
      Size = 15
    end
    object SQLClientesNM_BAI_SC2: TStringField
      FieldName = 'NM_BAI_SC2'
      Size = 25
    end
    object SQLClientesNO_FON_SC2: TStringField
      FieldName = 'NO_FON_SC2'
      Size = 14
    end
    object SQLClientesNO_CEL_SC2: TStringField
      FieldName = 'NO_CEL_SC2'
      Size = 14
    end
    object SQLClientesNM_CID_SC2: TStringField
      FieldName = 'NM_CID_SC2'
      Size = 35
    end
    object SQLClientesNO_CEP_SC2: TStringField
      FieldName = 'NO_CEP_SC2'
      Size = 9
    end
    object SQLClientesUF_CID_SC2: TStringField
      FieldName = 'UF_CID_SC2'
      Size = 2
    end
    object SQLClientesCD_PAI_SC2: TStringField
      FieldName = 'CD_PAI_SC2'
      Size = 4
    end
    object SQLClientesNM_RF1_SC2: TStringField
      FieldName = 'NM_RF1_SC2'
      Size = 30
    end
    object SQLClientesNO_FR1_SC2: TStringField
      FieldName = 'NO_FR1_SC2'
      Size = 14
    end
    object SQLClientesNM_RF2_SC2: TStringField
      FieldName = 'NM_RF2_SC2'
      Size = 30
    end
    object SQLClientesNO_FR2_SC2: TStringField
      FieldName = 'NO_FR2_SC2'
      Size = 14
    end
    object SQLClientesNM_BC1_SC2: TStringField
      FieldName = 'NM_BC1_SC2'
    end
    object SQLClientesCD_AG1_SC2: TStringField
      FieldName = 'CD_AG1_SC2'
      Size = 6
    end
    object SQLClientesNO_CT1_SC2: TStringField
      FieldName = 'NO_CT1_SC2'
      Size = 15
    end
    object SQLClientesDT_AB1_SC2: TSQLTimeStampField
      FieldName = 'DT_AB1_SC2'
    end
    object SQLClientesNO_FB1_SC2: TStringField
      FieldName = 'NO_FB1_SC2'
      Size = 14
    end
    object SQLClientesNM_GB1_SC2: TStringField
      FieldName = 'NM_GB1_SC2'
    end
    object SQLClientesNM_BC2_SC2: TStringField
      FieldName = 'NM_BC2_SC2'
    end
    object SQLClientesCD_AG2_SC2: TStringField
      FieldName = 'CD_AG2_SC2'
      Size = 6
    end
    object SQLClientesNO_CT2_SC2: TStringField
      FieldName = 'NO_CT2_SC2'
      Size = 15
    end
    object SQLClientesDT_AB2_SC2: TSQLTimeStampField
      FieldName = 'DT_AB2_SC2'
    end
    object SQLClientesNO_FB2_SC2: TStringField
      FieldName = 'NO_FB2_SC2'
      Size = 14
    end
    object SQLClientesNM_GB2_SC2: TStringField
      FieldName = 'NM_GB2_SC2'
    end
    object SQLClientesDT_ULT_FEC: TSQLTimeStampField
      FieldName = 'DT_ULT_FEC'
    end
    object SQLClientesVR_DB_CR_F: TSingleField
      FieldName = 'VR_DB_CR_F'
    end
    object SQLClientesVR_DB_CR_A: TSingleField
      FieldName = 'VR_DB_CR_A'
    end
    object SQLClientesCD_OLD: TStringField
      FieldName = 'CD_OLD'
      Size = 6
    end
    object SQLClientesCD_CLI_GRA: TStringField
      FieldName = 'CD_CLI_GRA'
      Size = 6
    end
    object SQLClientesCD_CLI_IND: TStringField
      FieldName = 'CD_CLI_IND'
      Size = 6
    end
    object SQLClientesCD_CLI_TO: TStringField
      FieldName = 'CD_CLI_TO'
      Size = 6
    end
    object SQLClientesNO_CEL_VIV: TStringField
      FieldName = 'NO_CEL_VIV'
      Size = 14
    end
    object SQLClientesNO_CEL_OI: TStringField
      FieldName = 'NO_CEL_OI'
      Size = 14
    end
    object SQLClientesNO_CEL_TIM: TStringField
      FieldName = 'NO_CEL_TIM'
      Size = 14
    end
    object SQLClientesNO_CEL_CLA: TStringField
      FieldName = 'NO_CEL_CLA'
      Size = 14
    end
    object SQLClientesCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLClientesID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLClientesID_CEP_COB: TIntegerField
      FieldName = 'ID_CEP_COB'
      Required = True
    end
    object SQLClientesID_CEP_AV1: TIntegerField
      FieldName = 'ID_CEP_AV1'
    end
    object SQLClientesID_CEP_AV2: TIntegerField
      FieldName = 'ID_CEP_AV2'
    end
    object SQLClientesNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLClientesUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLClientesCOBNM_BAI: TStringField
      FieldName = 'COBNM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesCOBNM_CID: TStringField
      FieldName = 'COBNM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesCOBNM_RUA: TStringField
      FieldName = 'COBNM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesCOBNO_CEP: TStringField
      FieldName = 'COBNO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLClientesCOBUF_CID: TStringField
      FieldName = 'COBUF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLClientesAV1NM_BAI: TStringField
      FieldName = 'AV1NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesAV1NM_CID: TStringField
      FieldName = 'AV1NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesAV1NM_RUA: TStringField
      FieldName = 'AV1NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesAV1NO_CEP: TStringField
      FieldName = 'AV1NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLClientesAV1UF_CID: TStringField
      FieldName = 'AV1UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLClientesAV2NM_BAI: TStringField
      FieldName = 'AV2NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesAV2NM_CID: TStringField
      FieldName = 'AV2NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesAV2NM_RUA: TStringField
      FieldName = 'AV2NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLClientesAV2NO_CEP: TStringField
      FieldName = 'AV2NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLClientesAV2UF_CID: TStringField
      FieldName = 'AV2UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLClientesNO_EDR_COB: TStringField
      FieldName = 'NO_EDR_COB'
      Size = 10
    end
    object SQLClientesDT_ABT: TSQLTimeStampField
      FieldName = 'DT_ABT'
    end
  end
  object DSPClientes: TDataSetProvider
    DataSet = SQLClientes
    Left = 965
    Top = 256
  end
  object CDSClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPClientes'
    BeforePost = CDSClientesBeforePost
    Left = 965
    Top = 316
    object CDSClientesID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000,000'
    end
    object CDSClientesNM_CLI: TStringField
      FieldName = 'NM_CLI'
      Required = True
      Size = 45
    end
    object CDSClientesST_CLI: TStringField
      FieldName = 'ST_CLI'
      Size = 10
    end
    object CDSClientesID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Required = True
    end
    object CDSClientesCD_CTG: TStringField
      FieldName = 'CD_CTG'
      Size = 3
    end
    object CDSClientesDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      Required = True
    end
    object CDSClientesSN_DCL: TStringField
      FieldName = 'SN_DCL'
      Size = 1
    end
    object CDSClientesNM_FAN: TStringField
      FieldName = 'NM_FAN'
      Size = 45
    end
    object CDSClientesID_CEP: TIntegerField
      FieldName = 'ID_CEP'
      Required = True
    end
    object CDSClientesNO_EDR: TStringField
      FieldName = 'NO_EDR'
      Size = 10
    end
    object CDSClientesDS_CPL: TStringField
      FieldName = 'DS_CPL'
      Size = 15
    end
    object CDSClientesNO_FON: TStringField
      FieldName = 'NO_FON'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesNO_FAX: TStringField
      FieldName = 'NO_FAX'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesNO_CEL: TStringField
      FieldName = 'NO_CEL'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesCD_PAI: TStringField
      FieldName = 'CD_PAI'
      Size = 4
    end
    object CDSClientesNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      OnGetText = CDSClientesNO_CNP_CPFGetText
      Size = 18
    end
    object CDSClientesNO_INS_EST: TStringField
      FieldName = 'NO_INS_EST'
      Size = 18
    end
    object CDSClientesTP_CSM_FIN: TStringField
      FieldName = 'TP_CSM_FIN'
      Size = 1
    end
    object CDSClientesID_IE: TStringField
      DisplayWidth = 1
      FieldName = 'ID_IE'
      Size = 1
    end
    object CDSClientesNM_CTT: TStringField
      FieldName = 'NM_CTT'
      Size = 35
    end
    object CDSClientesE_MAIL_CTT: TStringField
      FieldName = 'E_MAIL_CTT'
      Size = 35
    end
    object CDSClientesDS_CPL_COB: TStringField
      FieldName = 'DS_CPL_COB'
      Size = 15
    end
    object CDSClientesNO_FON_COB: TStringField
      FieldName = 'NO_FON_COB'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 14
    end
    object CDSClientesNO_FAX_COB: TStringField
      FieldName = 'NO_FAX_COB'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 14
    end
    object CDSClientesNO_CEL_COB: TStringField
      FieldName = 'NO_CEL_COB'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesCD_PAI_COB: TStringField
      FieldName = 'CD_PAI_COB'
      Size = 4
    end
    object CDSClientesNM_CTT_COB: TStringField
      FieldName = 'NM_CTT_COB'
      Size = 35
    end
    object CDSClientesE_MAIL_COB: TStringField
      FieldName = 'E_MAIL_COB'
      Size = 35
    end
    object CDSClientesE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 35
    end
    object CDSClientesHOME_PAGE: TStringField
      FieldName = 'HOME_PAGE'
      Size = 35
    end
    object CDSClientesCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 6
    end
    object CDSClientesCD_CTB_DEB: TStringField
      FieldName = 'CD_CTB_DEB'
      Size = 6
    end
    object CDSClientesCD_CTB_CRD: TStringField
      FieldName = 'CD_CTB_CRD'
      Size = 6
    end
    object CDSClientesNM_CTT_VEN: TStringField
      FieldName = 'NM_CTT_VEN'
      Size = 35
    end
    object CDSClientesNO_RAM_VEN: TStringField
      FieldName = 'NO_RAM_VEN'
      Size = 4
    end
    object CDSClientesDT_NCT_VEN: TSQLTimeStampField
      FieldName = 'DT_NCT_VEN'
    end
    object CDSClientesE_MAIL_VEN: TStringField
      FieldName = 'E_MAIL_VEN'
      Size = 35
    end
    object CDSClientesNM_CTT_FIN: TStringField
      FieldName = 'NM_CTT_FIN'
      Size = 35
    end
    object CDSClientesNO_RAM_FIN: TStringField
      FieldName = 'NO_RAM_FIN'
      Size = 4
    end
    object CDSClientesDT_NCT_FIN: TSQLTimeStampField
      FieldName = 'DT_NCT_FIN'
    end
    object CDSClientesE_MAIL_FIN: TStringField
      FieldName = 'E_MAIL_FIN'
      Size = 35
    end
    object CDSClientesNO_PED_CMP: TStringField
      FieldName = 'NO_PED_CMP'
      Size = 6
    end
    object CDSClientesPZ_PGT_CMP: TStringField
      FieldName = 'PZ_PGT_CMP'
      Size = 30
    end
    object CDSClientesPZ_PGT_VEN: TStringField
      FieldName = 'PZ_PGT_VEN'
      Size = 30
    end
    object CDSClientesVR_LMT_CRD: TSingleField
      DefaultExpression = '0'
      FieldName = 'VR_LMT_CRD'
    end
    object CDSClientesVR_LMT_AUX: TSingleField
      FieldName = 'VR_LMT_AUX'
    end
    object CDSClientesCD_LBR_LMT: TStringField
      FieldName = 'CD_LBR_LMT'
      Size = 3
    end
    object CDSClientesVR_LMT_ANT: TSingleField
      FieldName = 'VR_LMT_ANT'
    end
    object CDSClientesVR_LMA_ANT: TSingleField
      FieldName = 'VR_LMA_ANT'
    end
    object CDSClientesDT_LMT_CRD: TSQLTimeStampField
      FieldName = 'DT_LMT_CRD'
    end
    object CDSClientesSN_CC: TStringField
      FieldName = 'SN_CC'
      Size = 1
    end
    object CDSClientesCD_CTL: TStringField
      FieldName = 'CD_CTL'
      Size = 40
    end
    object CDSClientesVR_MAI_CMP: TSingleField
      FieldName = 'VR_MAI_CMP'
    end
    object CDSClientesDT_MAI_CMP: TSQLTimeStampField
      FieldName = 'DT_MAI_CMP'
    end
    object CDSClientesVR_ULT_CMP: TSingleField
      FieldName = 'VR_ULT_CMP'
    end
    object CDSClientesDT_ULT_CMP: TSQLTimeStampField
      FieldName = 'DT_ULT_CMP'
    end
    object CDSClientesCD_LOC_COB: TStringField
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object CDSClientesCD_TRN: TStringField
      FieldName = 'CD_TRN'
      Size = 3
    end
    object CDSClientesNO_IDT: TStringField
      FieldName = 'NO_IDT'
      Size = 16
    end
    object CDSClientesST_CIV: TStringField
      FieldName = 'ST_CIV'
      Size = 1
    end
    object CDSClientesNM_CJG: TStringField
      FieldName = 'NM_CJG'
      Size = 35
    end
    object CDSClientesDT_NCT: TSQLTimeStampField
      FieldName = 'DT_NCT'
    end
    object CDSClientesNM_CID_NCT: TStringField
      FieldName = 'NM_CID_NCT'
      Size = 35
    end
    object CDSClientesUF_CID_NCT: TStringField
      FieldName = 'UF_CID_NCT'
      Size = 2
    end
    object CDSClientesNM_PAI: TStringField
      FieldName = 'NM_PAI'
      Size = 35
    end
    object CDSClientesNM_MAE: TStringField
      FieldName = 'NM_MAE'
      Size = 35
    end
    object CDSClientesNM_LOC_TRB: TStringField
      FieldName = 'NM_LOC_TRB'
      Size = 35
    end
    object CDSClientesNM_FUN_TRB: TStringField
      FieldName = 'NM_FUN_TRB'
      Size = 30
    end
    object CDSClientesVR_SAL: TSingleField
      FieldName = 'VR_SAL'
    end
    object CDSClientesNO_FON_TRB: TStringField
      FieldName = 'NO_FON_TRB'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 14
    end
    object CDSClientesCD_CAR_COB: TStringField
      FieldName = 'CD_CAR_COB'
      Size = 1
    end
    object CDSClientesDT_CAR_COB: TSQLTimeStampField
      FieldName = 'DT_CAR_COB'
    end
    object CDSClientesDT_ULT_LGC: TSQLTimeStampField
      FieldName = 'DT_ULT_LGC'
    end
    object CDSClientesDT_PRX_LGC: TSQLTimeStampField
      FieldName = 'DT_PRX_LGC'
    end
    object CDSClientesTP_CAT: TStringField
      FieldName = 'TP_CAT'
      Size = 5
    end
    object CDSClientesMD_ATR: TStringField
      FieldName = 'MD_ATR'
      Size = 6
    end
    object CDSClientesNO_DIA_ATR: TStringField
      FieldName = 'NO_DIA_ATR'
      Size = 12
    end
    object CDSClientesTT_TIT_PRT: TSingleField
      FieldName = 'TT_TIT_PRT'
    end
    object CDSClientesNO_ULT_OS: TStringField
      FieldName = 'NO_ULT_OS'
      Size = 6
    end
    object CDSClientesCD_VEN: TStringField
      FieldName = 'CD_VEN'
      Size = 3
    end
    object CDSClientesDS_OBS_AUX: TBlobField
      FieldName = 'DS_OBS_AUX'
      Size = 1
    end
    object CDSClientesNO_PLC_VEI: TStringField
      FieldName = 'NO_PLC_VEI'
      Size = 8
    end
    object CDSClientesNM_EMP_CM1: TStringField
      FieldName = 'NM_EMP_CM1'
      Size = 40
    end
    object CDSClientesNO_FON_CM1: TStringField
      FieldName = 'NO_FON_CM1'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 14
    end
    object CDSClientesDT_CAD_CM1: TSQLTimeStampField
      FieldName = 'DT_CAD_CM1'
    end
    object CDSClientesFO_PGT_CM1: TStringField
      FieldName = 'FO_PGT_CM1'
      Size = 1
    end
    object CDSClientesVR_MFT_CM1: TSingleField
      FieldName = 'VR_MFT_CM1'
    end
    object CDSClientesDT_MFT_CM1: TSQLTimeStampField
      FieldName = 'DT_MFT_CM1'
    end
    object CDSClientesVR_UCP_CM1: TSingleField
      FieldName = 'VR_UCP_CM1'
    end
    object CDSClientesDT_UCP_CM1: TSQLTimeStampField
      FieldName = 'DT_UCP_CM1'
    end
    object CDSClientesVR_MDM_CM1: TSingleField
      FieldName = 'VR_MDM_CM1'
    end
    object CDSClientesVR_LMT_CM1: TSingleField
      FieldName = 'VR_LMT_CM1'
    end
    object CDSClientesTP_CCT_CM1: TStringField
      FieldName = 'TP_CCT_CM1'
      Size = 1
    end
    object CDSClientesNM_INF_CM1: TStringField
      FieldName = 'NM_INF_CM1'
      Size = 15
    end
    object CDSClientesSN_PGP_CM1: TStringField
      FieldName = 'SN_PGP_CM1'
      Size = 1
    end
    object CDSClientesMD_ATR_CM1: TStringField
      FieldName = 'MD_ATR_CM1'
      Size = 3
    end
    object CDSClientesDS_OBS_CM1: TBlobField
      FieldName = 'DS_OBS_CM1'
      Size = 1
    end
    object CDSClientesNM_BCO_CM1: TStringField
      FieldName = 'NM_BCO_CM1'
    end
    object CDSClientesCD_AGC_CM1: TStringField
      FieldName = 'CD_AGC_CM1'
      Size = 6
    end
    object CDSClientesNO_CTA_CM1: TStringField
      FieldName = 'NO_CTA_CM1'
      Size = 15
    end
    object CDSClientesDT_ABC_CM1: TSQLTimeStampField
      FieldName = 'DT_ABC_CM1'
    end
    object CDSClientesNO_FBC_CM1: TStringField
      FieldName = 'NO_FBC_CM1'
      Size = 14
    end
    object CDSClientesNM_GBC_CM1: TStringField
      FieldName = 'NM_GBC_CM1'
    end
    object CDSClientesNM_EMP_CM2: TStringField
      FieldName = 'NM_EMP_CM2'
      Size = 40
    end
    object CDSClientesNO_FON_CM2: TStringField
      FieldName = 'NO_FON_CM2'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 14
    end
    object CDSClientesDT_CAD_CM2: TSQLTimeStampField
      FieldName = 'DT_CAD_CM2'
    end
    object CDSClientesFO_PGT_CM2: TStringField
      FieldName = 'FO_PGT_CM2'
      Size = 1
    end
    object CDSClientesVR_MFT_CM2: TSingleField
      FieldName = 'VR_MFT_CM2'
    end
    object CDSClientesDT_MFT_CM2: TSQLTimeStampField
      FieldName = 'DT_MFT_CM2'
    end
    object CDSClientesVR_UCP_CM2: TSingleField
      FieldName = 'VR_UCP_CM2'
    end
    object CDSClientesDT_UCP_CM2: TSQLTimeStampField
      FieldName = 'DT_UCP_CM2'
    end
    object CDSClientesVR_MDM_CM2: TSingleField
      FieldName = 'VR_MDM_CM2'
    end
    object CDSClientesVR_LMT_CM2: TSingleField
      FieldName = 'VR_LMT_CM2'
    end
    object CDSClientesTP_CCT_CM2: TStringField
      FieldName = 'TP_CCT_CM2'
      Size = 1
    end
    object CDSClientesNM_INF_CM2: TStringField
      FieldName = 'NM_INF_CM2'
      Size = 15
    end
    object CDSClientesSN_PGP_CM2: TStringField
      FieldName = 'SN_PGP_CM2'
      Size = 1
    end
    object CDSClientesMD_ATR_CM2: TStringField
      FieldName = 'MD_ATR_CM2'
      Size = 3
    end
    object CDSClientesDS_OBS_CM2: TBlobField
      FieldName = 'DS_OBS_CM2'
      Size = 1
    end
    object CDSClientesNM_BCO_CM2: TStringField
      FieldName = 'NM_BCO_CM2'
    end
    object CDSClientesCD_AGC_CM2: TStringField
      FieldName = 'CD_AGC_CM2'
      Size = 6
    end
    object CDSClientesNO_CTA_CM2: TStringField
      FieldName = 'NO_CTA_CM2'
      Size = 15
    end
    object CDSClientesDT_ABC_CM2: TSQLTimeStampField
      FieldName = 'DT_ABC_CM2'
    end
    object CDSClientesNO_FBC_CM2: TStringField
      FieldName = 'NO_FBC_CM2'
      Size = 14
    end
    object CDSClientesNM_GBC_CM2: TStringField
      FieldName = 'NM_GBC_CM2'
    end
    object CDSClientesNM_EMP_CM3: TStringField
      FieldName = 'NM_EMP_CM3'
    end
    object CDSClientesNO_FON_CM3: TStringField
      FieldName = 'NO_FON_CM3'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 14
    end
    object CDSClientesDT_CAD_CM3: TSQLTimeStampField
      FieldName = 'DT_CAD_CM3'
    end
    object CDSClientesFO_PGT_CM3: TStringField
      FieldName = 'FO_PGT_CM3'
      Size = 1
    end
    object CDSClientesVR_MFT_CM3: TSingleField
      FieldName = 'VR_MFT_CM3'
    end
    object CDSClientesDT_MFT_CM3: TSQLTimeStampField
      FieldName = 'DT_MFT_CM3'
    end
    object CDSClientesVR_UCP_CM3: TSingleField
      FieldName = 'VR_UCP_CM3'
    end
    object CDSClientesDT_UCP_CM3: TSQLTimeStampField
      FieldName = 'DT_UCP_CM3'
    end
    object CDSClientesVR_MDM_CM3: TSingleField
      FieldName = 'VR_MDM_CM3'
    end
    object CDSClientesVR_LMT_CM3: TSingleField
      FieldName = 'VR_LMT_CM3'
    end
    object CDSClientesTP_CCT_CM3: TStringField
      FieldName = 'TP_CCT_CM3'
      Size = 1
    end
    object CDSClientesNM_INF_CM3: TStringField
      FieldName = 'NM_INF_CM3'
      Size = 15
    end
    object CDSClientesSN_PGP_CM3: TStringField
      FieldName = 'SN_PGP_CM3'
      Size = 1
    end
    object CDSClientesMD_ATR_CM3: TStringField
      FieldName = 'MD_ATR_CM3'
      Size = 3
    end
    object CDSClientesDS_OBS_CM3: TStringField
      FieldName = 'DS_OBS_CM3'
      Size = 45
    end
    object CDSClientesNM_BCO_CM3: TStringField
      FieldName = 'NM_BCO_CM3'
    end
    object CDSClientesCD_AGC_CM3: TStringField
      FieldName = 'CD_AGC_CM3'
      Size = 6
    end
    object CDSClientesNO_CTA_CM3: TStringField
      FieldName = 'NO_CTA_CM3'
      Size = 15
    end
    object CDSClientesDT_ABC_CM3: TSQLTimeStampField
      FieldName = 'DT_ABC_CM3'
    end
    object CDSClientesNO_FBC_CM3: TStringField
      FieldName = 'NO_FBC_CM3'
      Size = 14
    end
    object CDSClientesNM_GBC_CM3: TStringField
      FieldName = 'NM_GBC_CM3'
    end
    object CDSClientesDT_FDC: TSQLTimeStampField
      FieldName = 'DT_FDC'
    end
    object CDSClientesRG_TBT_ANT: TStringField
      FieldName = 'RG_TBT_ANT'
    end
    object CDSClientesRG_TBT_ATU: TStringField
      FieldName = 'RG_TBT_ATU'
    end
    object CDSClientesNM_SOC_1: TStringField
      FieldName = 'NM_SOC_1'
      Size = 35
    end
    object CDSClientesDT_ENT_SC1: TSQLTimeStampField
      FieldName = 'DT_ENT_SC1'
    end
    object CDSClientesPC_EMP_SC1: TSingleField
      FieldName = 'PC_EMP_SC1'
    end
    object CDSClientesRG_SOC_1: TStringField
      FieldName = 'RG_SOC_1'
      Size = 15
    end
    object CDSClientesNO_CPF_SC1: TStringField
      FieldName = 'NO_CPF_SC1'
      Size = 11
    end
    object CDSClientesNM_RUA_SC1: TStringField
      FieldName = 'NM_RUA_SC1'
      Size = 40
    end
    object CDSClientesNM_BAI_SC1: TStringField
      FieldName = 'NM_BAI_SC1'
      Size = 25
    end
    object CDSClientesNO_FON_SC1: TStringField
      FieldName = 'NO_FON_SC1'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 14
    end
    object CDSClientesNO_CEL_SC1: TStringField
      FieldName = 'NO_CEL_SC1'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesNM_CID_SC1: TStringField
      FieldName = 'NM_CID_SC1'
      Size = 35
    end
    object CDSClientesNO_CEP_SC1: TStringField
      FieldName = 'NO_CEP_SC1'
      Size = 9
    end
    object CDSClientesUF_CID_SC1: TStringField
      FieldName = 'UF_CID_SC1'
      Size = 2
    end
    object CDSClientesCD_PAI_SC1: TStringField
      FieldName = 'CD_PAI_SC1'
      Size = 4
    end
    object CDSClientesNM_RF1_SC1: TStringField
      FieldName = 'NM_RF1_SC1'
      Size = 30
    end
    object CDSClientesNO_FR1_SC1: TStringField
      FieldName = 'NO_FR1_SC1'
      Size = 14
    end
    object CDSClientesNM_RF2_SC1: TStringField
      FieldName = 'NM_RF2_SC1'
      Size = 30
    end
    object CDSClientesNO_FR2_SC1: TStringField
      FieldName = 'NO_FR2_SC1'
      Size = 14
    end
    object CDSClientesNM_BC1_SC1: TStringField
      FieldName = 'NM_BC1_SC1'
    end
    object CDSClientesCD_AG1_SC1: TStringField
      FieldName = 'CD_AG1_SC1'
      Size = 6
    end
    object CDSClientesNO_CT1_SC1: TStringField
      FieldName = 'NO_CT1_SC1'
      Size = 15
    end
    object CDSClientesDT_AB1_SC1: TSQLTimeStampField
      FieldName = 'DT_AB1_SC1'
    end
    object CDSClientesNO_FB1_SC1: TStringField
      FieldName = 'NO_FB1_SC1'
      Size = 14
    end
    object CDSClientesNM_GB1_SC1: TStringField
      FieldName = 'NM_GB1_SC1'
    end
    object CDSClientesNM_BC2_SC1: TStringField
      FieldName = 'NM_BC2_SC1'
    end
    object CDSClientesCD_AG2_SC1: TStringField
      FieldName = 'CD_AG2_SC1'
      Size = 6
    end
    object CDSClientesNO_CT2_SC1: TStringField
      FieldName = 'NO_CT2_SC1'
      Size = 15
    end
    object CDSClientesDT_AB2_SC1: TSQLTimeStampField
      FieldName = 'DT_AB2_SC1'
    end
    object CDSClientesNO_FB2_SC1: TStringField
      FieldName = 'NO_FB2_SC1'
      Size = 14
    end
    object CDSClientesNM_GB2_SC1: TStringField
      FieldName = 'NM_GB2_SC1'
    end
    object CDSClientesNM_SOC_2: TStringField
      FieldName = 'NM_SOC_2'
      Size = 35
    end
    object CDSClientesDT_ENT_SC2: TSQLTimeStampField
      FieldName = 'DT_ENT_SC2'
    end
    object CDSClientesPC_EMP_SC2: TSingleField
      FieldName = 'PC_EMP_SC2'
    end
    object CDSClientesRG_SOC_2: TStringField
      FieldName = 'RG_SOC_2'
      Size = 15
    end
    object CDSClientesNM_BAI_SC2: TStringField
      FieldName = 'NM_BAI_SC2'
      Size = 25
    end
    object CDSClientesNO_FON_SC2: TStringField
      FieldName = 'NO_FON_SC2'
      EditMask = '!\(99\) ####-####;0;_'
      Size = 14
    end
    object CDSClientesNO_CEL_SC2: TStringField
      FieldName = 'NO_CEL_SC2'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesNM_CID_SC2: TStringField
      FieldName = 'NM_CID_SC2'
      Size = 35
    end
    object CDSClientesNO_CEP_SC2: TStringField
      FieldName = 'NO_CEP_SC2'
      Size = 9
    end
    object CDSClientesUF_CID_SC2: TStringField
      FieldName = 'UF_CID_SC2'
      Size = 2
    end
    object CDSClientesCD_PAI_SC2: TStringField
      FieldName = 'CD_PAI_SC2'
      Size = 4
    end
    object CDSClientesNM_RF1_SC2: TStringField
      FieldName = 'NM_RF1_SC2'
      Size = 30
    end
    object CDSClientesNO_FR1_SC2: TStringField
      FieldName = 'NO_FR1_SC2'
      Size = 14
    end
    object CDSClientesNM_RF2_SC2: TStringField
      FieldName = 'NM_RF2_SC2'
      Size = 30
    end
    object CDSClientesNO_FR2_SC2: TStringField
      FieldName = 'NO_FR2_SC2'
      Size = 14
    end
    object CDSClientesNM_BC1_SC2: TStringField
      FieldName = 'NM_BC1_SC2'
    end
    object CDSClientesCD_AG1_SC2: TStringField
      FieldName = 'CD_AG1_SC2'
      Size = 6
    end
    object CDSClientesNO_CT1_SC2: TStringField
      FieldName = 'NO_CT1_SC2'
      Size = 15
    end
    object CDSClientesDT_AB1_SC2: TSQLTimeStampField
      FieldName = 'DT_AB1_SC2'
    end
    object CDSClientesNO_FB1_SC2: TStringField
      FieldName = 'NO_FB1_SC2'
      Size = 14
    end
    object CDSClientesNM_GB1_SC2: TStringField
      FieldName = 'NM_GB1_SC2'
    end
    object CDSClientesNM_BC2_SC2: TStringField
      FieldName = 'NM_BC2_SC2'
    end
    object CDSClientesCD_AG2_SC2: TStringField
      FieldName = 'CD_AG2_SC2'
      Size = 6
    end
    object CDSClientesNO_CT2_SC2: TStringField
      FieldName = 'NO_CT2_SC2'
      Size = 15
    end
    object CDSClientesDT_AB2_SC2: TSQLTimeStampField
      FieldName = 'DT_AB2_SC2'
    end
    object CDSClientesNO_FB2_SC2: TStringField
      FieldName = 'NO_FB2_SC2'
      Size = 14
    end
    object CDSClientesNM_GB2_SC2: TStringField
      FieldName = 'NM_GB2_SC2'
    end
    object CDSClientesDT_ULT_FEC: TSQLTimeStampField
      FieldName = 'DT_ULT_FEC'
    end
    object CDSClientesVR_DB_CR_F: TSingleField
      FieldName = 'VR_DB_CR_F'
    end
    object CDSClientesVR_DB_CR_A: TSingleField
      FieldName = 'VR_DB_CR_A'
    end
    object CDSClientesCD_OLD: TStringField
      FieldName = 'CD_OLD'
      Size = 6
    end
    object CDSClientesCD_CLI_GRA: TStringField
      FieldName = 'CD_CLI_GRA'
      Size = 6
    end
    object CDSClientesCD_CLI_IND: TStringField
      FieldName = 'CD_CLI_IND'
      Size = 6
    end
    object CDSClientesCD_CLI_TO: TStringField
      FieldName = 'CD_CLI_TO'
      Size = 6
    end
    object CDSClientesNO_CEL_VIV: TStringField
      FieldName = 'NO_CEL_VIV'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesNO_CEL_OI: TStringField
      FieldName = 'NO_CEL_OI'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesNO_CEL_TIM: TStringField
      FieldName = 'NO_CEL_TIM'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesNO_CEL_CLA: TStringField
      FieldName = 'NO_CEL_CLA'
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSClientesCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSClientesID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSClientesID_CEP_COB: TIntegerField
      FieldName = 'ID_CEP_COB'
      Required = True
    end
    object CDSClientesID_CEP_AV1: TIntegerField
      FieldName = 'ID_CEP_AV1'
    end
    object CDSClientesID_CEP_AV2: TIntegerField
      FieldName = 'ID_CEP_AV2'
    end
    object CDSClientesNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSClientesUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSClientesCOBNM_BAI: TStringField
      FieldName = 'COBNM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesCOBNM_CID: TStringField
      FieldName = 'COBNM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesCOBNM_RUA: TStringField
      FieldName = 'COBNM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesCOBNO_CEP: TStringField
      FieldName = 'COBNO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSClientesCOBUF_CID: TStringField
      FieldName = 'COBUF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSClientesAV1NM_BAI: TStringField
      FieldName = 'AV1NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesAV1NM_CID: TStringField
      FieldName = 'AV1NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesAV1NM_RUA: TStringField
      FieldName = 'AV1NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesAV1NO_CEP: TStringField
      FieldName = 'AV1NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSClientesAV1UF_CID: TStringField
      FieldName = 'AV1UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSClientesAV2NM_BAI: TStringField
      FieldName = 'AV2NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesAV2NM_CID: TStringField
      FieldName = 'AV2NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesAV2NM_RUA: TStringField
      FieldName = 'AV2NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSClientesAV2NO_CEP: TStringField
      FieldName = 'AV2NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSClientesAV2UF_CID: TStringField
      FieldName = 'AV2UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSClientesNO_EDR_COB: TStringField
      FieldName = 'NO_EDR_COB'
      Size = 10
    end
    object CDSClientesDT_ABT: TSQLTimeStampField
      FieldName = 'DT_ABT'
    end
  end
  object SQLAlqIcm: TSQLDataSet
    CommandText = 'select * from DB_ALQICM'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 32
    Top = 376
    object SQLAlqIcmID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLAlqIcmCD_UNF_ORI: TStringField
      FieldName = 'CD_UNF_ORI'
      Required = True
      Size = 2
    end
    object SQLAlqIcmCD_UNF_DST: TStringField
      FieldName = 'CD_UNF_DST'
      Required = True
      Size = 2
    end
    object SQLAlqIcmAL_ICM: TSingleField
      FieldName = 'AL_ICM'
      Required = True
    end
    object SQLAlqIcmCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object SQLAlqIcmID_VER_ATU: TIntegerField
      FieldName = 'ID_VER_ATU'
    end
  end
  object DSPAlqIcm: TDataSetProvider
    DataSet = SQLAlqIcm
    Left = 32
    Top = 431
  end
  object CDSAlqIcm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPAlqIcm'
    BeforePost = CDSAlqIcmBeforePost
    Left = 32
    Top = 496
    object CDSAlqIcmID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSAlqIcmCD_UNF_ORI: TStringField
      FieldName = 'CD_UNF_ORI'
      Required = True
      OnGetText = CDSAlqIcmCD_UNF_ORIGetText
      Size = 2
    end
    object CDSAlqIcmCD_UNF_DST: TStringField
      FieldName = 'CD_UNF_DST'
      Required = True
      OnGetText = CDSAlqIcmCD_UNF_DSTGetText
      Size = 2
    end
    object CDSAlqIcmAL_ICM: TSingleField
      FieldName = 'AL_ICM'
      Required = True
      DisplayFormat = '#,0.00'
    end
    object CDSAlqIcmCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object CDSAlqIcmID_VER_ATU: TIntegerField
      FieldName = 'ID_VER_ATU'
    end
  end
  object SQLcfop: TSQLDataSet
    CommandText = 'select * from db_cfop'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 120
    Top = 376
  end
  object DSPcfop: TDataSetProvider
    DataSet = SQLcfop
    Left = 122
    Top = 431
  end
  object CDScfop: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPcfop'
    BeforePost = CDScfopBeforePost
    Left = 122
    Top = 496
    object CDScfopID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object CDScfopCD_CFO: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CD_CFO'
      Required = True
      Size = 5
    end
    object CDScfopNM_CFO: TStringField
      DisplayLabel = 'Nome CFOP'
      FieldName = 'NM_CFO'
      Required = True
      Size = 60
    end
    object CDScfopSN_ICM: TStringField
      DisplayLabel = 'ICMS'
      FieldName = 'SN_ICM'
      Required = True
      Size = 3
    end
    object CDScfopSN_CTR: TStringField
      DisplayLabel = 'Financeiro'
      FieldName = 'SN_CTR'
      Required = True
      Size = 3
    end
    object CDScfopSN_DVL: TStringField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'SN_DVL'
      Required = True
      Size = 3
    end
    object CDScfopSN_ETQ: TStringField
      DisplayLabel = 'Estoque'
      FieldName = 'SN_ETQ'
      Required = True
      Size = 3
    end
    object CDScfopSN_PIS_COF: TStringField
      DisplayLabel = 'Pis/Cofins'
      FieldName = 'SN_PIS_COF'
      Required = True
      Size = 3
    end
    object CDScfopSN_CMD: TStringField
      DisplayLabel = 'Custo'
      FieldName = 'SN_CMD'
      Required = True
      Size = 3
    end
    object CDScfopCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDScfopID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLCores: TSQLDataSet
    CommandText = 'select * from db_cor'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 212
    Top = 376
  end
  object DSPCores: TDataSetProvider
    DataSet = SQLCores
    Left = 212
    Top = 436
  end
  object CDSCores: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCores'
    BeforePost = CDSCoresBeforePost
    Left = 212
    Top = 496
    object CDSCoresID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000'
    end
    object CDSCoresNM_COR: TStringField
      DisplayLabel = 'Nome da Cor'
      FieldName = 'NM_COR'
      Required = True
    end
    object CDSCoresCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSCoresID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
  end
  object SQLChqPdt: TSQLDataSet
    CommandText = 
      'SELECT db_chqpdt.*,'#13#10'db_cliente.nm_cli,'#13#10'db_cliente.id AS id_cli' +
      'ente,'#13#10'db_cliente.no_cnp_cpf,'#13#10'db_cliente.no_cel,'#13#10'db_cep.nm_cid' +
      ',db_cep.uf_cid,'#13#10'db_cliente.no_fon,'#13#10'db_vendedor.nm_ven,'#13#10'db_loc' +
      'alcobranca.no_bco,'#13#10'db_localcobranca.nm_loc_cob'#13#10#13#10'FROM db_chqpd' +
      't'#13#10#13#10'INNER JOIN db_cliente ON db_cliente.id = db_chqpdt.id_clien' +
      'te'#13#10'INNER JOIN db_cep ON db_cep.id =  db_cliente.id_cep'#13#10'LEFT OU' +
      'TER  JOIN db_vendedor ON db_vendedor.id = db_chqpdt.id_vendedor'#13 +
      #10'INNER JOIN db_localcobranca ON db_localcobranca.id =  db_chqpdt' +
      '.id_banco'#13#10'where db_chqpdt.id = 0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 302
    Top = 376
    object SQLChqPdtID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLChqPdtID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Required = True
    end
    object SQLChqPdtID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object SQLChqPdtNO_AGC: TStringField
      FieldName = 'NO_AGC'
      Size = 6
    end
    object SQLChqPdtNO_CTA: TStringField
      FieldName = 'NO_CTA'
      Size = 10
    end
    object SQLChqPdtNO_CHQ: TStringField
      FieldName = 'NO_CHQ'
      Required = True
      Size = 10
    end
    object SQLChqPdtSN_TCR: TStringField
      FieldName = 'SN_TCR'
      Size = 3
    end
    object SQLChqPdtNM_EMT: TStringField
      FieldName = 'NM_EMT'
      Required = True
      Size = 45
    end
    object SQLChqPdtNM_CID_EMT: TStringField
      FieldName = 'NM_CID_EMT'
      Required = True
      Size = 25
    end
    object SQLChqPdtUF_CID_EMT: TStringField
      FieldName = 'UF_CID_EMT'
      Required = True
      Size = 2
    end
    object SQLChqPdtDT_EMS: TSQLTimeStampField
      FieldName = 'DT_EMS'
    end
    object SQLChqPdtDT_VCT: TSQLTimeStampField
      FieldName = 'DT_VCT'
      Required = True
    end
    object SQLChqPdtDT_VCT_1: TSQLTimeStampField
      FieldName = 'DT_VCT_1'
    end
    object SQLChqPdtDT_VCT_2: TSQLTimeStampField
      FieldName = 'DT_VCT_2'
    end
    object SQLChqPdtDT_VCT_3: TSQLTimeStampField
      FieldName = 'DT_VCT_3'
    end
    object SQLChqPdtVR_CHQ: TSingleField
      FieldName = 'VR_CHQ'
      Required = True
    end
    object SQLChqPdtCD_LOC_COB: TStringField
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object SQLChqPdtDS_BDA: TStringField
      FieldName = 'DS_BDA'
      Required = True
      Size = 30
    end
    object SQLChqPdtCD_VEN: TStringField
      FieldName = 'CD_VEN'
      Size = 3
    end
    object SQLChqPdtDT_INC: TSQLTimeStampField
      FieldName = 'DT_INC'
    end
    object SQLChqPdtDS_OBS_AUX: TStringField
      FieldName = 'DS_OBS_AUX'
      Size = 50
    end
    object SQLChqPdtCD_CLI_OLD: TStringField
      FieldName = 'CD_CLI_OLD'
      Size = 6
    end
    object SQLChqPdtCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLChqPdtID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLChqPdtNM_CLI: TStringField
      FieldName = 'NM_CLI'
      ProviderFlags = []
      Size = 45
    end
    object SQLChqPdtID_CLIENTE_1: TIntegerField
      FieldName = 'ID_CLIENTE_1'
      ProviderFlags = []
    end
    object SQLChqPdtNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      ProviderFlags = []
      Size = 14
    end
    object SQLChqPdtNO_CEL: TStringField
      FieldName = 'NO_CEL'
      ProviderFlags = []
      Size = 14
    end
    object SQLChqPdtNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLChqPdtUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLChqPdtNO_FON: TStringField
      FieldName = 'NO_FON'
      ProviderFlags = []
      Size = 14
    end
    object SQLChqPdtST_CHQ: TStringField
      FieldName = 'ST_CHQ'
      Required = True
      Size = 2
    end
    object SQLChqPdtNO_CNP_CPF_1: TStringField
      FieldName = 'NO_CNP_CPF_1'
      ProviderFlags = []
      Size = 18
    end
    object SQLChqPdtID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object SQLChqPdtNM_VEN: TStringField
      FieldName = 'NM_VEN'
      ProviderFlags = []
      Size = 35
    end
    object SQLChqPdtDT_DVL_1: TSQLTimeStampField
      FieldName = 'DT_DVL_1'
    end
    object SQLChqPdtCD_ALI_1: TStringField
      FieldName = 'CD_ALI_1'
      Size = 2
    end
    object SQLChqPdtDT_DVL_2: TSQLTimeStampField
      FieldName = 'DT_DVL_2'
    end
    object SQLChqPdtCD_ALI_2: TStringField
      FieldName = 'CD_ALI_2'
      Size = 2
    end
    object SQLChqPdtSN_SPC: TStringField
      FieldName = 'SN_SPC'
      Size = 1
    end
    object SQLChqPdtST_CTR: TStringField
      FieldName = 'ST_CTR'
      Size = 1
    end
    object SQLChqPdtNO_BCO: TStringField
      FieldName = 'NO_BCO'
      ProviderFlags = []
      Size = 3
    end
    object SQLChqPdtNM_LOC_COB: TStringField
      FieldName = 'NM_LOC_COB'
      ProviderFlags = []
      Size = 15
    end
    object SQLChqPdtID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object SQLChqPdtID_CUSTODIA: TIntegerField
      FieldName = 'ID_CUSTODIA'
    end
    object SQLChqPdtDT_DPS: TSQLTimeStampField
      FieldName = 'DT_DPS'
    end
    object SQLChqPdtDT_RCB: TSQLTimeStampField
      FieldName = 'DT_RCB'
    end
  end
  object DSPChqPdt: TDataSetProvider
    DataSet = SQLChqPdt
    Left = 302
    Top = 436
  end
  object CDSChqPdt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPChqPdt'
    BeforePost = CDSChqPdtBeforePost
    Left = 302
    Top = 496
    object CDSChqPdtID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000,000'
    end
    object CDSChqPdtID_BANCO: TIntegerField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'ID_BANCO'
      Required = True
    end
    object CDSChqPdtID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'ID_CLIENTE'
      Required = True
      DisplayFormat = '000,000'
    end
    object CDSChqPdtNO_AGC: TStringField
      DisplayLabel = 'N'#250'mero Ag'#234'ncia'
      FieldName = 'NO_AGC'
      Size = 6
    end
    object CDSChqPdtNO_CTA: TStringField
      DisplayLabel = 'N'#250'mero Conta'
      FieldName = 'NO_CTA'
      Size = 10
    end
    object CDSChqPdtNO_CHQ: TStringField
      DisplayLabel = 'N'#250'mero Cheque'
      FieldName = 'NO_CHQ'
      Required = True
      Size = 10
    end
    object CDSChqPdtSN_TCR: TStringField
      FieldName = 'SN_TCR'
      Size = 3
    end
    object CDSChqPdtNM_EMT: TStringField
      DisplayLabel = 'Nome Emitente'
      FieldName = 'NM_EMT'
      Required = True
      Size = 45
    end
    object CDSChqPdtNM_CID_EMT: TStringField
      DisplayLabel = 'Cidade Emitente'
      FieldName = 'NM_CID_EMT'
      Required = True
      Size = 25
    end
    object CDSChqPdtUF_CID_EMT: TStringField
      DisplayLabel = 'UF Emitente'
      FieldName = 'UF_CID_EMT'
      Required = True
      Size = 2
    end
    object CDSChqPdtDT_EMS: TSQLTimeStampField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_EMS'
    end
    object CDSChqPdtDT_VCT: TSQLTimeStampField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DT_VCT'
      Required = True
    end
    object CDSChqPdtDT_VCT_1: TSQLTimeStampField
      DisplayLabel = 'Vencimento 1'
      FieldName = 'DT_VCT_1'
    end
    object CDSChqPdtDT_VCT_2: TSQLTimeStampField
      DisplayLabel = 'Vencimento 2'
      FieldName = 'DT_VCT_2'
    end
    object CDSChqPdtDT_VCT_3: TSQLTimeStampField
      DisplayLabel = 'Vencimento 3'
      FieldName = 'DT_VCT_3'
    end
    object CDSChqPdtVR_CHQ: TSingleField
      DisplayLabel = 'Valor Cheque'
      FieldName = 'VR_CHQ'
      Required = True
      currency = True
    end
    object CDSChqPdtCD_LOC_COB: TStringField
      DisplayLabel = 'Cod. Local'
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object CDSChqPdtDS_BDA: TStringField
      DisplayLabel = 'Banda'
      FieldName = 'DS_BDA'
      Required = True
      Size = 30
    end
    object CDSChqPdtCD_VEN: TStringField
      FieldName = 'CD_VEN'
      Size = 3
    end
    object CDSChqPdtDT_INC: TSQLTimeStampField
      DisplayLabel = 'Data Inclus'#227'o'
      FieldName = 'DT_INC'
    end
    object CDSChqPdtDS_OBS_AUX: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'DS_OBS_AUX'
      Size = 50
    end
    object CDSChqPdtCD_CLI_OLD: TStringField
      FieldName = 'CD_CLI_OLD'
      Size = 6
    end
    object CDSChqPdtCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSChqPdtID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSChqPdtNM_CLI: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NM_CLI'
      ProviderFlags = []
      Size = 45
    end
    object CDSChqPdtNO_CNP_CPF: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'NO_CNP_CPF'
      ProviderFlags = []
      Size = 14
    end
    object CDSChqPdtNO_CEL: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'NO_CEL'
      ProviderFlags = []
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSChqPdtNM_CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSChqPdtUF_CID: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSChqPdtNO_FON: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'NO_FON'
      ProviderFlags = []
      EditMask = '\(99\) ####-####;0;_'
      Size = 14
    end
    object CDSChqPdtST_CHQ: TStringField
      FieldName = 'ST_CHQ'
      Required = True
      OnGetText = CDSChqPdtST_CHQGetText
      Size = 2
    end
    object CDSChqPdtID_CLIENTE_1: TIntegerField
      FieldName = 'ID_CLIENTE_1'
      ProviderFlags = []
    end
    object CDSChqPdtNO_CNP_CPF_1: TStringField
      FieldName = 'NO_CNP_CPF_1'
      ProviderFlags = []
      Size = 18
    end
    object CDSChqPdtID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object CDSChqPdtNM_VEN: TStringField
      FieldName = 'NM_VEN'
      ProviderFlags = []
      Size = 35
    end
    object CDSChqPdtDT_DVL_1: TSQLTimeStampField
      FieldName = 'DT_DVL_1'
    end
    object CDSChqPdtCD_ALI_1: TStringField
      FieldName = 'CD_ALI_1'
      Size = 2
    end
    object CDSChqPdtDT_DVL_2: TSQLTimeStampField
      FieldName = 'DT_DVL_2'
    end
    object CDSChqPdtCD_ALI_2: TStringField
      FieldName = 'CD_ALI_2'
      Size = 2
    end
    object CDSChqPdtSN_SPC: TStringField
      FieldName = 'SN_SPC'
      Size = 1
    end
    object CDSChqPdtST_CTR: TStringField
      FieldName = 'ST_CTR'
      OnGetText = CDSChqPdtST_CTRGetText
      Size = 1
    end
    object CDSChqPdtNO_BCO: TStringField
      FieldName = 'NO_BCO'
      ProviderFlags = []
      Size = 3
    end
    object CDSChqPdtNM_LOC_COB: TStringField
      FieldName = 'NM_LOC_COB'
      ProviderFlags = []
      Size = 15
    end
    object CDSChqPdtID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object CDSChqPdtID_CUSTODIA: TIntegerField
      FieldName = 'ID_CUSTODIA'
    end
    object CDSChqPdtDT_DPS: TSQLTimeStampField
      FieldName = 'DT_DPS'
    end
    object CDSChqPdtDT_RCB: TSQLTimeStampField
      FieldName = 'DT_RCB'
    end
  end
  object SQLCest: TSQLDataSet
    CommandText = 'select * from DB_CEST'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 392
    Top = 376
  end
  object DSPCest: TDataSetProvider
    DataSet = SQLCest
    Left = 392
    Top = 436
  end
  object CDSCest: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCest'
    BeforePost = CDSAlqIcmBeforePost
    Left = 392
    Top = 496
    object CDSCestID: TIntegerField
      FieldName = 'ID'
    end
    object CDSCestCEST: TStringField
      FieldName = 'CEST'
      Required = True
      Size = 7
    end
    object CDSCestNBM: TStringField
      FieldName = 'NBM'
      Required = True
      Size = 8
    end
    object CDSCestSEGUIMENTO: TBlobField
      FieldName = 'SEGUIMENTO'
      Required = True
      OnGetText = CDSCestSEGUIMENTOGetText
      Size = 1
    end
    object CDSCestDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Required = True
      OnGetText = CDSCestDESCRICAOGetText
      Size = 1
    end
  end
  object SQLNbm: TSQLDataSet
    CommandText = 
      'select db_nbm.*, db_cest.cest,db_cest.descricao from db_nbm'#13#10'inn' +
      'er join db_cest on db_cest.id = db_nbm.id_cest'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 482
    Top = 376
    object SQLNbmID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLNbmID_CEST: TIntegerField
      FieldName = 'ID_CEST'
      Required = True
    end
    object SQLNbmNM_NBM: TStringField
      FieldName = 'NM_NBM'
      Size = 120
    end
    object SQLNbmAL_MVA: TSingleField
      FieldName = 'AL_MVA'
    end
    object SQLNbmAL_MVA_PR: TSingleField
      FieldName = 'AL_MVA_PR'
    end
    object SQLNbmAL_NAC: TSingleField
      FieldName = 'AL_NAC'
    end
    object SQLNbmAL_IMP: TSingleField
      FieldName = 'AL_IMP'
    end
    object SQLNbmCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLNbmID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLNbmDS_NBM: TBlobField
      FieldName = 'DS_NBM'
      Size = 1
    end
    object SQLNbmCEST: TStringField
      FieldName = 'CEST'
      ProviderFlags = []
      Size = 7
    end
    object SQLNbmDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 1
    end
    object SQLNbmCD_NBM: TStringField
      FieldName = 'CD_NBM'
      Size = 10
    end
  end
  object DSPNbm: TDataSetProvider
    DataSet = SQLNbm
    Left = 482
    Top = 436
  end
  object CDSNbm: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPNbm'
    BeforePost = CDSNbmBeforePost
    Left = 482
    Top = 496
    object CDSNbmID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSNbmID_CEST: TIntegerField
      FieldName = 'ID_CEST'
      Required = True
    end
    object CDSNbmNM_NBM: TStringField
      FieldName = 'NM_NBM'
      Size = 120
    end
    object CDSNbmAL_MVA: TSingleField
      FieldName = 'AL_MVA'
      DisplayFormat = '#,0.00'
    end
    object CDSNbmAL_MVA_PR: TSingleField
      FieldName = 'AL_MVA_PR'
      DisplayFormat = '#,0.00'
    end
    object CDSNbmAL_NAC: TSingleField
      FieldName = 'AL_NAC'
      DisplayFormat = '#,0.00'
    end
    object CDSNbmAL_IMP: TSingleField
      FieldName = 'AL_IMP'
      DisplayFormat = '#,0.00'
    end
    object CDSNbmCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSNbmID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSNbmDS_NBM: TBlobField
      FieldName = 'DS_NBM'
      Size = 1
    end
    object CDSNbmCEST: TStringField
      FieldName = 'CEST'
      ProviderFlags = []
      Size = 7
    end
    object CDSNbmDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 1
    end
    object CDSNbmCD_NBM: TStringField
      FieldName = 'CD_NBM'
      Size = 10
    end
  end
  object SQLContasPagar: TSQLDataSet
    CommandText = 
      'select db_ctapagar.*, db_fornecedor.nm_for,'#13#10'db_fornecedor.id as' +
      ' id_fornecedor,'#13#10'db_fornecedor.no_cnp_cpf,'#13#10'db_fornecedor.no_fon' +
      ','#13#10'db_fornecedor.no_fax,'#13#10#13#10'db_cep.nm_cid,db_cep.uf_cid, db_cep.' +
      'nm_bai, db_cep.nm_rua, db_cep.no_cep from db_ctapagar'#13#10#13#10#13#10'inner' +
      ' join db_fornecedor on db_fornecedor.id = db_ctapagar.id_for'#13#10'in' +
      'ner join db_cep on db_cep.id =  db_fornecedor.id_cep'#13#10'order by d' +
      'b_fornecedor.nm_for, db_ctapagar.no_doc,db_ctapagar.id'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 581
    Top = 376
    object SQLContasPagarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLContasPagarNO_DOC: TStringField
      FieldName = 'NO_DOC'
      Required = True
    end
    object SQLContasPagarNO_DOC_ORI: TStringField
      FieldName = 'NO_DOC_ORI'
      Required = True
    end
    object SQLContasPagarDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object SQLContasPagarST_DOC: TStringField
      FieldName = 'ST_DOC'
      Required = True
      Size = 7
    end
    object SQLContasPagarCD_MOE: TStringField
      FieldName = 'CD_MOE'
      Size = 3
    end
    object SQLContasPagarDT_EMS: TSQLTimeStampField
      FieldName = 'DT_EMS'
      Required = True
    end
    object SQLContasPagarDT_VCT: TSQLTimeStampField
      FieldName = 'DT_VCT'
      Required = True
    end
    object SQLContasPagarVR_DOC: TSingleField
      FieldName = 'VR_DOC'
    end
    object SQLContasPagarVR_DEB_DOC: TSingleField
      FieldName = 'VR_DEB_DOC'
    end
    object SQLContasPagarVR_FIN: TSingleField
      FieldName = 'VR_FIN'
    end
    object SQLContasPagarTP_JUR: TStringField
      FieldName = 'TP_JUR'
      Size = 8
    end
    object SQLContasPagarTX_JUR: TSingleField
      FieldName = 'TX_JUR'
    end
    object SQLContasPagarDT_PGT: TSQLTimeStampField
      FieldName = 'DT_PGT'
    end
    object SQLContasPagarVR_RCB: TSingleField
      FieldName = 'VR_RCB'
    end
    object SQLContasPagarVR_JUR: TSingleField
      FieldName = 'VR_JUR'
    end
    object SQLContasPagarVR_ABA_DCT: TSingleField
      FieldName = 'VR_ABA_DCT'
    end
    object SQLContasPagarVR_DEV: TSingleField
      FieldName = 'VR_DEV'
    end
    object SQLContasPagarCD_LOC_COB: TStringField
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object SQLContasPagarDT_RMS_COB: TSQLTimeStampField
      FieldName = 'DT_RMS_COB'
    end
    object SQLContasPagarCD_TIT_LOC: TStringField
      FieldName = 'CD_TIT_LOC'
    end
    object SQLContasPagarDT_COB_TIT: TSQLTimeStampField
      FieldName = 'DT_COB_TIT'
    end
    object SQLContasPagarST_TIT_LOC: TStringField
      FieldName = 'ST_TIT_LOC'
      Size = 2
    end
    object SQLContasPagarDT_ULT_MOD: TSQLTimeStampField
      FieldName = 'DT_ULT_MOD'
    end
    object SQLContasPagarSN_EXP_CTB: TStringField
      FieldName = 'SN_EXP_CTB'
      Size = 1
    end
    object SQLContasPagarSN_IMP_DOC: TStringField
      FieldName = 'SN_IMP_DOC'
      Size = 1
    end
    object SQLContasPagarSN_IMP_LIV: TStringField
      FieldName = 'SN_IMP_LIV'
      Size = 1
    end
    object SQLContasPagarTP_DOC: TStringField
      FieldName = 'TP_DOC'
      Size = 2
    end
    object SQLContasPagarCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 6
    end
    object SQLContasPagarCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLContasPagarID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLContasPagarDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 120
    end
    object SQLContasPagarID_FOR: TIntegerField
      FieldName = 'ID_FOR'
    end
    object SQLContasPagarID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
      Required = True
    end
    object SQLContasPagarNM_FOR: TStringField
      FieldName = 'NM_FOR'
      ProviderFlags = []
      Size = 45
    end
    object SQLContasPagarID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = []
    end
    object SQLContasPagarNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      ProviderFlags = []
      Size = 18
    end
    object SQLContasPagarNO_FON: TStringField
      FieldName = 'NO_FON'
      ProviderFlags = []
      Size = 13
    end
    object SQLContasPagarNO_FAX: TStringField
      FieldName = 'NO_FAX'
      ProviderFlags = []
      Size = 13
    end
    object SQLContasPagarNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLContasPagarUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLContasPagarNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLContasPagarNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLContasPagarNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
  end
  object DSPContasPagar: TDataSetProvider
    DataSet = SQLContasPagar
    Left = 581
    Top = 436
  end
  object CDSContasPagar: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'CDSContasPagarIndex1'
        Fields = 'NO_DOC'
      end>
    Params = <>
    ProviderName = 'DSPContasPagar'
    StoreDefs = True
    BeforePost = CDSContasPagarBeforePost
    Left = 581
    Top = 496
    object CDSContasPagarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSContasPagarNO_DOC: TStringField
      DisplayLabel = 'No. Documento'
      FieldName = 'NO_DOC'
      Required = True
    end
    object CDSContasPagarNO_DOC_ORI: TStringField
      DisplayLabel = 'Doc. Origem'
      FieldName = 'NO_DOC_ORI'
      Required = True
    end
    object CDSContasPagarDT_CAD: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CAD'
    end
    object CDSContasPagarST_DOC: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'ST_DOC'
      Required = True
      Size = 7
    end
    object CDSContasPagarCD_MOE: TStringField
      FieldName = 'CD_MOE'
      Size = 3
    end
    object CDSContasPagarDT_EMS: TSQLTimeStampField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_EMS'
      Required = True
    end
    object CDSContasPagarDT_VCT: TSQLTimeStampField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DT_VCT'
      Required = True
    end
    object CDSContasPagarVR_DOC: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Documento'
      FieldName = 'VR_DOC'
      EditFormat = '0.00'
      currency = True
    end
    object CDSContasPagarVR_DEB_DOC: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Valor D'#233'bito'
      FieldName = 'VR_DEB_DOC'
      currency = True
    end
    object CDSContasPagarVR_FIN: TSingleField
      DisplayLabel = 'Valor Final'
      FieldName = 'VR_FIN'
      currency = True
    end
    object CDSContasPagarTP_JUR: TStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'TP_JUR'
      Size = 8
    end
    object CDSContasPagarTX_JUR: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Taxa Juros'
      FieldName = 'TX_JUR'
      DisplayFormat = '0.00'
    end
    object CDSContasPagarDT_PGT: TSQLTimeStampField
      DisplayLabel = 'Data Pagamento'
      FieldName = 'DT_PGT'
    end
    object CDSContasPagarVR_RCB: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Recebido'
      FieldName = 'VR_RCB'
      currency = True
    end
    object CDSContasPagarVR_JUR: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Juros'
      FieldName = 'VR_JUR'
      currency = True
    end
    object CDSContasPagarVR_ABA_DCT: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Abatimento/Desc.'
      FieldName = 'VR_ABA_DCT'
      currency = True
    end
    object CDSContasPagarVR_DEV: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Devido'
      FieldName = 'VR_DEV'
      currency = True
    end
    object CDSContasPagarCD_LOC_COB: TStringField
      DisplayLabel = 'C'#243'digo Local'
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object CDSContasPagarDT_RMS_COB: TSQLTimeStampField
      DisplayLabel = 'Data Remessa'
      FieldName = 'DT_RMS_COB'
    end
    object CDSContasPagarCD_TIT_LOC: TStringField
      FieldName = 'CD_TIT_LOC'
    end
    object CDSContasPagarDT_COB_TIT: TSQLTimeStampField
      FieldName = 'DT_COB_TIT'
    end
    object CDSContasPagarST_TIT_LOC: TStringField
      FieldName = 'ST_TIT_LOC'
      Size = 2
    end
    object CDSContasPagarDT_ULT_MOD: TSQLTimeStampField
      DisplayLabel = 'Data '#218'ltima Altera'#231#227'o'
      FieldName = 'DT_ULT_MOD'
    end
    object CDSContasPagarSN_EXP_CTB: TStringField
      FieldName = 'SN_EXP_CTB'
      Size = 1
    end
    object CDSContasPagarSN_IMP_DOC: TStringField
      FieldName = 'SN_IMP_DOC'
      Size = 1
    end
    object CDSContasPagarSN_IMP_LIV: TStringField
      FieldName = 'SN_IMP_LIV'
      Size = 1
    end
    object CDSContasPagarTP_DOC: TStringField
      DisplayLabel = 'Tipo Doc.'
      FieldName = 'TP_DOC'
      Size = 2
    end
    object CDSContasPagarCD_CTB: TStringField
      FieldName = 'CD_CTB'
      Size = 6
    end
    object CDSContasPagarCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSContasPagarID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSContasPagarDS_OBS: TStringField
      FieldName = 'DS_OBS'
      Size = 120
    end
    object CDSContasPagarID_FOR: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'ID_FOR'
      DisplayFormat = '000,000'
    end
    object CDSContasPagarID_LOCAL: TIntegerField
      DisplayLabel = 'C'#243'd. Local Cobran'#231'a'
      FieldName = 'ID_LOCAL'
      Required = True
    end
    object CDSContasPagarNM_FOR: TStringField
      DisplayLabel = 'Nome Fornecedor'
      FieldName = 'NM_FOR'
      ProviderFlags = []
      Size = 45
    end
    object CDSContasPagarID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'ID_FORNECEDOR'
      ProviderFlags = []
    end
    object CDSContasPagarNO_CNP_CPF: TStringField
      Alignment = taCenter
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'NO_CNP_CPF'
      ProviderFlags = []
      EditMask = '!00.000.000/0000-00;0;_'
      Size = 18
    end
    object CDSContasPagarNO_FON: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'NO_FON'
      ProviderFlags = []
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 13
    end
    object CDSContasPagarNO_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'NO_FAX'
      ProviderFlags = []
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 13
    end
    object CDSContasPagarNM_CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSContasPagarUF_CID: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSContasPagarNM_BAI: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSContasPagarNM_RUA: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSContasPagarNO_CEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
  end
  object SQL_Historico_ALT: TSQLDataSet
    CommandText = 
      'select  *   from db_htr_cli'#13#10'where db_htr_cli.id_cliente =:pClie' +
      'nte'#13#10'order by  id desc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pCliente'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 679
    Top = 376
  end
  object DSP_Historico_ALT: TDataSetProvider
    DataSet = SQL_Historico_ALT
    Left = 679
    Top = 436
  end
  object CDS_Historico_ALT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Historico_ALT'
    Left = 679
    Top = 496
    object CDS_Historico_ALTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDS_Historico_ALTDT_ALT_TPC: TSQLTimeStampField
      FieldName = 'DT_ALT_TPC'
      Required = True
    end
    object CDS_Historico_ALTID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object CDS_Historico_ALTNM_ALT_TPC: TStringField
      DisplayWidth = 45
      FieldName = 'NM_ALT_TPC'
      Required = True
      Size = 45
    end
    object CDS_Historico_ALTCD_USU_TPC: TStringField
      FieldName = 'CD_USU_TPC'
      Required = True
      Size = 45
    end
  end
  object SQLContasReceber: TSQLDataSet
    CommandText = 
      'select db_ctarec.*, db_cliente.nm_cli,'#13#10'db_cliente.id as id_clie' +
      'nte,'#13#10'db_cliente.no_cnp_cpf,'#13#10'db_cliente.no_fon,'#13#10'db_cliente.no_' +
      'fax,'#13#10#13#10'db_cep.nm_cid,db_cep.uf_cid, db_cep.nm_bai, db_cep.nm_ru' +
      'a, db_cep.no_cep from db_ctarec'#13#10#13#10#13#10'inner join db_cliente on db' +
      '_cliente.id = db_ctarec.id_cliente'#13#10'inner join db_cep on db_cep.' +
      'id =  db_cliente.id_cep'#13#10'order by db_cliente.nm_cli, db_ctarec.n' +
      'o_doc,db_ctarec.id'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 785
    Top = 376
    object SQLContasReceberID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLContasReceberNO_DOC: TStringField
      FieldName = 'NO_DOC'
      Required = True
      Size = 15
    end
    object SQLContasReceberTP_DOC: TStringField
      FieldName = 'TP_DOC'
      Size = 9
    end
    object SQLContasReceberNO_DOC_ORI: TStringField
      DisplayWidth = 11
      FieldName = 'NO_DOC_ORI'
      Size = 11
    end
    object SQLContasReceberCD_FIL: TStringField
      FieldName = 'CD_FIL'
      Size = 2
    end
    object SQLContasReceberDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object SQLContasReceberST_DOC: TStringField
      FieldName = 'ST_DOC'
      Size = 1
    end
    object SQLContasReceberCD_CLI: TStringField
      FieldName = 'CD_CLI'
      Size = 6
    end
    object SQLContasReceberCD_MOE: TStringField
      FieldName = 'CD_MOE'
      Size = 3
    end
    object SQLContasReceberDT_EMS: TSQLTimeStampField
      FieldName = 'DT_EMS'
    end
    object SQLContasReceberDT_VCT: TSQLTimeStampField
      FieldName = 'DT_VCT'
    end
    object SQLContasReceberVR_DOC: TSingleField
      FieldName = 'VR_DOC'
    end
    object SQLContasReceberVR_DEB_DOC: TSingleField
      FieldName = 'VR_DEB_DOC'
    end
    object SQLContasReceberTP_JUR: TStringField
      FieldName = 'TP_JUR'
      Size = 1
    end
    object SQLContasReceberTX_JUR: TSingleField
      FieldName = 'TX_JUR'
    end
    object SQLContasReceberDT_PGT: TSQLTimeStampField
      FieldName = 'DT_PGT'
    end
    object SQLContasReceberVR_RCB: TSingleField
      FieldName = 'VR_RCB'
    end
    object SQLContasReceberVR_JUR: TSingleField
      FieldName = 'VR_JUR'
    end
    object SQLContasReceberVR_ABA_DCT: TSingleField
      FieldName = 'VR_ABA_DCT'
    end
    object SQLContasReceberVR_DEV: TSingleField
      FieldName = 'VR_DEV'
    end
    object SQLContasReceberCD_LOC_COB: TStringField
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object SQLContasReceberDT_RMS_COB: TSQLTimeStampField
      FieldName = 'DT_RMS_COB'
    end
    object SQLContasReceberCD_TIT_LOC: TStringField
      FieldName = 'CD_TIT_LOC'
      Size = 25
    end
    object SQLContasReceberCD_LIN_DIG: TStringField
      FieldName = 'CD_LIN_DIG'
      Size = 66
    end
    object SQLContasReceberDT_COB_TIT: TSQLTimeStampField
      FieldName = 'DT_COB_TIT'
    end
    object SQLContasReceberST_TIT_LOC: TStringField
      FieldName = 'ST_TIT_LOC'
      Size = 2
    end
    object SQLContasReceberDT_ULT_MOD: TSQLTimeStampField
      FieldName = 'DT_ULT_MOD'
    end
    object SQLContasReceberCD_VEN: TStringField
      FieldName = 'CD_VEN'
      Size = 3
    end
    object SQLContasReceberPC_CMS: TSingleField
      FieldName = 'PC_CMS'
    end
    object SQLContasReceberNO_PED: TStringField
      FieldName = 'NO_PED'
      Size = 8
    end
    object SQLContasReceberSN_EXP_CTB: TStringField
      FieldName = 'SN_EXP_CTB'
      Size = 1
    end
    object SQLContasReceberSN_IMP_DOC: TStringField
      FieldName = 'SN_IMP_DOC'
      Size = 1
    end
    object SQLContasReceberSN_IMP_LIV: TStringField
      FieldName = 'SN_IMP_LIV'
      Size = 1
    end
    object SQLContasReceberNO_NTF: TStringField
      FieldName = 'NO_NTF'
      Size = 42
    end
    object SQLContasReceberTP_DOC_AUX: TStringField
      FieldName = 'TP_DOC_AUX'
      Size = 2
    end
    object SQLContasReceberCD_CLI_OLD: TStringField
      FieldName = 'CD_CLI_OLD'
      Size = 10
    end
    object SQLContasReceberCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLContasReceberID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object SQLContasReceberID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object SQLContasReceberID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
    end
    object SQLContasReceberNM_CLI: TStringField
      FieldName = 'NM_CLI'
      ProviderFlags = []
      Size = 45
    end
    object SQLContasReceberID_CLIENTE_1: TIntegerField
      FieldName = 'ID_CLIENTE_1'
      ProviderFlags = []
    end
    object SQLContasReceberNO_CNP_CPF: TStringField
      FieldName = 'NO_CNP_CPF'
      ProviderFlags = []
      Size = 18
    end
    object SQLContasReceberNO_FON: TStringField
      FieldName = 'NO_FON'
      ProviderFlags = []
      Size = 14
    end
    object SQLContasReceberNO_FAX: TStringField
      FieldName = 'NO_FAX'
      ProviderFlags = []
      Size = 14
    end
    object SQLContasReceberNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object SQLContasReceberUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object SQLContasReceberNM_BAI: TStringField
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object SQLContasReceberNM_RUA: TStringField
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object SQLContasReceberNO_CEP: TStringField
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object SQLContasReceberDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object SQLContasRecebervr_total_receber: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vr_total_receber'
      Calculated = True
    end
    object SQLContasReceberSN_NEG: TStringField
      FieldName = 'SN_NEG'
      Size = 1
    end
    object SQLContasReceberID_VEN: TIntegerField
      FieldName = 'ID_VEN'
    end
  end
  object DSPContasReceber: TDataSetProvider
    DataSet = SQLContasReceber
    Left = 785
    Top = 436
  end
  object CDSContasReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPContasReceber'
    BeforePost = CDSContasReceberBeforePost
    Left = 785
    Top = 496
    object CDSContasReceberID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000,000'
    end
    object CDSContasReceberNO_DOC: TStringField
      DisplayLabel = 'No. Documento'
      FieldName = 'NO_DOC'
      Required = True
      Size = 15
    end
    object CDSContasReceberTP_DOC: TStringField
      FieldName = 'TP_DOC'
      OnGetText = CDSContasReceberTP_DOCGetText
      Size = 9
    end
    object CDSContasReceberNO_DOC_ORI: TStringField
      DisplayLabel = 'Doc. Origem'
      DisplayWidth = 11
      FieldName = 'NO_DOC_ORI'
      Size = 11
    end
    object CDSContasReceberCD_FIL: TStringField
      FieldName = 'CD_FIL'
      Size = 2
    end
    object CDSContasReceberDT_CAD: TSQLTimeStampField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CAD'
    end
    object CDSContasReceberST_DOC: TStringField
      FieldName = 'ST_DOC'
      OnGetText = CDSContasReceberST_DOCGetText
      Size = 1
    end
    object CDSContasReceberCD_CLI: TStringField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CD_CLI'
      Size = 6
    end
    object CDSContasReceberCD_MOE: TStringField
      FieldName = 'CD_MOE'
      Size = 3
    end
    object CDSContasReceberDT_EMS: TSQLTimeStampField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_EMS'
    end
    object CDSContasReceberDT_VCT: TSQLTimeStampField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DT_VCT'
    end
    object CDSContasReceberVR_DOC: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Documento'
      FieldName = 'VR_DOC'
      currency = True
    end
    object CDSContasReceberVR_DEB_DOC: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Valor D'#233'bito'
      FieldName = 'VR_DEB_DOC'
      currency = True
    end
    object CDSContasReceberTP_JUR: TStringField
      FieldName = 'TP_JUR'
      OnGetText = CDSContasReceberTP_JURGetText
      Size = 1
    end
    object CDSContasReceberTX_JUR: TSingleField
      DisplayLabel = 'Taxa Juros'
      FieldName = 'TX_JUR'
    end
    object CDSContasReceberDT_PGT: TSQLTimeStampField
      DisplayLabel = 'Data Pagamento'
      FieldName = 'DT_PGT'
    end
    object CDSContasReceberVR_RCB: TSingleField
      DisplayLabel = 'Valor Recebido'
      FieldName = 'VR_RCB'
      currency = True
    end
    object CDSContasReceberVR_JUR: TSingleField
      DisplayLabel = 'Valor Juros'
      FieldName = 'VR_JUR'
      currency = True
    end
    object CDSContasReceberVR_ABA_DCT: TSingleField
      DisplayLabel = 'Valor Abat./Desconto'
      FieldName = 'VR_ABA_DCT'
      currency = True
    end
    object CDSContasReceberVR_DEV: TSingleField
      DefaultExpression = '0'
      DisplayLabel = 'Valor Devido'
      FieldName = 'VR_DEV'
      currency = True
    end
    object CDSContasReceberCD_LOC_COB: TStringField
      DisplayLabel = 'C'#243'd. Local'
      FieldName = 'CD_LOC_COB'
      Size = 3
    end
    object CDSContasReceberDT_RMS_COB: TSQLTimeStampField
      DisplayLabel = 'Data Remessa'
      FieldName = 'DT_RMS_COB'
    end
    object CDSContasReceberCD_TIT_LOC: TStringField
      FieldName = 'CD_TIT_LOC'
      Size = 25
    end
    object CDSContasReceberCD_LIN_DIG: TStringField
      FieldName = 'CD_LIN_DIG'
      Size = 66
    end
    object CDSContasReceberDT_COB_TIT: TSQLTimeStampField
      FieldName = 'DT_COB_TIT'
    end
    object CDSContasReceberST_TIT_LOC: TStringField
      FieldName = 'ST_TIT_LOC'
      Size = 2
    end
    object CDSContasReceberDT_ULT_MOD: TSQLTimeStampField
      DisplayLabel = 'Data Ult. Modifica'#231#227'o'
      FieldName = 'DT_ULT_MOD'
    end
    object CDSContasReceberCD_VEN: TStringField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'CD_VEN'
      Size = 3
    end
    object CDSContasReceberPC_CMS: TSingleField
      FieldName = 'PC_CMS'
    end
    object CDSContasReceberNO_PED: TStringField
      DisplayLabel = 'No. Pedido'
      FieldName = 'NO_PED'
      Size = 8
    end
    object CDSContasReceberSN_EXP_CTB: TStringField
      FieldName = 'SN_EXP_CTB'
      Size = 1
    end
    object CDSContasReceberSN_IMP_DOC: TStringField
      FieldName = 'SN_IMP_DOC'
      Size = 1
    end
    object CDSContasReceberSN_IMP_LIV: TStringField
      FieldName = 'SN_IMP_LIV'
      Size = 1
    end
    object CDSContasReceberNO_NTF: TStringField
      DisplayLabel = 'No. Nota'
      FieldName = 'NO_NTF'
      Size = 42
    end
    object CDSContasReceberTP_DOC_AUX: TStringField
      FieldName = 'TP_DOC_AUX'
      Size = 2
    end
    object CDSContasReceberCD_CLI_OLD: TStringField
      FieldName = 'CD_CLI_OLD'
      Size = 10
    end
    object CDSContasReceberCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSContasReceberID_VER_ATU: TStringField
      FieldName = 'ID_VER_ATU'
      Size = 1
    end
    object CDSContasReceberID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object CDSContasReceberID_LOCAL: TIntegerField
      FieldName = 'ID_LOCAL'
    end
    object CDSContasReceberNM_CLI: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NM_CLI'
      ProviderFlags = []
      Size = 45
    end
    object CDSContasReceberID_CLIENTE_1: TIntegerField
      FieldName = 'ID_CLIENTE_1'
      ProviderFlags = []
    end
    object CDSContasReceberNO_CNP_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'NO_CNP_CPF'
      ProviderFlags = []
      Size = 18
    end
    object CDSContasReceberNO_FON: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'NO_FON'
      ProviderFlags = []
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSContasReceberNO_FAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'NO_FAX'
      ProviderFlags = []
      EditMask = '!\(99\) #####-####;0;_'
      Size = 14
    end
    object CDSContasReceberNM_CID: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 45
    end
    object CDSContasReceberUF_CID: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
    object CDSContasReceberNM_BAI: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NM_BAI'
      ProviderFlags = []
      Size = 45
    end
    object CDSContasReceberNM_RUA: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'NM_RUA'
      ProviderFlags = []
      Size = 45
    end
    object CDSContasReceberNO_CEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'NO_CEP'
      ProviderFlags = []
      Size = 9
    end
    object CDSContasReceberDS_OBS: TBlobField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'DS_OBS'
      Size = 1
    end
    object CDSContasRecebervr_total_receber: TFloatField
      FieldName = 'vr_total_receber'
      ReadOnly = True
    end
    object CDSContasReceberSN_NEG: TStringField
      FieldName = 'SN_NEG'
      OnGetText = CDSContasReceberSN_NEGGetText
      Size = 1
    end
    object CDSContasReceberID_VEN: TIntegerField
      FieldName = 'ID_VEN'
    end
  end
  object SQLProdut: TSQLDataSet
    CommandText = 'select * from DB_PRODUT'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 875
    Top = 376
    object SQLProdutID: TIntegerField
      FieldName = 'ID'
    end
    object SQLProdutCD_PDT_ETQ: TStringField
      FieldName = 'CD_PDT_ETQ'
      Size = 6
    end
    object SQLProdutNM_PDT: TStringField
      FieldName = 'NM_PDT'
      Size = 50
    end
    object SQLProdutNM_PDT_AUX: TStringField
      FieldName = 'NM_PDT_AUX'
      Size = 50
    end
    object SQLProdutSN_CPL: TStringField
      FieldName = 'SN_CPL'
      Size = 1
    end
    object SQLProdutNM_FAB: TStringField
      FieldName = 'NM_FAB'
      Size = 15
    end
    object SQLProdutCD_BAR: TStringField
      FieldName = 'CD_BAR'
      Size = 13
    end
    object SQLProdutVR_LAG: TSingleField
      FieldName = 'VR_LAG'
    end
    object SQLProdutVR_ALT: TSingleField
      FieldName = 'VR_ALT'
    end
    object SQLProdutVR_ESP: TSingleField
      FieldName = 'VR_ESP'
    end
    object SQLProdutST_PDT: TStringField
      FieldName = 'ST_PDT'
      Size = 1
    end
    object SQLProdutSN_CTL_ETQ: TStringField
      FieldName = 'SN_CTL_ETQ'
      Size = 1
    end
    object SQLProdutSN_TAB_PRC: TStringField
      FieldName = 'SN_TAB_PRC'
      Size = 1
    end
    object SQLProdutSN_IND: TStringField
      FieldName = 'SN_IND'
      Size = 1
    end
    object SQLProdutTP_EPF_PDT: TStringField
      FieldName = 'TP_EPF_PDT'
      Size = 1
    end
    object SQLProdutCD_MAT_PRI: TStringField
      FieldName = 'CD_MAT_PRI'
      Size = 6
    end
    object SQLProdutDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
    end
    object SQLProdutST_RVD: TStringField
      FieldName = 'ST_RVD'
      Size = 1
    end
    object SQLProdutAL_MVA_RVD: TSingleField
      FieldName = 'AL_MVA_RVD'
    end
    object SQLProdutCD_FAM_PDT: TStringField
      FieldName = 'CD_FAM_PDT'
      Size = 4
    end
    object SQLProdutCD_GRU_PDT: TStringField
      FieldName = 'CD_GRU_PDT'
      Size = 4
    end
    object SQLProdutTP_ITE: TStringField
      FieldName = 'TP_ITE'
      Size = 2
    end
    object SQLProdutCD_GEN_ITE: TStringField
      FieldName = 'CD_GEN_ITE'
      Size = 2
    end
    object SQLProdutCD_UNI_PDT: TStringField
      FieldName = 'CD_UNI_PDT'
      Size = 3
    end
    object SQLProdutCD_UNI_CMP: TStringField
      FieldName = 'CD_UNI_CMP'
      Size = 3
    end
    object SQLProdutCD_EMB_PDT: TStringField
      FieldName = 'CD_EMB_PDT'
      Size = 3
    end
    object SQLProdutQT_EMB_PDT: TStringField
      FieldName = 'QT_EMB_PDT'
      Size = 6
    end
    object SQLProdutPS_PDT: TSingleField
      FieldName = 'PS_PDT'
    end
    object SQLProdutVR_FAT_CVS: TSingleField
      FieldName = 'VR_FAT_CVS'
    end
    object SQLProdutDT_SLD_INV: TSQLTimeStampField
      FieldName = 'DT_SLD_INV'
    end
    object SQLProdutQT_SLD_INV: TSingleField
      FieldName = 'QT_SLD_INV'
    end
    object SQLProdutQT_SLD_ATU: TSingleField
      FieldName = 'QT_SLD_ATU'
    end
    object SQLProdutQT_SLD_MIN: TSingleField
      FieldName = 'QT_SLD_MIN'
    end
    object SQLProdutQT_SLD_MAX: TSingleField
      FieldName = 'QT_SLD_MAX'
    end
    object SQLProdutQT_SLD_PED: TSingleField
      FieldName = 'QT_SLD_PED'
    end
    object SQLProdutQT_SLD_FOR: TSingleField
      FieldName = 'QT_SLD_FOR'
    end
    object SQLProdutQT_SLD_CF: TSingleField
      FieldName = 'QT_SLD_CF'
    end
    object SQLProdutDT_ULT_CMP: TSQLTimeStampField
      FieldName = 'DT_ULT_CMP'
    end
    object SQLProdutPR_ULT_CMP: TSingleField
      FieldName = 'PR_ULT_CMP'
    end
    object SQLProdutVR_ULT_CUS: TSingleField
      FieldName = 'VR_ULT_CUS'
    end
    object SQLProdutVR_CUS_MED: TSingleField
      FieldName = 'VR_CUS_MED'
    end
    object SQLProdutPC_LUC: TSingleField
      FieldName = 'PC_LUC'
    end
    object SQLProdutDT_ULT_VND: TSQLTimeStampField
      FieldName = 'DT_ULT_VND'
    end
    object SQLProdutPR_AVI_ATA: TSingleField
      FieldName = 'PR_AVI_ATA'
    end
    object SQLProdutPR_PRZ_ATA: TSingleField
      FieldName = 'PR_PRZ_ATA'
    end
    object SQLProdutPR_PRO_ATA: TSingleField
      FieldName = 'PR_PRO_ATA'
    end
    object SQLProdutPC_CMS_ATA: TSingleField
      FieldName = 'PC_CMS_ATA'
    end
    object SQLProdutPR_AVI_VRJ: TSingleField
      FieldName = 'PR_AVI_VRJ'
    end
    object SQLProdutPR_PRZ_VRJ: TSingleField
      FieldName = 'PR_PRZ_VRJ'
    end
    object SQLProdutPR_PRO_VRJ: TSingleField
      FieldName = 'PR_PRO_VRJ'
    end
    object SQLProdutPC_CMS_VRJ: TSingleField
      FieldName = 'PC_CMS_VRJ'
    end
    object SQLProdutPC_BON: TSingleField
      FieldName = 'PC_BON'
    end
    object SQLProdutAL_IPI: TSingleField
      FieldName = 'AL_IPI'
    end
    object SQLProdutPC_RDC: TSingleField
      FieldName = 'PC_RDC'
    end
    object SQLProdutCD_CST_IPS: TStringField
      FieldName = 'CD_CST_IPS'
      Size = 2
    end
    object SQLProdutCD_CST_IPE: TStringField
      FieldName = 'CD_CST_IPE'
      Size = 2
    end
    object SQLProdutCD_CST_CMP: TStringField
      FieldName = 'CD_CST_CMP'
      Size = 3
    end
    object SQLProdutAL_ICR_CMP: TSingleField
      FieldName = 'AL_ICR_CMP'
    end
    object SQLProdutPC_RDC_CMP: TSingleField
      FieldName = 'PC_RDC_CMP'
    end
    object SQLProdutAL_ICM_ICR: TSingleField
      FieldName = 'AL_ICM_ICR'
    end
    object SQLProdutCD_CLS_FIS: TStringField
      FieldName = 'CD_CLS_FIS'
      Size = 10
    end
    object SQLProdutAL_MVA: TSingleField
      FieldName = 'AL_MVA'
    end
    object SQLProdutAL_PIS: TSingleField
      FieldName = 'AL_PIS'
    end
    object SQLProdutCD_CST_PIS: TStringField
      FieldName = 'CD_CST_PIS'
      Size = 2
    end
    object SQLProdutAL_COF: TSingleField
      FieldName = 'AL_COF'
    end
    object SQLProdutCD_CST_COF: TSingleField
      FieldName = 'CD_CST_COF'
    end
    object SQLProdutPC_MAR_PDT: TStringField
      FieldName = 'PC_MAR_PDT'
      Size = 6
    end
    object SQLProdutPC_CMS_PDT: TSingleField
      FieldName = 'PC_CMS_PDT'
    end
    object SQLProdutPC_CMS_TLM: TSingleField
      FieldName = 'PC_CMS_TLM'
    end
    object SQLProdutCD_CTL: TStringField
      FieldName = 'CD_CTL'
      Size = 15
    end
    object SQLProdutCD_CTL_: TStringField
      FieldName = 'CD_CTL_'
      Size = 15
    end
    object SQLProdutCD_CTL_AUX: TStringField
      FieldName = 'CD_CTL_AUX'
      Size = 15
    end
    object SQLProdutOR_TAB_PRC: TStringField
      FieldName = 'OR_TAB_PRC'
      Size = 6
    end
    object SQLProdutCD_NCM: TStringField
      FieldName = 'CD_NCM'
      Size = 8
    end
    object SQLProdutCD_PDT_OLD: TStringField
      FieldName = 'CD_PDT_OLD'
      Size = 10
    end
    object SQLProdutCD_LOC_PDT: TStringField
      FieldName = 'CD_LOC_PDT'
      Size = 8
    end
    object SQLProdutDT_RMC: TSQLTimeStampField
      FieldName = 'DT_RMC'
    end
    object SQLProdutPC_RMC: TSingleField
      FieldName = 'PC_RMC'
    end
    object SQLProdutDT_RMC_ANT: TSQLTimeStampField
      FieldName = 'DT_RMC_ANT'
    end
    object SQLProdutPC_RMC_ANT: TSingleField
      FieldName = 'PC_RMC_ANT'
    end
    object SQLProdutDT_ULT_ALT: TSQLTimeStampField
      FieldName = 'DT_ULT_ALT'
    end
    object SQLProdutCD_OBS_DUF: TStringField
      FieldName = 'CD_OBS_DUF'
      Size = 3
    end
    object SQLProdutCD_OBS_FUF: TStringField
      FieldName = 'CD_OBS_FUF'
      Size = 3
    end
    object SQLProdutNM_ARQ_FOT: TStringField
      FieldName = 'NM_ARQ_FOT'
      Size = 77
    end
    object SQLProdutAL_ICM_MKP: TSingleField
      FieldName = 'AL_ICM_MKP'
    end
    object SQLProdutAL_PIS_MKP: TSingleField
      FieldName = 'AL_PIS_MKP'
    end
    object SQLProdutAL_COF_MKP: TSingleField
      FieldName = 'AL_COF_MKP'
    end
    object SQLProdutPC_DPA_MKP: TSingleField
      FieldName = 'PC_DPA_MKP'
    end
    object SQLProdutPC_DPF_MKP: TSingleField
      FieldName = 'PC_DPF_MKP'
    end
    object SQLProdutPC_DPE_MKP: TSingleField
      FieldName = 'PC_DPE_MKP'
    end
    object SQLProdutPC_CMS_MKP: TSingleField
      FieldName = 'PC_CMS_MKP'
    end
    object SQLProdutPC_MLC_MKP: TSingleField
      FieldName = 'PC_MLC_MKP'
    end
    object SQLProdutAL_ICM_MKC: TSingleField
      FieldName = 'AL_ICM_MKC'
    end
    object SQLProdutAL_PIS_MKC: TSingleField
      FieldName = 'AL_PIS_MKC'
    end
    object SQLProdutAL_COF_MKC: TSingleField
      FieldName = 'AL_COF_MKC'
    end
    object SQLProdutPC_DPA_MKC: TSingleField
      FieldName = 'PC_DPA_MKC'
    end
    object SQLProdutPC_DPF_MKC: TSingleField
      FieldName = 'PC_DPF_MKC'
    end
    object SQLProdutPC_DPE_MKC: TSingleField
      FieldName = 'PC_DPE_MKC'
    end
    object SQLProdutPC_CMS_MKC: TSingleField
      FieldName = 'PC_CMS_MKC'
    end
    object SQLProdutPC_MLC_MKC: TSingleField
      FieldName = 'PC_MLC_MKC'
    end
    object SQLProdutAL_ICM_M12: TSingleField
      FieldName = 'AL_ICM_M12'
    end
    object SQLProdutAL_PIS_M12: TSingleField
      FieldName = 'AL_PIS_M12'
    end
    object SQLProdutAL_COF_M12: TSingleField
      FieldName = 'AL_COF_M12'
    end
    object SQLProdutPC_DPA_M12: TSingleField
      FieldName = 'PC_DPA_M12'
    end
    object SQLProdutPC_DPF_M12: TSingleField
      FieldName = 'PC_DPF_M12'
    end
    object SQLProdutPC_DPE_M12: TSingleField
      FieldName = 'PC_DPE_M12'
    end
    object SQLProdutPC_CMS_M12: TSingleField
      FieldName = 'PC_CMS_M12'
    end
    object SQLProdutPC_MLC_M12: TSingleField
      FieldName = 'PC_MLC_M12'
    end
    object SQLProdutDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object SQLProdutCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object SQLProdutSN_FAT_CVS: TStringField
      FieldName = 'SN_FAT_CVS'
      Size = 1
    end
    object SQLProdutID_FAM_PDT: TIntegerField
      FieldName = 'ID_FAM_PDT'
    end
    object SQLProdutID_GRU_PDT: TIntegerField
      FieldName = 'ID_GRU_PDT'
    end
    object SQLProdutID_UNI_PDT: TIntegerField
      FieldName = 'ID_UNI_PDT'
    end
    object SQLProdutID_UNI_CMP: TSmallintField
      FieldName = 'ID_UNI_CMP'
    end
    object SQLProdutCD_PDT: TIntegerField
      FieldName = 'CD_PDT'
      Required = True
    end
    object SQLProdutCD_CST: TStringField
      FieldName = 'CD_CST'
      Size = 4
    end
    object SQLProdutAL_ICM_VND: TSingleField
      FieldName = 'AL_ICM_VND'
    end
    object SQLProdutAL_IPI_CMP: TSingleField
      FieldName = 'AL_IPI_CMP'
    end
  end
  object DSPProdut: TDataSetProvider
    DataSet = SQLProdut
    Left = 875
    Top = 436
  end
  object CDSProdut: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPProdut'
    AfterInsert = CDSProdutAfterInsert
    BeforePost = CDSProdutBeforePost
    Left = 875
    Top = 496
    object CDSProdutID: TIntegerField
      FieldName = 'ID'
    end
    object CDSProdutCD_PDT_ETQ: TStringField
      FieldName = 'CD_PDT_ETQ'
      Size = 6
    end
    object CDSProdutNM_PDT: TStringField
      FieldName = 'NM_PDT'
      Size = 50
    end
    object CDSProdutNM_PDT_AUX: TStringField
      FieldName = 'NM_PDT_AUX'
      Size = 50
    end
    object CDSProdutSN_CPL: TStringField
      FieldName = 'SN_CPL'
      OnGetText = CDSProdutSN_CPLGetText
      Size = 1
    end
    object CDSProdutNM_FAB: TStringField
      FieldName = 'NM_FAB'
      Size = 15
    end
    object CDSProdutCD_BAR: TStringField
      FieldName = 'CD_BAR'
      Size = 13
    end
    object CDSProdutVR_LAG: TSingleField
      FieldName = 'VR_LAG'
      DisplayFormat = '0.0000'
    end
    object CDSProdutVR_ALT: TSingleField
      FieldName = 'VR_ALT'
      DisplayFormat = '0.0000'
    end
    object CDSProdutVR_ESP: TSingleField
      FieldName = 'VR_ESP'
      DisplayFormat = '0.0000'
    end
    object CDSProdutST_PDT: TStringField
      FieldName = 'ST_PDT'
      OnGetText = CDSProdutST_PDTGetText
      Size = 1
    end
    object CDSProdutSN_CTL_ETQ: TStringField
      FieldName = 'SN_CTL_ETQ'
      OnGetText = CDSProdutSN_CTL_ETQGetText
      Size = 1
    end
    object CDSProdutSN_TAB_PRC: TStringField
      FieldName = 'SN_TAB_PRC'
      OnGetText = CDSProdutSN_TAB_PRCGetText
      Size = 1
    end
    object CDSProdutSN_IND: TStringField
      FieldName = 'SN_IND'
      OnGetText = CDSProdutSN_INDGetText
      Size = 1
    end
    object CDSProdutTP_EPF_PDT: TStringField
      FieldName = 'TP_EPF_PDT'
      OnGetText = CDSProdutTP_EPF_PDTGetText
      Size = 1
    end
    object CDSProdutCD_MAT_PRI: TStringField
      FieldName = 'CD_MAT_PRI'
      Size = 6
    end
    object CDSProdutDT_CAD: TSQLTimeStampField
      FieldName = 'DT_CAD'
      EditMask = '!99/99/0000;0;_'
    end
    object CDSProdutST_RVD: TStringField
      FieldName = 'ST_RVD'
      OnGetText = CDSProdutST_RVDGetText
      Size = 1
    end
    object CDSProdutAL_MVA_RVD: TSingleField
      FieldName = 'AL_MVA_RVD'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutCD_FAM_PDT: TStringField
      FieldName = 'CD_FAM_PDT'
      Size = 4
    end
    object CDSProdutCD_GRU_PDT: TStringField
      FieldName = 'CD_GRU_PDT'
      Size = 4
    end
    object CDSProdutTP_ITE: TStringField
      FieldName = 'TP_ITE'
      OnGetText = CDSProdutTP_ITEGetText
      Size = 2
    end
    object CDSProdutCD_GEN_ITE: TStringField
      FieldName = 'CD_GEN_ITE'
      OnGetText = CDSProdutCD_GEN_ITEGetText
      Size = 2
    end
    object CDSProdutCD_UNI_PDT: TStringField
      FieldName = 'CD_UNI_PDT'
      Size = 3
    end
    object CDSProdutCD_UNI_CMP: TStringField
      FieldName = 'CD_UNI_CMP'
      Size = 3
    end
    object CDSProdutCD_EMB_PDT: TStringField
      FieldName = 'CD_EMB_PDT'
      Size = 3
    end
    object CDSProdutQT_EMB_PDT: TStringField
      FieldName = 'QT_EMB_PDT'
      Size = 6
    end
    object CDSProdutPS_PDT: TSingleField
      FieldName = 'PS_PDT'
      DisplayFormat = '#,###,##0.000'
    end
    object CDSProdutVR_FAT_CVS: TSingleField
      FieldName = 'VR_FAT_CVS'
      DisplayFormat = '0.000'
    end
    object CDSProdutDT_SLD_INV: TSQLTimeStampField
      FieldName = 'DT_SLD_INV'
    end
    object CDSProdutQT_SLD_INV: TSingleField
      FieldName = 'QT_SLD_INV'
    end
    object CDSProdutQT_SLD_ATU: TSingleField
      FieldName = 'QT_SLD_ATU'
      currency = True
    end
    object CDSProdutQT_SLD_MIN: TSingleField
      FieldName = 'QT_SLD_MIN'
      DisplayFormat = '#,###,##0.000'
    end
    object CDSProdutQT_SLD_MAX: TSingleField
      FieldName = 'QT_SLD_MAX'
      DisplayFormat = '#,###,##0.000'
      currency = True
    end
    object CDSProdutQT_SLD_PED: TSingleField
      FieldName = 'QT_SLD_PED'
    end
    object CDSProdutQT_SLD_FOR: TSingleField
      FieldName = 'QT_SLD_FOR'
    end
    object CDSProdutQT_SLD_CF: TSingleField
      FieldName = 'QT_SLD_CF'
    end
    object CDSProdutDT_ULT_CMP: TSQLTimeStampField
      FieldName = 'DT_ULT_CMP'
      EditMask = '!99/99/0000;0;_'
    end
    object CDSProdutPR_ULT_CMP: TSingleField
      FieldName = 'PR_ULT_CMP'
      DisplayFormat = '#,###,##0.00000'
    end
    object CDSProdutVR_ULT_CUS: TSingleField
      FieldName = 'VR_ULT_CUS'
      DisplayFormat = '#,###,##0.00000'
    end
    object CDSProdutVR_CUS_MED: TSingleField
      FieldName = 'VR_CUS_MED'
      DisplayFormat = '#,###,##0.00000'
    end
    object CDSProdutPC_LUC: TSingleField
      FieldName = 'PC_LUC'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutDT_ULT_VND: TSQLTimeStampField
      FieldName = 'DT_ULT_VND'
    end
    object CDSProdutPR_AVI_ATA: TSingleField
      FieldName = 'PR_AVI_ATA'
    end
    object CDSProdutPR_PRZ_ATA: TSingleField
      FieldName = 'PR_PRZ_ATA'
      DisplayFormat = '#,###,##0.000'
    end
    object CDSProdutPR_PRO_ATA: TSingleField
      FieldName = 'PR_PRO_ATA'
    end
    object CDSProdutPC_CMS_ATA: TSingleField
      FieldName = 'PC_CMS_ATA'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutPR_AVI_VRJ: TSingleField
      FieldName = 'PR_AVI_VRJ'
    end
    object CDSProdutPR_PRZ_VRJ: TSingleField
      FieldName = 'PR_PRZ_VRJ'
      DisplayFormat = '#,###,##0.000'
    end
    object CDSProdutPR_PRO_VRJ: TSingleField
      FieldName = 'PR_PRO_VRJ'
    end
    object CDSProdutPC_CMS_VRJ: TSingleField
      FieldName = 'PC_CMS_VRJ'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutPC_BON: TSingleField
      FieldName = 'PC_BON'
    end
    object CDSProdutAL_IPI: TSingleField
      FieldName = 'AL_IPI'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutPC_RDC: TSingleField
      FieldName = 'PC_RDC'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutCD_CST_IPS: TStringField
      FieldName = 'CD_CST_IPS'
      OnGetText = CDSProdutCD_CST_IPSGetText
      Size = 2
    end
    object CDSProdutCD_CST_IPE: TStringField
      FieldName = 'CD_CST_IPE'
      OnGetText = CDSProdutCD_CST_IPEGetText
      Size = 2
    end
    object CDSProdutCD_CST_CMP: TStringField
      FieldName = 'CD_CST_CMP'
      Size = 3
    end
    object CDSProdutAL_ICR_CMP: TSingleField
      FieldName = 'AL_ICR_CMP'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutPC_RDC_CMP: TSingleField
      FieldName = 'PC_RDC_CMP'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutAL_ICM_ICR: TSingleField
      FieldName = 'AL_ICM_ICR'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutCD_CLS_FIS: TStringField
      FieldName = 'CD_CLS_FIS'
      Size = 10
    end
    object CDSProdutAL_MVA: TSingleField
      FieldName = 'AL_MVA'
    end
    object CDSProdutAL_PIS: TSingleField
      FieldName = 'AL_PIS'
    end
    object CDSProdutCD_CST_PIS: TStringField
      FieldName = 'CD_CST_PIS'
      Size = 2
    end
    object CDSProdutAL_COF: TSingleField
      FieldName = 'AL_COF'
    end
    object CDSProdutCD_CST_COF: TSingleField
      FieldName = 'CD_CST_COF'
    end
    object CDSProdutPC_MAR_PDT: TStringField
      FieldName = 'PC_MAR_PDT'
      Size = 6
    end
    object CDSProdutPC_CMS_PDT: TSingleField
      FieldName = 'PC_CMS_PDT'
    end
    object CDSProdutPC_CMS_TLM: TSingleField
      FieldName = 'PC_CMS_TLM'
    end
    object CDSProdutCD_CTL: TStringField
      FieldName = 'CD_CTL'
      Size = 15
    end
    object CDSProdutCD_CTL_: TStringField
      FieldName = 'CD_CTL_'
      Size = 15
    end
    object CDSProdutCD_CTL_AUX: TStringField
      FieldName = 'CD_CTL_AUX'
      Size = 15
    end
    object CDSProdutOR_TAB_PRC: TStringField
      FieldName = 'OR_TAB_PRC'
      Size = 6
    end
    object CDSProdutCD_NCM: TStringField
      FieldName = 'CD_NCM'
      Size = 8
    end
    object CDSProdutCD_PDT_OLD: TStringField
      FieldName = 'CD_PDT_OLD'
      Size = 10
    end
    object CDSProdutCD_LOC_PDT: TStringField
      FieldName = 'CD_LOC_PDT'
      Size = 8
    end
    object CDSProdutDT_RMC: TSQLTimeStampField
      FieldName = 'DT_RMC'
    end
    object CDSProdutPC_RMC: TSingleField
      FieldName = 'PC_RMC'
    end
    object CDSProdutDT_RMC_ANT: TSQLTimeStampField
      FieldName = 'DT_RMC_ANT'
    end
    object CDSProdutPC_RMC_ANT: TSingleField
      FieldName = 'PC_RMC_ANT'
    end
    object CDSProdutDT_ULT_ALT: TSQLTimeStampField
      FieldName = 'DT_ULT_ALT'
    end
    object CDSProdutCD_OBS_DUF: TStringField
      FieldName = 'CD_OBS_DUF'
      Size = 3
    end
    object CDSProdutCD_OBS_FUF: TStringField
      FieldName = 'CD_OBS_FUF'
      Size = 3
    end
    object CDSProdutNM_ARQ_FOT: TStringField
      FieldName = 'NM_ARQ_FOT'
      Size = 77
    end
    object CDSProdutAL_ICM_MKP: TSingleField
      FieldName = 'AL_ICM_MKP'
    end
    object CDSProdutAL_PIS_MKP: TSingleField
      FieldName = 'AL_PIS_MKP'
    end
    object CDSProdutAL_COF_MKP: TSingleField
      FieldName = 'AL_COF_MKP'
    end
    object CDSProdutPC_DPA_MKP: TSingleField
      FieldName = 'PC_DPA_MKP'
    end
    object CDSProdutPC_DPF_MKP: TSingleField
      FieldName = 'PC_DPF_MKP'
    end
    object CDSProdutPC_DPE_MKP: TSingleField
      FieldName = 'PC_DPE_MKP'
    end
    object CDSProdutPC_CMS_MKP: TSingleField
      FieldName = 'PC_CMS_MKP'
    end
    object CDSProdutPC_MLC_MKP: TSingleField
      FieldName = 'PC_MLC_MKP'
    end
    object CDSProdutAL_ICM_MKC: TSingleField
      FieldName = 'AL_ICM_MKC'
    end
    object CDSProdutAL_PIS_MKC: TSingleField
      FieldName = 'AL_PIS_MKC'
    end
    object CDSProdutAL_COF_MKC: TSingleField
      FieldName = 'AL_COF_MKC'
    end
    object CDSProdutPC_DPA_MKC: TSingleField
      FieldName = 'PC_DPA_MKC'
    end
    object CDSProdutPC_DPF_MKC: TSingleField
      FieldName = 'PC_DPF_MKC'
    end
    object CDSProdutPC_DPE_MKC: TSingleField
      FieldName = 'PC_DPE_MKC'
    end
    object CDSProdutPC_CMS_MKC: TSingleField
      FieldName = 'PC_CMS_MKC'
    end
    object CDSProdutPC_MLC_MKC: TSingleField
      FieldName = 'PC_MLC_MKC'
    end
    object CDSProdutAL_ICM_M12: TSingleField
      FieldName = 'AL_ICM_M12'
    end
    object CDSProdutAL_PIS_M12: TSingleField
      FieldName = 'AL_PIS_M12'
    end
    object CDSProdutAL_COF_M12: TSingleField
      FieldName = 'AL_COF_M12'
    end
    object CDSProdutPC_DPA_M12: TSingleField
      FieldName = 'PC_DPA_M12'
    end
    object CDSProdutPC_DPF_M12: TSingleField
      FieldName = 'PC_DPF_M12'
    end
    object CDSProdutPC_DPE_M12: TSingleField
      FieldName = 'PC_DPE_M12'
    end
    object CDSProdutPC_CMS_M12: TSingleField
      FieldName = 'PC_CMS_M12'
    end
    object CDSProdutPC_MLC_M12: TSingleField
      FieldName = 'PC_MLC_M12'
    end
    object CDSProdutDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Size = 1
    end
    object CDSProdutCD_USU: TStringField
      FieldName = 'CD_USU'
      Size = 45
    end
    object CDSProdutSN_FAT_CVS: TStringField
      FieldName = 'SN_FAT_CVS'
      OnGetText = CDSProdutSN_FAT_CVSGetText
      Size = 1
    end
    object CDSProdutID_FAM_PDT: TIntegerField
      FieldName = 'ID_FAM_PDT'
    end
    object CDSProdutID_GRU_PDT: TIntegerField
      FieldName = 'ID_GRU_PDT'
    end
    object CDSProdutID_UNI_PDT: TIntegerField
      FieldName = 'ID_UNI_PDT'
    end
    object CDSProdutID_UNI_CMP: TSmallintField
      FieldName = 'ID_UNI_CMP'
    end
    object CDSProdutCD_PDT: TIntegerField
      FieldName = 'CD_PDT'
      Required = True
    end
    object CDSProdutCD_CST: TStringField
      FieldName = 'CD_CST'
      Size = 4
    end
    object CDSProdutAL_ICM_VND: TSingleField
      FieldName = 'AL_ICM_VND'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutAL_IPI_CMP: TSingleField
      FieldName = 'AL_IPI_CMP'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSProdutUNI: TStringField
      FieldKind = fkLookup
      FieldName = 'UNI'
      LookupDataSet = CDSUnidadePDT
      LookupKeyFields = 'ID'
      LookupResultField = 'NM_UNI_RDZ'
      KeyFields = 'ID'
      Size = 2
      Lookup = True
    end
  end
  object SQLObsNTF: TSQLDataSet
    CommandText = 'select * from DB_OBSNTF'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 208
    Top = 568
    object SQLObsNTFID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLObsNTFDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Required = True
      Size = 1
    end
    object SQLObsNTFCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object SQLObsNTFID_VER_ATU: TIntegerField
      FieldName = 'ID_VER_ATU'
    end
  end
  object DSPObsNTF: TDataSetProvider
    DataSet = SQLObsNTF
    Left = 208
    Top = 624
  end
  object CDSObsNTF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPObsNTF'
    Left = 208
    Top = 680
    object CDSObsNTFID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSObsNTFDS_OBS: TBlobField
      FieldName = 'DS_OBS'
      Required = True
      OnGetText = CDSObsNTFDS_OBSGetText
      Size = 1
    end
    object CDSObsNTFCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object CDSObsNTFID_VER_ATU: TIntegerField
      FieldName = 'ID_VER_ATU'
    end
  end
  object SQLPDTTBT: TSQLDataSet
    CommandText = 'select * from DB_PDTTBT'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 965
    Top = 376
    object SQLPDTTBTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLPDTTBTID_PDT: TIntegerField
      FieldName = 'ID_PDT'
      Required = True
    end
    object SQLPDTTBTAL_ICM: TSingleField
      FieldName = 'AL_ICM'
    end
    object SQLPDTTBTAL_FECOP: TSingleField
      FieldName = 'AL_FECOP'
    end
    object SQLPDTTBTCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object SQLPDTTBTUF_ORG: TStringField
      FieldName = 'UF_ORG'
      Size = 2
    end
  end
  object DSPPDTTBT: TDataSetProvider
    DataSet = SQLPDTTBT
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 965
    Top = 436
  end
  object CDSPDTTBT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPDTTBT'
    AfterInsert = CDSPDTTBTAfterInsert
    BeforePost = CDSPDTTBTBeforePost
    Left = 965
    Top = 496
    object CDSPDTTBTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSPDTTBTID_PDT: TIntegerField
      FieldName = 'ID_PDT'
      Required = True
    end
    object CDSPDTTBTAL_ICM: TSingleField
      FieldName = 'AL_ICM'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSPDTTBTAL_FECOP: TSingleField
      FieldName = 'AL_FECOP'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSPDTTBTCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object CDSPDTTBTUF_ORG: TStringField
      FieldName = 'UF_ORG'
      OnGetText = CDSPDTTBTUF_ORGGetText
      Size = 2
    end
  end
  object SQLPLNPGT: TSQLDataSet
    CommandText = 'select * from DB_PLNPGT'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 1056
    Top = 376
    object SQLPLNPGTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLPLNPGTNM_PLN_PGT: TStringField
      FieldName = 'NM_PLN_PGT'
      Required = True
      Size = 30
    end
    object SQLPLNPGTCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object SQLPLNPGTPC_RJT: TSingleField
      FieldName = 'PC_RJT'
    end
    object SQLPLNPGTPZ_PLN_PGT: TStringField
      FieldName = 'PZ_PLN_PGT'
      Size = 90
    end
  end
  object DSPPLNPGT: TDataSetProvider
    DataSet = SQLPLNPGT
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1056
    Top = 436
  end
  object CDSPLNPGT: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPLNPGT'
    AfterEdit = CDSPLNPGTAfterEdit
    BeforePost = CDSPLNPGTBeforePost
    Left = 1056
    Top = 496
    object CDSPLNPGTID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSPLNPGTNM_PLN_PGT: TStringField
      FieldName = 'NM_PLN_PGT'
      Required = True
      Size = 30
    end
    object CDSPLNPGTCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object CDSPLNPGTPC_RJT: TSingleField
      FieldName = 'PC_RJT'
      DisplayFormat = '#,###,##0.00'
    end
    object CDSPLNPGTPZ_PLN_PGT: TStringField
      FieldName = 'PZ_PLN_PGT'
      Size = 90
    end
  end
  object SQLRotas: TSQLDataSet
    CommandText = 
      'select db_rotas.*,'#13#10'db_categoria.nm_ctg_cli,'#13#10'db_vendedor.nm_ven' +
      #13#10'from db_rotas'#13#10'inner join db_categoria on db_categoria.id = db' +
      '_rotas.id_ctg'#13#10'inner join db_vendedor  on db_vendedor.id  = db_r' +
      'otas.id_ven'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 32
    Top = 568
    object SQLRotasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLRotasNM_ROT: TStringField
      FieldName = 'NM_ROT'
      Required = True
      Size = 45
    end
    object SQLRotasID_VEN: TIntegerField
      FieldName = 'ID_VEN'
      Required = True
    end
    object SQLRotasID_CTG: TIntegerField
      FieldName = 'ID_CTG'
      Required = True
    end
    object SQLRotasCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object SQLRotasNM_CTG_CLI: TStringField
      FieldName = 'NM_CTG_CLI'
      ProviderFlags = []
      Size = 45
    end
    object SQLRotasNM_VEN: TStringField
      FieldName = 'NM_VEN'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPRotas: TDataSetProvider
    DataSet = SQLRotas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 32
    Top = 624
  end
  object CDSRotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPRotas'
    BeforePost = CDSRotasBeforePost
    Left = 32
    Top = 680
    object CDSRotasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSRotasNM_ROT: TStringField
      FieldName = 'NM_ROT'
      Required = True
      Size = 45
    end
    object CDSRotasID_VEN: TIntegerField
      FieldName = 'ID_VEN'
      Required = True
    end
    object CDSRotasID_CTG: TIntegerField
      FieldName = 'ID_CTG'
      Required = True
    end
    object CDSRotasCD_USU: TStringField
      FieldName = 'CD_USU'
      Required = True
      Size = 45
    end
    object CDSRotasNM_CTG_CLI: TStringField
      FieldName = 'NM_CTG_CLI'
      ProviderFlags = []
      Size = 45
    end
    object CDSRotasNM_VEN: TStringField
      FieldName = 'NM_VEN'
      ProviderFlags = []
      Size = 35
    end
  end
  object SQLVenRotas: TSQLDataSet
    CommandText = 
      'select db_rotcid.*,db_cidades.nm_cid,db_cidades.uf_cid from db_r' +
      'otcid'#13#10'inner join db_cidades on db_cidades.id = db_rotcid.id_cid' +
      'ade'#13#10'where db_rotcid.id_rotas =:pidRotas'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pidRotas'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 120
    Top = 568
    object SQLVenRotasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLVenRotasID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Required = True
    end
    object SQLVenRotasID_ROTAS: TIntegerField
      FieldName = 'ID_ROTAS'
      Required = True
    end
    object SQLVenRotasNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 35
    end
    object SQLVenRotasUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
  end
  object DSPVenRotas: TDataSetProvider
    DataSet = SQLVenRotas
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 120
    Top = 624
  end
  object CDSVenRotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVenRotas'
    AfterInsert = CDSVenRotasAfterInsert
    BeforePost = CDSVenRotasBeforePost
    Left = 120
    Top = 680
    object CDSVenRotasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSVenRotasID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Required = True
    end
    object CDSVenRotasID_ROTAS: TIntegerField
      FieldName = 'ID_ROTAS'
      Required = True
    end
    object CDSVenRotasNM_CID: TStringField
      FieldName = 'NM_CID'
      ProviderFlags = []
      Size = 35
    end
    object CDSVenRotasUF_CID: TStringField
      FieldName = 'UF_CID'
      ProviderFlags = []
      Size = 2
    end
  end
end
