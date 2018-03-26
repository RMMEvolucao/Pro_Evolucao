inherited FormCest: TFormCest
  Caption = 'Cadastro de Cest'
  ClientHeight = 487
  ClientWidth = 1008
  ExplicitWidth = 1014
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1008
    Height = 487
    ExplicitWidth = 1008
    ExplicitHeight = 487
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 1000
      ExplicitHeight = 456
      inherited PanelConsulta: TPanel
        Width = 1000
        ExplicitWidth = 1000
        inherited cbConsulta: TComboBox
          Items.Strings = (
            'C'#243'digo Cest'
            'Descri'#231#227'o Cest'
            'Seguimento'
            'NBM')
        end
        inherited Edconsulta: TMaskEdit
          OnKeyPress = EdconsultaKeyPress
        end
      end
      inherited Panel1: TPanel
        Width = 1000
        ExplicitWidth = 1000
        inherited btnFechar: TSpeedButton
          Left = 939
          ExplicitLeft = 939
        end
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
        inherited btnExcluir: TSpeedButton
          Enabled = False
        end
        inherited btnIncluir: TSpeedButton
          Enabled = False
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1000
        Height = 343
        DataSource = DSpadrao
        Columns = <
          item
            Expanded = False
            FieldName = 'CEST'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NBM'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEGUIMENTO'
            Width = 309
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 490
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1000
      ExplicitHeight = 456
      inherited Panel2: TPanel
        Top = 402
        Width = 1000
        ExplicitTop = 402
        ExplicitWidth = 1000
        inherited btnGravar: TSpeedButton
          Enabled = False
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1000
        Height = 318
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 58
          Top = 15
          Width = 73
          Height = 16
          Caption = 'C'#243'digo Cest:'
        end
        object Label2: TLabel
          Left = 42
          Top = 184
          Width = 89
          Height = 16
          Caption = 'Descri'#231#227'o Cest:'
        end
        object Label4: TLabel
          Left = 42
          Top = 48
          Width = 89
          Height = 16
          Caption = 'Descri'#231#227'o Cest:'
        end
        object DBEdit_CD_CEST: TDBEdit
          Left = 137
          Top = 12
          Width = 121
          Height = 24
          DataField = 'CEST'
          DataSource = DSpadrao
          TabOrder = 0
          OnKeyPress = DBEdit_CD_CESTKeyPress
        end
        object DBMemo_DS_CEST: TDBMemo
          Left = 137
          Top = 184
          Width = 840
          Height = 125
          DataField = 'DESCRICAO'
          DataSource = DSpadrao
          MaxLength = 500
          TabOrder = 1
          OnKeyPress = DBMemo_DS_CESTKeyPress
        end
        object DBMemo_Seguimento: TDBMemo
          Left = 137
          Top = 48
          Width = 840
          Height = 125
          DataField = 'SEGUIMENTO'
          DataSource = DSpadrao
          MaxLength = 500
          TabOrder = 2
          OnKeyPress = DBMemo_DS_CESTKeyPress
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 318
        Width = 1000
        Height = 48
        Align = alTop
        TabOrder = 2
        object Label3: TLabel
          Left = 39
          Top = 16
          Width = 92
          Height = 16
          Caption = 'C'#243'digo do NCM:'
        end
        object DBEdit_CD_NCM: TDBEdit
          Left = 137
          Top = 13
          Width = 840
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NBM'
          DataSource = DSpadrao
          TabOrder = 0
          OnKeyPress = DBEdit_CD_NCMKeyPress
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 520
    Top = 272
  end
  inherited ActionList1: TActionList
    Left = 384
    Top = 280
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSCest
    Left = 456
    Top = 272
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
    StoredProcName = 'SP_GEN_DB_CEST_ID'
    Left = 316
    Top = 286
  end
  object FR_Cest_Laser: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43067.668003159720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_Cest_LaserGetValue
    Left = 502
    Top = 413
    Datasets = <
      item
        DataSet = frxDBDataCest
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' user'
        Value = Null
      end
      item
        Name = 'rUsuario'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageGenero: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo4: TfrxMemoView
          Top = 6.000000000000000000
          Width = 30.236240000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 31.307086610000000000
          Top = 6.000000000000000000
          Width = 64.252010000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Cd.Cest')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 88.488250000000000000
          Top = 5.826771650000000000
          Width = 627.401980000000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o do Cest')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 20.787401570000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataCest
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Line3: TfrxLineView
          Top = 19.897650000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1ID: TfrxMemoView
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDataCest
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
          VAlign = vaCenter
        end
        object frxDBDataset1CD_CEST: TfrxMemoView
          Left = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'CD_CEST'
          DataSet = frxDBDataCest
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CEST"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frxDBDataset1DS_CEST: TfrxMemoView
          Left = 87.267780000000000000
          Width = 627.401980000000000000
          Height = 18.897650000000000000
          DataField = 'DS_CEST'
          DataSet = frxDBDataCest
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DS_CEST"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 7.000000000000060000
          Width = 498.897960000000000000
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
          Top = 6.000000000000060000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object rUsuario: TfrxMemoView
          Left = 430.866420000000000000
          Top = 7.000012200000070000
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
          Top = 7.000012200000070000
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 40.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 550.354670000000000000
          Top = 21.543307090000000000
          Width = 90.708720000000000000
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
          Left = 624.842920000000000000
          Top = 21.543307086614200000
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
          Align = baLeft
          Top = 21.677180000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          LineSpacing = 1.000000000000000000
          Memo.UTF8W = (
            'Evolu'#231#227'o Sistemas - Vers'#227'o 3.2.7')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 186.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          LineSpacing = 1.000000000000000000
          Memo.UTF8W = (
            'PARAN'#193' FERRAGENS LTDA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 268.346630000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          LineSpacing = 1.000000000000000000
          Memo.UTF8W = (
            '(RELATORIO DE CEST)')
          ParentFont = False
          WordWrap = False
        end
        object Page: TfrxMemoView
          Align = baRight
          Left = 680.315400000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '0000'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          LineSpacing = 1.000000000000000000
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo7: TfrxMemoView
          Left = 631.622450000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          LineSpacing = 1.000000000000000000
          Memo.UTF8W = (
            'P'#225'gina:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 532.913730000000000000
          Top = 21.543307090000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataCest: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD_CEST=CD_CEST'
      'DS_CEST=DS_CEST'
      'CD_NCM=CD_NCM'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU')
    BCDToCurrency = False
    Left = 252
    Top = 413
  end
  object frxPDFExport1: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
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
    Left = 347
    Top = 413
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
    Left = 428
    Top = 413
  end
  object PopupMenu1: TPopupMenu
    Left = 604
    Top = 227
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
  object FR_CEST_Matricial: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'pmdefault'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43034.472662419000000000
    ReportOptions.LastChange = 43068.457897673610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_CEST_MatricialGetValue
    Left = 586
    Top = 415
    Datasets = <
      item
        DataSet = frxDBDataCest
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' variaveis'
        Value = Null
      end
      item
        Name = 'musuario'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 406.399737533502800000
      PaperHeight = 292.364394514661800000
      PaperSize = 256
      FontStyle = [fsxCondensed]
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 17.000000000000000000
        Width = 1536.000000000000000000
        object Date: TfrxDMPMemoView
          Align = baRight
          Left = 1296.000000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[Date]')
          TruncOutboundText = False
        end
        object Time: TfrxDMPMemoView
          Align = baRight
          Left = 1430.400000000000000000
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
          Left = 1468.800000000000000000
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
          Align = baRight
          Left = 1372.800000000000000000
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
          Left = 633.600000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO RELACAO DE CEST')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPCommand1: TfrxDMPCommand
          Left = 950.400000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 153.000000000000000000
        Width = 1536.000000000000000000
        DataSet = frxDBDataCest
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object DMPLine1: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 25.500000000000000000
          Width = 1526.400000000000000000
          Color = clBlack
        end
        object frxDBDataset1ID: TfrxDMPMemoView
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'ID'
          DataSet = frxDBDataCest
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          TruncOutboundText = False
        end
        object frxDBDataset1CD_CEST: TfrxDMPMemoView
          Left = 48.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_CEST'
          DataSet = frxDBDataCest
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CEST"]')
          TruncOutboundText = False
        end
        object frxDBDataset1DS_CEST: TfrxDMPMemoView
          Left = 134.400000000000000000
          Width = 1392.000000000000000000
          Height = 17.000000000000000000
          DataField = 'DS_CEST'
          DataSet = frxDBDataCest
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."DS_CEST"]')
          TruncOutboundText = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 85.000000000000000000
        Width = 1536.000000000000000000
        ReprintOnNewPage = True
        object DMPMemo5: TfrxDMPMemoView
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ID')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 48.000000000000000000
          Top = 17.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CD.CEST')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Left = 134.400000000000000000
          Top = 17.000000000000000000
          Width = 1392.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DESCRICAO CEST')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 221.000000000000000000
        Width = 1536.000000000000000000
        object DMPMemo11: TfrxDMPMemoView
          Align = baLeft
          Width = 758.400000000000000000
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
          Left = 768.000000000000000000
          Width = 758.400000000000000000
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
    Left = 690
    Top = 415
  end
end
