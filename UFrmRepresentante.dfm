inherited FormRepresentante: TFormRepresentante
  Caption = 'Cadastro de Representantes'
  ClientHeight = 729
  ClientWidth = 905
  ExplicitWidth = 911
  ExplicitHeight = 758
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 905
    Height = 729
    ExplicitWidth = 905
    ExplicitHeight = 729
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 897
      ExplicitHeight = 698
      inherited PanelConsulta: TPanel
        Width = 897
        ExplicitWidth = 897
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'C'#243'digo'
          Items.Strings = (
            'C'#243'digo'
            'Nome Representante')
        end
        inherited Edconsulta: TMaskEdit
          OnKeyPress = EdconsultaKeyPress
        end
      end
      inherited Panel1: TPanel
        Width = 897
        ExplicitWidth = 897
        inherited btnFechar: TSpeedButton
          Left = 836
          ExplicitLeft = 937
        end
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 897
        Height = 585
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_REP'
            Title.Caption = 'Nome Representante'
            Width = 350
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ST_REP'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_CAD'
            Title.Alignment = taCenter
            Title.Caption = 'Cadastro'
            Width = 170
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NO_FON'
            Title.Alignment = taCenter
            Title.Caption = 'Telefone'
            Width = 130
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NO_CEL'
            Title.Alignment = taCenter
            Title.Caption = 'Celular'
            Width = 140
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 897
      ExplicitHeight = 698
      inherited Panel2: TPanel
        Top = 644
        Width = 897
        ExplicitTop = 644
        ExplicitWidth = 897
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 891
        Height = 76
        Align = alTop
        TabOrder = 1
        object Label5: TLabel
          Left = 692
          Top = 25
          Width = 41
          Height = 16
          Caption = 'Status:'
        end
        object Label1: TLabel
          Left = 45
          Top = 26
          Width = 131
          Height = 16
          Caption = 'C'#243'digo Representante:'
        end
        object Label2: TLabel
          Left = 379
          Top = 26
          Width = 86
          Height = 16
          Caption = 'Data Cadastro:'
        end
        object DBEdit_ID: TDBEdit
          Left = 185
          Top = 22
          Width = 88
          Height = 24
          DataField = 'ID'
          DataSource = DSpadrao
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBDateEdit_DT_CAD: TcxDBDateEdit
          Left = 490
          Top = 22
          DataBinding.DataField = 'DT_CAD'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          Properties.SaveTime = False
          TabOrder = 1
          Width = 121
        end
        object DBComboST_REP: TDBComboBox
          Left = 739
          Top = 22
          Width = 126
          Height = 25
          Style = csOwnerDrawFixed
          DataField = 'ST_REP'
          DataSource = DSpadrao
          ItemHeight = 19
          Items.Strings = (
            'ATIVO'
            'DESATIVADO')
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 85
        Width = 891
        Height = 100
        Align = alTop
        TabOrder = 2
        object Label3: TLabel
          Left = 51
          Top = 19
          Width = 125
          Height = 16
          Caption = 'Nome Representante:'
        end
        object Label4: TLabel
          Left = 51
          Top = 58
          Width = 127
          Height = 16
          Caption = 'Raz'#227'o Representante:'
        end
        object Label14: TLabel
          Left = 665
          Top = 19
          Width = 68
          Height = 16
          Caption = 'CNPJ / CPF:'
        end
        object DBEdit_NM_REP: TDBEdit
          Left = 185
          Top = 16
          Width = 426
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_REP'
          DataSource = DSpadrao
          TabOrder = 0
        end
        object DBEdit_NM_REP_RAZ: TDBEdit
          Left = 185
          Top = 55
          Width = 426
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_REP_RAZ'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit_NO_CNP_CPF: TcxDBTextEdit
          Left = 739
          Top = 16
          DataBinding.DataField = 'NO_CNP_CPF'
          DataBinding.DataSource = DSpadrao
          TabOrder = 2
          OnKeyPress = cxDBTextEdit1KeyPress
          Width = 126
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 551
        Width = 891
        Height = 83
        Margins.Bottom = 10
        Align = alBottom
        TabOrder = 4
        object Label18: TLabel
          Left = 38
          Top = 15
          Width = 71
          Height = 16
          Caption = 'Home-Page:'
        end
        object Label19: TLabel
          Left = 68
          Top = 49
          Width = 41
          Height = 16
          Caption = 'E-mail:'
        end
        object cxDBHomePage: TcxDBHyperLinkEdit
          Left = 121
          Top = 12
          DataBinding.DataField = 'HOME_PAGE'
          DataBinding.DataSource = DSpadrao
          TabOrder = 0
          Width = 449
        end
        object DBEdit_E_MAIL: TDBEdit
          Left = 121
          Top = 46
          Width = 449
          Height = 24
          DataField = 'E_MAIL'
          DataSource = DSpadrao
          TabOrder = 1
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 188
        Margins.Top = 0
        Margins.Bottom = 0
        Align = alClient
        Ctl3D = True
        ParentCtl3D = False
        Style.BorderStyle = ebsNone
        TabOrder = 3
        Transparent = True
        Height = 360
        Width = 897
        object PageControl2: TPageControl
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 887
          Height = 334
          Margins.Top = 0
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 0
          object TabSheet1: TTabSheet
            Caption = 'Cadastro'
            object Label6: TLabel
              Left = 48
              Top = 67
              Width = 58
              Height = 16
              Caption = 'Endere'#231'o:'
            end
            object Label7: TLabel
              Left = 79
              Top = 27
              Width = 27
              Height = 16
              Caption = 'Cep:'
            end
            object Label8: TLabel
              Left = 67
              Top = 110
              Width = 39
              Height = 16
              Caption = 'Bairro:'
            end
            object Label9: TLabel
              Left = 62
              Top = 151
              Width = 44
              Height = 16
              Caption = 'Cidade:'
            end
            object Label10: TLabel
              Left = 51
              Top = 196
              Width = 55
              Height = 16
              Caption = 'Telefone:'
            end
            object Label11: TLabel
              Left = 81
              Top = 235
              Width = 25
              Height = 16
              Caption = 'Fax:'
            end
            object Label12: TLabel
              Left = 61
              Top = 277
              Width = 45
              Height = 16
              Caption = 'Celular:'
            end
            object Label13: TLabel
              Left = 277
              Top = 25
              Width = 56
              Height = 16
              Caption = 'Inscri'#231#227'o:'
            end
            object Label15: TLabel
              Left = 593
              Top = 68
              Width = 50
              Height = 16
              Caption = 'N'#250'mero:'
            end
            object Label16: TLabel
              Left = 559
              Top = 108
              Width = 84
              Height = 16
              Caption = 'Complemento:'
            end
            object Label17: TLabel
              Left = 623
              Top = 150
              Width = 20
              Height = 16
              Caption = 'UF:'
            end
            object btn_cons_cep: TSpeedButton
              Left = 216
              Top = 24
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
            object DBEdit_NM_RUA: TDBEdit
              Left = 116
              Top = 64
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NM_RUA'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit_NM_BAI: TDBEdit
              Left = 116
              Top = 107
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NM_BAI'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit_NM_CID: TDBEdit
              Left = 116
              Top = 148
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NM_CID'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit_NO_FON: TDBEdit
              Left = 116
              Top = 193
              Width = 160
              Height = 24
              DataField = 'NO_FON'
              DataSource = DSpadrao
              MaxLength = 14
              TabOrder = 7
              OnExit = DBEdit_NO_FONExit
            end
            object DBEdit_NO_FAX: TDBEdit
              Left = 116
              Top = 232
              Width = 160
              Height = 24
              DataField = 'NO_FAX'
              DataSource = DSpadrao
              MaxLength = 14
              TabOrder = 8
            end
            object DBEdit_NO_CEL: TDBEdit
              Left = 116
              Top = 274
              Width = 160
              Height = 24
              DataField = 'NO_CEL'
              DataSource = DSpadrao
              MaxLength = 15
              TabOrder = 9
            end
            object DBEdit_NO_INS_EST: TDBEdit
              Left = 348
              Top = 22
              Width = 197
              Height = 24
              DataField = 'NO_INS_EST'
              DataSource = DSpadrao
              TabOrder = 0
              OnExit = DBEdit_NO_INS_ESTExit
            end
            object DBEdit_NO_EDR: TDBEdit
              Left = 651
              Top = 64
              Width = 94
              Height = 24
              DataField = 'NO_EDR'
              DataSource = DSpadrao
              TabOrder = 2
              OnKeyPress = DBEdit_NO_EDRKeyPress
            end
            object DBEdit_DS_CPL: TDBEdit
              Left = 651
              Top = 105
              Width = 94
              Height = 24
              CharCase = ecUpperCase
              DataField = 'DS_CPL'
              DataSource = DSpadrao
              TabOrder = 3
            end
            object DBEdit_UF_CID: TDBEdit
              Left = 651
              Top = 148
              Width = 94
              Height = 24
              CharCase = ecUpperCase
              DataField = 'UF_CID'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit1: TDBEdit
              Left = 116
              Top = 24
              Width = 93
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NO_CEP'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 10
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Observa'#231#227'o'
            ImageIndex = 1
            object cxDBMemo_DS_OBS: TcxDBMemo
              Left = 0
              Top = 0
              Align = alClient
              DataBinding.DataField = 'DS_OBS'
              DataBinding.DataSource = DSpadrao
              Properties.CharCase = ecUpperCase
              TabOrder = 0
              OnKeyPress = cxDBMemo_DS_OBSKeyPress
              Height = 303
              Width = 879
            end
          end
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 872
    Top = 680
  end
  inherited ActionList1: TActionList
    Left = 944
    Top = 680
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSRepresentante
    Left = 744
    Top = 616
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
    StoredProcName = 'SP_GEN_DB_REPRESENTANTE_ID'
    Left = 668
    Top = 622
  end
  object DSCep: TDataSource
    DataSet = CDS_Cep
    Left = 788
    Top = 659
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    AjustarTamanho = True
    Left = 844
    Top = 531
  end
  object CDS_Cep: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 749
    Top = 510
    object CDS_CepNO_CEP: TStringField
      FieldName = 'NO_CEP'
      Size = 8
    end
    object CDS_CepNM_RUA: TStringField
      FieldName = 'NM_RUA'
      Size = 45
    end
    object CDS_CepNM_BAI: TStringField
      FieldName = 'NM_BAI'
      Size = 45
    end
    object CDS_CepNM_CID: TStringField
      FieldName = 'NM_CID'
      Size = 45
    end
    object CDS_CepUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 2
    end
    object CDS_CepCEP_ID: TIntegerField
      FieldName = 'CEP_ID'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 828
    Top = 403
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
    Left = 516
    Top = 667
  end
  object frxDBRepresentante: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NM_REP=NM_REP'
      'NM_REP_RAZ=NM_REP_RAZ'
      'ST_REP=ST_REP'
      'NO_CNP_CPF=NO_CNP_CPF'
      'NO_INS_EST=NO_INS_EST'
      'DT_CAD=DT_CAD'
      'E_MAIL=E_MAIL'
      'HOME_PAGE=HOME_PAGE'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU'
      'DS_CPL=DS_CPL'
      'NO_FON=NO_FON'
      'NO_FAX=NO_FAX'
      'NO_CEL=NO_CEL'
      'ID_CEP=ID_CEP'
      'DS_OBS=DS_OBS'
      'NO_EDR=NO_EDR'
      'NM_BAI=NM_BAI'
      'NM_CID=NM_CID'
      'NM_RUA=NM_RUA'
      'NO_CEP=NO_CEP'
      'UF_CID=UF_CID')
    DataSet = DMcadastro.CDSRepresentante
    BCDToCurrency = False
    Left = 255
    Top = 663
  end
  object FReport_Representante: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43027.661412175900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FReport_RepresentanteGetValue
    Left = 352
    Top = 520
    Datasets = <
      item
        DataSet = frxDBRepresentante
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
        Left = 235.787570000000000000
        Top = -2.000000000000000000
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'courier new'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELATORIO REPRESENTANTES)')
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
      object TotalPages: TfrxMemoView
        Left = 610.181510000000000000
        Top = -2.000000000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DisplayFormat.FormatStr = '00'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'courier new'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '[TotalPages#]')
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
            'C'#243'd.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 42.929190000000000000
          Top = 10.000000000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome Representante')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 215.433070870000000000
          Top = 10.000000000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 330.275820000000000000
          Top = 10.000000000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 453.543307090000000000
          Top = 10.000000000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 687.433520000000000000
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
        DataSet = frxDBRepresentante
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1NM_REP: TfrxMemoView
          Left = 43.086614170000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DataField = 'NM_REP'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_REP"]')
          ParentFont = False
        end
        object frxDBDataset1NO_FON: TfrxMemoView
          Left = 215.433210000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'NO_FON'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FON"]')
          ParentFont = False
        end
        object frxDBDataset1NM_CID: TfrxMemoView
          Left = 453.543600000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CID'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CID"]')
          ParentFont = False
        end
        object frxDBDataset1UF_CID: TfrxMemoView
          Left = 693.543307090000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'UF_CID'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."UF_CID"]')
          ParentFont = False
        end
        object frxDBDataset1NO_CEL: TfrxMemoView
          Left = 330.330708660000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'NO_CEL'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_CEL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 7.000000000000000000
          Width = 430.866420000000000000
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
        end
        object Line1: TfrxLineView
          Top = 6.000000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object rUsuario: TfrxMemoView
          Left = 430.866420000000000000
          Top = 7.000012200000014000
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
    end
  end
  object frxXLSExport1: TfrxXLSExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 404
    Top = 667
  end
  object FR_Rep_matricial: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'pmdefault'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43034.472662419000000000
    ReportOptions.LastChange = 43034.472662419000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_Rep_matricialGetValue
    Left = 485
    Top = 511
    Datasets = <
      item
        DataSet = frxDBRepresentante
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
        DataSet = frxDBRepresentante
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxDMPMemoView
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'ID'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          FontStyle = [fsx12cpi]
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBDataset1NM_REP: TfrxDMPMemoView
          Left = 48.000000000000000000
          Width = 288.000000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_REP'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          FontStyle = [fsx15cpi]
          Memo.UTF8W = (
            '[frxDBDataset1."NM_REP"]')
          ParentFont = False
          WordWrap = False
          TruncOutboundText = False
        end
        object frxDBDataset1NO_FON: TfrxDMPMemoView
          Left = 297.600000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_FON'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          FontStyle = [fsxCondensed]
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FON"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBDataset1NO_CEL: TfrxDMPMemoView
          Left = 441.600000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CEL'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          FontStyle = [fsxWide]
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset1."NO_CEL"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBDataset1NM_CID: TfrxDMPMemoView
          Left = 595.200000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_CID'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          FontStyle = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CID"]')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBDataset1UF_CID: TfrxDMPMemoView
          Left = 902.400000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          DataField = 'UF_CID'
          DataSet = frxDBRepresentante
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
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
            'Cod.')
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 48.000000000000000000
          Top = 17.000000000000000000
          Width = 240.000000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME REPRESENTANTE')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 297.600000000000000000
          Top = 17.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TELEFONE')
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 441.600000000000000000
          Top = 17.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CELULAR')
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
          Width = 19.200000000000000000
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
    Left = 605
    Top = 487
  end
end