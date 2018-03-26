inherited FormCFOP: TFormCFOP
  Caption = 'Cadastro de CFOP'
  ClientHeight = 729
  ClientWidth = 1008
  ExplicitWidth = 1014
  ExplicitHeight = 758
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1008
    Height = 729
    ExplicitWidth = 1008
    ExplicitHeight = 729
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      ExplicitWidth = 1000
      ExplicitHeight = 698
      inherited PanelConsulta: TPanel
        Width = 1000
        ExplicitWidth = 1000
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'N'#250'mero CFOP'
          Items.Strings = (
            'N'#250'mero CFOP'
            'Descri'#231#227'o CFOP')
        end
      end
      inherited Panel1: TPanel
        Width = 1000
        ExplicitWidth = 1000
        inherited btnFechar: TSpeedButton
          Left = 939
          ExplicitLeft = 773
        end
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1000
        Height = 585
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CD_CFO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.CFOP'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CFO'
            Title.Caption = 'Descri'#231#227'o CFOP'
            Width = 430
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_ICM'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_CTR'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_DVL'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_ETQ'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_PIS_COF'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_CMD'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1000
      ExplicitHeight = 698
      inherited Panel2: TPanel
        Top = 644
        Width = 1000
        ExplicitTop = 644
        ExplicitWidth = 1000
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 994
        Height = 105
        Align = alTop
        TabOrder = 1
        object DBText_ID: TDBText
          Left = 184
          Top = 8
          Width = 65
          Height = 17
          DataField = 'ID'
          DataSource = DSpadrao
        end
        object Label1: TLabel
          Left = 97
          Top = 34
          Width = 79
          Height = 16
          Caption = 'C'#243'digo CFOP:'
        end
        object Label2: TLabel
          Left = 103
          Top = 64
          Width = 73
          Height = 16
          Caption = 'Nome CFOP:'
        end
        object Label9: TLabel
          Left = 86
          Top = 9
          Width = 90
          Height = 16
          Caption = 'ID Lan'#231'amento:'
        end
        object DBEdit_CD_CFO: TDBEdit
          Left = 182
          Top = 31
          Width = 81
          Height = 24
          DataField = 'CD_CFO'
          DataSource = DSpadrao
          TabOrder = 0
          OnKeyPress = DBEdit_CD_CFOKeyPress
        end
        object DBEdit_NM_CFO: TDBEdit
          Left = 182
          Top = 61
          Width = 507
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_CFO'
          DataSource = DSpadrao
          TabOrder = 1
          OnKeyPress = DBEdit_NM_CFOKeyPress
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 111
        Width = 994
        Height = 530
        Margins.Top = 0
        Align = alClient
        TabOrder = 2
        object Label3: TLabel
          Left = 46
          Top = 22
          Width = 130
          Height = 16
          Caption = 'CFOP sujeito ao ICMS:'
        end
        object Label4: TLabel
          Left = 5
          Top = 52
          Width = 171
          Height = 16
          Caption = 'CFOP gera Contas a Receber:'
        end
        object Label5: TLabel
          Left = 60
          Top = 82
          Width = 116
          Height = 16
          Caption = 'CFOP de Devolu'#231#227'o:'
        end
        object Label6: TLabel
          Left = 24
          Top = 112
          Width = 152
          Height = 16
          Caption = 'CFOP movimenta Estoque:'
        end
        object Label7: TLabel
          Left = 77
          Top = 142
          Width = 99
          Height = 16
          Caption = 'Incide Pis/Cofins:'
        end
        object Label8: TLabel
          Left = 20
          Top = 172
          Width = 156
          Height = 16
          Caption = 'Incide no C'#225'lculo de Custo:'
        end
        object DBComboBox1: TDBComboBox
          Left = 182
          Top = 19
          Width = 145
          Height = 24
          Style = csDropDownList
          DataField = 'SN_ICM'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 0
        end
        object DBComboBox2: TDBComboBox
          Left = 182
          Top = 49
          Width = 145
          Height = 24
          Style = csDropDownList
          DataField = 'SN_CTR'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 1
        end
        object DBComboBox3: TDBComboBox
          Left = 182
          Top = 79
          Width = 145
          Height = 24
          Style = csDropDownList
          DataField = 'SN_DVL'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 2
        end
        object DBComboBox4: TDBComboBox
          Left = 182
          Top = 109
          Width = 145
          Height = 24
          Style = csDropDownList
          DataField = 'SN_ETQ'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 3
        end
        object DBComboBox5: TDBComboBox
          Left = 182
          Top = 139
          Width = 145
          Height = 24
          Style = csDropDownList
          DataField = 'SN_PIS_COF'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 4
        end
        object DBComboBox6: TDBComboBox
          Left = 182
          Top = 169
          Width = 145
          Height = 24
          Style = csDropDownList
          DataField = 'SN_CMD'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 5
        end
      end
    end
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDScfop
    Left = 448
    Top = 184
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
    StoredProcName = 'SP_GEN_DB_CFOP_ID'
    Left = 436
    Top = 262
  end
  object FReport_CFOP: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43067.717526851850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FReport_CFOPGetValue
    Left = 896
    Top = 240
    Datasets = <
      item
        DataSet = frxDBDataset_CFOP
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
      end
      item
        Name = 'rEmpresa'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo4: TfrxMemoView
          Top = 9.826771649999997000
          Width = 41.574830000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'd.'
            'CFOP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 41.464566930000000000
          Top = 9.826771649999997000
          Width = 415.748007090000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DESCRICAO'
            'CFOP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 455.527830000000000000
          Top = 9.826771649999997000
          Width = 45.354360000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ICM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 499.882190000000000000
          Top = 9.826771649999997000
          Width = 37.795300000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Rcb')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baRight
          Left = 661.417750000000000000
          Top = 9.826771649999997000
          Width = 56.692950000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Pis e'
            'Cofins')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 537.677490000000000000
          Top = 9.826771649999997000
          Width = 37.795300000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Dvl')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 575.472790000000000000
          Top = 9.826771649999997000
          Width = 37.795300000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Etq')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 612.063390000000000000
          Top = 9.826771649999997000
          Width = 49.133890000000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Custo')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset_CFOP
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Line2: TfrxLineView
          Top = 22.677179999999990000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1CD_CFO: TfrxMemoView
          Top = 3.779529999999994000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'CD_CFO'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CFO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_CFO: TfrxMemoView
          Left = 42.354360000000000000
          Top = 3.779529999999994000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CFO'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CFO"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1SN_ICM: TfrxMemoView
          Left = 456.307360000000000000
          Top = 3.779529999999994000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'SN_ICM'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."SN_ICM"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1SN_CTR: TfrxMemoView
          Left = 499.882190000000000000
          Top = 3.779529999999994000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          DataField = 'SN_CTR'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."SN_CTR"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1SN_DVL: TfrxMemoView
          Left = 538.457020000000000000
          Top = 3.779529999999994000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          DataField = 'SN_DVL'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."SN_DVL"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1SN_ETQ: TfrxMemoView
          Left = 575.472790000000000000
          Top = 3.779529999999994000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          DataField = 'SN_ETQ'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_ETQ"]')
          WordWrap = False
        end
        object frxDBDataset1SN_CMD: TfrxMemoView
          Left = 613.047620000000000000
          Top = 3.779529999999994000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          DataField = 'SN_CMD'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_CMD"]')
          WordWrap = False
        end
        object frxDBDataset1SN_PIS_COF: TfrxMemoView
          Left = 661.961040000000000000
          Top = 3.779529999999994000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          DataField = 'SN_PIS_COF'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_PIS_COF"]')
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 7.000000000000000000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'RMM Sistemas e Consultoria Ltda     -     http://www.rmmconsulto' +
              'ria.com.br ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 6.000000000000056000
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
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
      end
      object Memo2: TfrxMemoView
        Left = 253.787570000000000000
        Width = 298.582870000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELAT'#211'RIO RELA'#199#195'O DE CFOP)')
        ParentFont = False
      end
      object Date: TfrxMemoView
        Left = 238.992270000000000000
        Top = 17.007874015748000000
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
        Top = 17.007874015748000000
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
        Top = 17.007874015748000000
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
      object Memo1: TfrxMemoView
        Width = 226.771800000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'PARANA FERRAGENS LTDA')
        ParentFont = False
      end
      object Page: TfrxMemoView
        Left = 638.740570000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DisplayFormat.FormatStr = '000'
        DisplayFormat.Kind = fkNumeric
        HAlign = haRight
        Memo.UTF8W = (
          '[Page#]')
      end
      object Memo6: TfrxMemoView
        Left = 570.709030000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        HAlign = haRight
        Memo.UTF8W = (
          'P'#225'gina:')
      end
    end
  end
  object frxDBDataset_CFOP: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD_CFO=CD_CFO'
      'NM_CFO=NM_CFO'
      'SN_ICM=SN_ICM'
      'SN_CTR=SN_CTR'
      'SN_DVL=SN_DVL'
      'SN_ETQ=SN_ETQ'
      'SN_PIS_COF=SN_PIS_COF'
      'SN_CMD=SN_CMD'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU')
    DataSet = DMcadastro.CDScfop
    BCDToCurrency = False
    Left = 895
    Top = 303
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
    Left = 892
    Top = 355
  end
  object frxXLSExport1: TfrxXLSExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = True
    ExportEMF = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 892
    Top = 419
  end
  object PopupMenu1: TPopupMenu
    Left = 580
    Top = 355
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
  object FR_CFOP_Matricial: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'pmdefault'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43034.472662419000000000
    ReportOptions.LastChange = 43067.718078148150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_CFOP_MatricialGetValue
    Left = 762
    Top = 255
    Datasets = <
      item
        DataSet = frxDBDataset_CFOP
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
          Left = 835.200000000000000000
          Top = 17.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          TruncOutboundText = False
        end
        object Page: TfrxDMPMemoView
          Left = 873.600000000000000000
          Width = 67.200000000000000000
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
          Left = 787.200000000000000000
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
          Left = 326.400000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO RELACAO DE CFOP')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 153.000000000000000000
        Width = 940.800000000000000000
        DataSet = frxDBDataset_CFOP
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object DMPLine1: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 25.500000000000000000
          Width = 931.200000000000000000
          Color = clBlack
        end
        object frxDBDataset1CD_CFO: TfrxDMPMemoView
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_CFO'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CFO"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_CFO: TfrxDMPMemoView
          Left = 57.600000000000000000
          Width = 499.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_CFO'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CFO"]')
          TruncOutboundText = False
        end
        object frxDBDataset1SN_ICM: TfrxDMPMemoView
          Left = 566.400000000000000000
          Width = 38.400000000000000000
          Height = 17.000000000000000000
          DataField = 'SN_ICM'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_ICM"]')
          TruncOutboundText = False
        end
        object frxDBDataset1SN_CTR: TfrxDMPMemoView
          Left = 614.400000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'SN_CTR'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_CTR"]')
          TruncOutboundText = False
        end
        object frxDBDataset1SN_DVL: TfrxDMPMemoView
          Left = 672.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'SN_DVL'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_DVL"]')
          TruncOutboundText = False
        end
        object frxDBDataset1SN_ETQ: TfrxDMPMemoView
          Left = 729.600000000000000000
          Width = 38.400000000000000000
          Height = 17.000000000000000000
          DataField = 'SN_ETQ'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_ETQ"]')
          TruncOutboundText = False
        end
        object frxDBDataset1SN_CMD: TfrxDMPMemoView
          Left = 777.600000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'SN_CMD'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_CMD"]')
          TruncOutboundText = False
        end
        object frxDBDataset1SN_PIS_COF: TfrxDMPMemoView
          Left = 835.200000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          DataField = 'SN_PIS_COF'
          DataSet = frxDBDataset_CFOP
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_PIS_COF"]')
          TruncOutboundText = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 85.000000000000000000
        Width = 940.800000000000000000
        ReprintOnNewPage = True
        object DMPMemo5: TfrxDMPMemoView
          Top = 17.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CFOP')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 57.600000000000000000
          Top = 17.000000000000000000
          Width = 499.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DESCRIACAO CFOP')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 566.400000000000000000
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ICM')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 614.400000000000000000
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'RCB')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Left = 672.000000000000000000
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DVL')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ETQ')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo12: TfrxDMPMemoView
          Left = 777.600000000000000000
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CUSTO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Left = 835.200000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'PIS/COFINS')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 221.000000000000000000
        Width = 940.800000000000000000
        object DMPMemo11: TfrxDMPMemoView
          Align = baLeft
          Width = 576.000000000000000000
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
          Left = 585.600000000000000000
          Width = 345.600000000000000000
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
    Left = 762
    Top = 319
  end
end
