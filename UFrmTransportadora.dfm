inherited FormTransportadora: TFormTransportadora
  Caption = 'Cadastro de Transportadoras'
  ClientHeight = 616
  ClientWidth = 1055
  ExplicitWidth = 1061
  ExplicitHeight = 645
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1055
    Height = 616
    ActivePage = TabCadastro
    ExplicitWidth = 1055
    ExplicitHeight = 616
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 1047
      ExplicitHeight = 585
      inherited PanelConsulta: TPanel
        Width = 1047
        ExplicitWidth = 1047
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'C'#243'digo'
          Items.Strings = (
            'C'#243'digo'
            'Nome Transportadora')
        end
        inherited Edconsulta: TMaskEdit
          OnKeyPress = EdconsultaKeyPress
        end
      end
      inherited Panel1: TPanel
        Width = 1047
        ExplicitWidth = 1047
        inherited btnFechar: TSpeedButton
          Left = 986
          ExplicitLeft = 939
        end
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1047
        Height = 472
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_TRN'
            Title.Caption = 'Nome da Transportadora'
            Width = 250
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ST_TRN'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_CAD'
            Title.Alignment = taCenter
            Title.Caption = 'Data Cadastro'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NO_FON'
            Title.Alignment = taCenter
            Title.Caption = 'Telefone'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CID'
            Title.Caption = 'Cidade'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UF_CID'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Width = 30
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1047
      ExplicitHeight = 585
      inherited Panel2: TPanel
        Top = 531
        Width = 1047
        ExplicitTop = 531
        ExplicitWidth = 1047
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1041
        Height = 46
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 14
          Top = 14
          Width = 155
          Height = 16
          Caption = 'C'#243'digo da Transportadora:'
        end
        object Label2: TLabel
          Left = 334
          Top = 14
          Width = 86
          Height = 16
          Caption = 'Data Cadastro:'
        end
        object Label3: TLabel
          Left = 667
          Top = 14
          Width = 41
          Height = 16
          Caption = 'Status:'
        end
        object DBText_ID: TDBText
          Left = 175
          Top = 14
          Width = 56
          Height = 17
          DataField = 'ID'
          DataSource = DSpadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBDateEdit_DT_CAD: TcxDBDateEdit
          Left = 422
          Top = 10
          DataBinding.DataField = 'DT_CAD'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object DBCombo_ST_TRN: TDBComboBox
          Left = 714
          Top = 10
          Width = 135
          Height = 24
          Style = csDropDownList
          DataField = 'ST_TRN'
          DataSource = DSpadrao
          Items.Strings = (
            'ATIVO'
            'DESATIVADO')
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 55
        Width = 1041
        Height = 146
        Align = alTop
        TabOrder = 2
        object Label4: TLabel
          Left = 38
          Top = 24
          Width = 131
          Height = 16
          Caption = 'Nome Transportadora:'
        end
        object Label5: TLabel
          Left = 640
          Top = 24
          Width = 68
          Height = 16
          Caption = 'CNPJ / CPF:'
        end
        object Label6: TLabel
          Left = 79
          Top = 59
          Width = 90
          Height = 16
          Caption = 'Nome Fantasia:'
        end
        object Label8: TLabel
          Left = 65
          Top = 99
          Width = 104
          Height = 16
          Caption = 'Nome do Contato:'
        end
        object Label10: TLabel
          Left = 628
          Top = 99
          Width = 80
          Height = 16
          Caption = 'Placa Ve'#237'culo:'
        end
        object DBEdit_NM_TRN: TDBEdit
          Left = 175
          Top = 21
          Width = 368
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_TRN'
          DataSource = DSpadrao
          TabOrder = 0
        end
        object DBEdit_NM_TRN_FAN: TDBEdit
          Left = 175
          Top = 58
          Width = 368
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_TRN_FAN'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit_NM_CTT_RSP: TDBEdit
          Left = 175
          Top = 96
          Width = 368
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_CTT_RSP'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object DBEdit_NO_CNP_CPF: TDBEdit
          Left = 714
          Top = 21
          Width = 174
          Height = 24
          DataField = 'NO_CNP_CPF'
          DataSource = DSpadrao
          TabOrder = 3
          OnExit = DBEdit_NO_CNP_CPFExit
          OnKeyPress = DBEdit_NO_CNP_CPFKeyPress
        end
        object DBEdit_NO_PLC_VEI: TDBEdit
          Left = 714
          Top = 96
          Width = 126
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NO_PLC_VEI'
          DataSource = DSpadrao
          TabOrder = 4
          OnExit = DBEdit_NO_PLC_VEIExit
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 207
        Width = 1041
        Height = 170
        Align = alTop
        TabOrder = 3
        object Label9: TLabel
          Left = 77
          Top = 15
          Width = 27
          Height = 16
          Caption = 'Cep:'
        end
        object Label11: TLabel
          Left = 60
          Top = 45
          Width = 44
          Height = 16
          Caption = 'Cidade:'
        end
        object Label12: TLabel
          Left = 46
          Top = 76
          Width = 58
          Height = 16
          Caption = 'Endere'#231'o:'
        end
        object Label13: TLabel
          Left = 65
          Top = 105
          Width = 39
          Height = 16
          Caption = 'Bairro:'
        end
        object Label14: TLabel
          Left = 688
          Top = 45
          Width = 20
          Height = 16
          Caption = 'UF:'
        end
        object Label15: TLabel
          Left = 684
          Top = 76
          Width = 24
          Height = 16
          Caption = 'No.:'
        end
        object Label16: TLabel
          Left = 807
          Top = 76
          Width = 84
          Height = 16
          Caption = 'Complemento:'
        end
        object Label17: TLabel
          Left = 49
          Top = 135
          Width = 55
          Height = 16
          Caption = 'Telefone:'
        end
        object Label18: TLabel
          Left = 318
          Top = 135
          Width = 25
          Height = 16
          Caption = 'Fax:'
        end
        object Label19: TLabel
          Left = 599
          Top = 135
          Width = 45
          Height = 16
          Caption = 'Celular:'
        end
        object btn_cons_cep: TSpeedButton
          Left = 237
          Top = 11
          Width = 23
          Height = 25
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000060000000A000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000060000000FF0000006000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000060000000FF000000600000000000000000000000000000
            0000000000000000000000000060000000B000000080000000A0000000700000
            001000000060000000FF00000060000000000000000000000000000000000000
            000000000010000000B00000005F000000000000000000000000000000200000
            00A0000000FF0000006000000000000000000000000000000000000000000000
            0000000000B00000003000000000000000000000000000000000000000000000
            0000000000A00000003000000000000000000000000000000000000000000000
            0040000000600000000000000000000000000000000000000000000000000000
            000000000010000000A000000000000000000000000000000000000000000000
            00A0000000100000000000000000000000000000000000000000000000000000
            000000000000000000A000000000000000000000000000000000000000000000
            00C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000008000000020000000000000000000000000000000000000
            00A0000000000000000000000000000000000000000000000000000000000000
            0000000000000000009000000000000000000000000000000000000000000000
            0060000000500000000000000000000000000000000000000000000000000000
            000000000000000000B000000000000000000000000000000000000000000000
            0000000000B00000001000000000000000000000000000000000000000000000
            0000000000700000004000000000000000000000000000000000000000000000
            000000000030000000B000000020000000000000000000000000000000100000
            0080000000600000000000000000000000000000000000000000000000000000
            000000000000000000100000008F000000B0000000A0000000C0000000A00000
            0040000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = btn_cons_cepClick
        end
        object Label7: TLabel
          Left = 600
          Top = 15
          Width = 108
          Height = 16
          Caption = 'Inscri'#231#227'o Estadual:'
        end
        object DBEdit_ID_CEP: TDBEdit
          Left = 110
          Top = 12
          Width = 121
          Height = 24
          DataField = 'NO_CEP'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 1
        end
        object DBEdit_NM_CID: TDBEdit
          Left = 110
          Top = 42
          Width = 433
          Height = 24
          Color = 16773077
          DataField = 'NM_CID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 2
        end
        object DBEdit_NM_RUA: TDBEdit
          Left = 110
          Top = 72
          Width = 433
          Height = 24
          Color = 16773077
          DataField = 'NM_RUA'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 3
        end
        object DBEdit_NM_BAI: TDBEdit
          Left = 110
          Top = 102
          Width = 433
          Height = 24
          Color = 16773077
          DataField = 'NM_BAI'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 4
        end
        object DBEdit_UF_CID: TDBEdit
          Left = 714
          Top = 42
          Width = 78
          Height = 24
          Color = 16773077
          DataField = 'UF_CID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 5
        end
        object DBEdit_NO_EDR: TDBEdit
          Left = 714
          Top = 72
          Width = 78
          Height = 24
          DataField = 'NO_EDR'
          DataSource = DSpadrao
          TabOrder = 6
        end
        object DBEdit_DS_CPL: TDBEdit
          Left = 897
          Top = 72
          Width = 122
          Height = 24
          CharCase = ecUpperCase
          DataField = 'DS_CPL'
          DataSource = DSpadrao
          TabOrder = 7
        end
        object DBEdit_NO_FON: TDBEdit
          Left = 109
          Top = 132
          Width = 160
          Height = 24
          DataField = 'NO_FON'
          DataSource = DSpadrao
          MaxLength = 14
          TabOrder = 8
        end
        object DBEdit_NO_FAX: TDBEdit
          Left = 347
          Top = 132
          Width = 160
          Height = 24
          DataField = 'NO_FAX'
          DataSource = DSpadrao
          MaxLength = 14
          TabOrder = 9
        end
        object DBEdit_NO_CEL: TDBEdit
          Left = 650
          Top = 132
          Width = 160
          Height = 24
          DataField = 'NO_CEL'
          DataSource = DSpadrao
          MaxLength = 15
          TabOrder = 10
        end
        object DBEdit_NO_INS_EST: TDBEdit
          Left = 714
          Top = 12
          Width = 174
          Height = 24
          DataField = 'NO_INS_EST'
          DataSource = DSpadrao
          TabOrder = 0
          OnExit = DBEdit_NO_INS_ESTExit
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 383
        Width = 1041
        Height = 46
        Align = alTop
        TabOrder = 4
        object Label20: TLabel
          Left = 13
          Top = 14
          Width = 128
          Height = 16
          Caption = 'C'#243'digo / Nome Banco:'
        end
        object Label23: TLabel
          Left = 456
          Top = 15
          Width = 50
          Height = 16
          Caption = 'Ag'#234'ncia:'
        end
        object Label24: TLabel
          Left = 678
          Top = 14
          Width = 90
          Height = 16
          Caption = 'Conta corrente:'
        end
        object EdCodbanco: TEdit
          Left = 144
          Top = 11
          Width = 48
          Height = 24
          TabOrder = 0
          OnExit = EdCodbancoExit
        end
        object Dbedit_NM_LOC_COB: TDBEdit
          Left = 199
          Top = 11
          Width = 191
          Height = 24
          CharCase = ecUpperCase
          Color = 16773077
          DataField = 'NM_LOC_COB'
          DataSource = Dscobranca
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object Dbedit_CD_AGC: TDBEdit
          Left = 511
          Top = 11
          Width = 114
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CD_AGC'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object DBEdit_NO_CTA_COR: TDBEdit
          Left = 774
          Top = 11
          Width = 195
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NO_CTA_COR'
          DataSource = DSpadrao
          TabOrder = 3
          OnEnter = DBEdit_NO_CTA_COREnter
          OnExit = DBEdit_NO_CTA_CORExit
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 435
        Width = 1041
        Height = 86
        Align = alTop
        TabOrder = 5
        object Label21: TLabel
          Left = 33
          Top = 17
          Width = 71
          Height = 16
          Caption = 'Home-Page:'
        end
        object Label22: TLabel
          Left = 63
          Top = 51
          Width = 41
          Height = 16
          Caption = 'E-mail:'
        end
        object cxDBHomePage: TcxDBHyperLinkEdit
          Left = 111
          Top = 14
          DataBinding.DataField = 'HOME_PAGE'
          DataBinding.DataSource = DSpadrao
          TabOrder = 0
          Width = 432
        end
        object DBEdit_E_MAIL: TDBEdit
          Left = 111
          Top = 48
          Width = 432
          Height = 24
          DataField = 'E_MAIL'
          DataSource = DSpadrao
          TabOrder = 1
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 960
    Top = 112
  end
  inherited ActionList1: TActionList
    Left = 960
    Top = 168
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSTransportadora
    Left = 184
    Top = 568
  end
  inherited SP_GEN_PADRAO: TSQLStoredProc
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_GEN_DB_TRANSPORTADORA_ID'
    Left = 404
    Top = 558
  end
  object dsCep: TDataSource
    DataSet = DMcadastro.CDSTransportadora
    Left = 332
    Top = 559
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    AjustarTamanho = True
    Left = 958
    Top = 315
  end
  object Dscobranca: TDataSource
    DataSet = DMcadastro.CDSLocalCobranca
    Left = 244
    Top = 563
  end
  object FR_Transportadora: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43040.609873171300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_TransportadoraGetValue
    Left = 601
    Top = 563
    Datasets = <
      item
        DataSet = frxDBTransportadora
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' user'
        Value = Null
      end
      item
        Name = 'rUsuario'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageRep: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object Memo2: TfrxMemoView
        Align = baCenter
        Left = 230.551330000000000000
        Top = -2.000000000000000000
        Width = 257.008040000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'courier new'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELATORIO TRANSPORTADORA)')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Left = 0.559060000000000000
        Top = -2.000000000000000000
        Width = 186.000000000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'PARAN'#193' FERRAGENS LTDA')
        ParentFont = False
      end
      object Date: TfrxMemoView
        Left = 238.992270000000000000
        Top = 17.118120000000000000
        Width = 411.968770000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object Time: TfrxMemoView
        Left = 631.181510000000000000
        Top = 17.118120000000000000
        Width = 90.708720000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Time]')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 0.779530000000000000
        Top = 17.118120000000000000
        Width = 241.889920000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Memo.UTF8W = (
          'Evolu'#231#227'o Sistemas - Vers'#227'o 3.2.7')
        ParentFont = False
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Top = 10.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'COD')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 26.472440940000000000
          Top = 10.000000000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME DA TRANSPORTADORA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 232.433070870000000000
          Top = 10.000000000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ENDERECO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 482.118430000000000000
          Top = 10.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TELEFONE')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 563.299337090000000000
          Top = 10.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CIDADE')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 691.433520000000000000
          Top = 10.000000000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBTransportadora
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_TRN: TfrxMemoView
          Left = 24.795300000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'NM_TRN'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_TRN"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_RUA: TfrxMemoView
          Left = 232.330860000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'NM_RUA'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_RUA"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_FON: TfrxMemoView
          Left = 482.764070000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'NO_FON'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FON"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_CID: TfrxMemoView
          Left = 562.590910000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CID'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CID"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1UF_CID: TfrxMemoView
          Align = baRight
          Left = 695.433519999999900000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'UF_CID'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."UF_CID"]')
          WordWrap = False
        end
        object frxDBDataset1NO_EDR: TfrxMemoView
          Left = 453.527830000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'NO_EDR'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NO_EDR"]')
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 7.000000000000000000
          Width = 487.559370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = []
          Memo.UTF8W = (
            
              'RMM Sistemas e Consultoria Ltda     -     http://www.rmmconsulto' +
              'ria.com.br ')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Top = 6.000000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object rUsuario: TfrxMemoView
          Left = 430.866420000000000000
          Top = 7.000012199999986000
          Width = 219.212740000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rUsuario]')
          ParentFont = False
        end
        object Time1: TfrxMemoView
          Left = 650.079160000000000000
          Top = 7.000012200000014000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
      end
      object Page: TfrxMemoView
        Align = baRight
        Left = 638.740569999999900000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DisplayFormat.FormatStr = '000'
        DisplayFormat.Kind = fkNumeric
        HAlign = haRight
        Memo.UTF8W = (
          '[Page#]')
      end
    end
  end
  object frxDBTransportadora: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NM_TRN=NM_TRN'
      'ST_TRN=ST_TRN'
      'DT_CAD=DT_CAD'
      'NM_TRN_FAN=NM_TRN_FAN'
      'NO_FON=NO_FON'
      'NO_FAX=NO_FAX'
      'NO_CEL=NO_CEL'
      'ID_CEP=ID_CEP'
      'NO_EDR=NO_EDR'
      'DS_CPL=DS_CPL'
      'CD_PAI=CD_PAI'
      'NO_CNP_CPF=NO_CNP_CPF'
      'NO_INS_EST=NO_INS_EST'
      'E_MAIL=E_MAIL'
      'HOME_PAGE=HOME_PAGE'
      'ID_BANCO=ID_BANCO'
      'CD_BCO=CD_BCO'
      'NM_BCO=NM_BCO'
      'CD_AGC=CD_AGC'
      'NO_CTA_COR=NO_CTA_COR'
      'NM_CTT_RSP=NM_CTT_RSP'
      'TP_TRN=TP_TRN'
      'CD_FOR=CD_FOR'
      'CD_CTB=CD_CTB'
      'CD_CTB_DEB=CD_CTB_DEB'
      'CD_CTB_CRD=CD_CTB_CRD'
      'NO_PLC_VEI=NO_PLC_VEI'
      'DS_OBS=DS_OBS'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU'
      'NM_BAI=NM_BAI'
      'NM_CID=NM_CID'
      'NM_RUA=NM_RUA'
      'NO_CEP=NO_CEP'
      'UF_CID=UF_CID')
    DataSet = DMcadastro.CDSTransportadora
    BCDToCurrency = False
    Left = 723
    Top = 563
  end
  object PopupMenu1: TPopupMenu
    Left = 956
    Top = 248
    object ImpressoraLaser1: TMenuItem
      Caption = 'Impressora &Laser'
      OnClick = ImpressoraLaser1Click
    end
    object ImpressoraMatricial1: TMenuItem
      Caption = 'Impressora &Matricial'
      OnClick = ImpressoraMatricial1Click
    end
    object ExportarPDF1: TMenuItem
      Caption = 'Exportar &PDF'
      OnClick = ExportarPDF1Click
    end
    object ExportarExcel1: TMenuItem
      Caption = 'Exportar &Excel'
      OnClick = ExportarExcel1Click
    end
  end
  object frxPDFExport1: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 828
    Top = 562
  end
  object frxXLSExport1: TfrxXLSExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    ExportStyles = False
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    GridLines = False
    Left = 916
    Top = 562
  end
  object FR_TransportadoraM: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'pmdefault'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43034.472662419000000000
    ReportOptions.LastChange = 43040.622104270840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_TransportadoraMGetValue
    Left = 605
    Top = 487
    Datasets = <
      item
        DataSet = frxDBTransportadora
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' variaveis'
        Value = Null
      end
      item
        Name = 'musuario'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 248.919839239270500000
      PaperHeight = 292.364394514661800000
      PaperSize = 256
      FontStyle = [fsxCondensed]
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 17.000000000000000000
        Width = 940.800000000000000000
        object Date: TfrxDMPMemoView
          Left = 691.200000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[Date]')
          TruncOutboundText = False
        end
        object Time: TfrxDMPMemoView
          Align = baRight
          Left = 816.000000000000000000
          Top = 17.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          TruncOutboundText = False
        end
        object Page: TfrxDMPMemoView
          Align = baRight
          Left = 864.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          TruncOutboundText = False
        end
        object DMPMemo1: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'PARANA FERRAGENS LTDA (MATRIZ)')
          TruncOutboundText = False
        end
        object DMPMemo3: TfrxDMPMemoView
          Left = 768.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '000'
          HAlign = haRight
          Memo.UTF8W = (
            'PAGINA:')
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsx12cpi]
          Memo.UTF8W = (
            'Evolucao Sistemas - Versao 1.0.01')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          Align = baCenter
          Left = 355.200000000000000000
          Width = 230.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO REPRESENTANTES')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 153.000000000000000000
        Width = 940.800000000000000000
        DataSet = frxDBTransportadora
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxDMPMemoView
          Width = 38.400000000000000000
          Height = 17.000000000000000000
          DataField = 'ID'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_TRN: TfrxDMPMemoView
          Left = 48.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_TRN'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_TRN"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NO_FON: TfrxDMPMemoView
          Left = 451.200000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_FON'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FON"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_CID: TfrxDMPMemoView
          Left = 595.200000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_CID'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CID"]')
          TruncOutboundText = False
        end
        object frxDBDataset1UF_CID: TfrxDMPMemoView
          Left = 902.400000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          DataField = 'UF_CID'
          DataSet = frxDBTransportadora
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."UF_CID"]')
          TruncOutboundText = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 85.000000000000000000
        Width = 940.800000000000000000
        object DMPMemo5: TfrxDMPMemoView
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'COD')
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 48.000000000000000000
          Top = 17.000000000000000000
          Width = 403.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME TRANSPORTADORA')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 451.200000000000000000
          Top = 17.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TELEFONE')
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Left = 595.200000000000000000
          Top = 17.000000000000000000
          Width = 316.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CIDADE')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Left = 902.400000000000000000
          Top = 17.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'UF')
          TruncOutboundText = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 204.000000000000000000
        Width = 940.800000000000000000
        object DMPMemo11: TfrxDMPMemoView
          Align = baLeft
          Width = 432.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx12cpi]
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Evolucao Sistemas - Fone: (33) 9916-2272')
          ParentFont = False
          TruncOutboundText = False
        end
        object musuario: TfrxDMPMemoView
          Left = 441.600000000000000000
          Width = 489.600000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[musuario]')
          TruncOutboundText = False
        end
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 725
    Top = 487
  end
end
