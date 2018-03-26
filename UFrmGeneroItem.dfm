inherited FormGeneroItem: TFormGeneroItem
  Caption = 'Cadastro Genero do Item de Mercadoria / Servi'#231'o'
  ExplicitWidth = 885
  ExplicitHeight = 644
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      inherited PanelConsulta: TPanel
        inherited cbConsulta: TComboBox
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o')
        end
        inherited Edconsulta: TMaskEdit
          OnKeyPress = EdconsultaKeyPress
        end
      end
      inherited Panel1: TPanel
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_GEN_ITE'
            Width = 900
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 871
      ExplicitHeight = 584
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 871
        Height = 105
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 29
          Top = 24
          Width = 155
          Height = 16
          Caption = 'C'#243'digo do Genero do Item:'
        end
        object Label2: TLabel
          Left = 13
          Top = 60
          Width = 171
          Height = 16
          Caption = 'Descri'#231#227'o do G'#234'nero do Item:'
        end
        object cxDB_NM_GEN_ITE: TcxDBLabel
          Left = 192
          Top = 22
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = DSpadrao
          Height = 21
          Width = 41
          AnchorX = 233
        end
        object DBEdit_NM_GEN_ITE: TDBEdit
          Left = 192
          Top = 57
          Width = 489
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_GEN_ITE'
          DataSource = DSpadrao
          TabOrder = 1
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Top = 200
  end
  inherited ActionList1: TActionList
    Left = 504
    Top = 200
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSGeneroItem
    Left = 248
    Top = 200
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
    StoredProcName = 'SP_GEN_DB_GEN_ITEM_ID'
    Left = 332
    Top = 198
  end
  object PopupMenu1: TPopupMenu
    Left = 44
    Top = 413
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
  object FR_GeneroItem: TfrxReport
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
    OnGetValue = FR_GeneroItemGetValue
    Left = 142
    Top = 413
    Datasets = <
      item
        DataSet = frxDBDataGeneroItem
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 238.433210000000000000
          Top = 20.787401574803100000
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
          Left = 630.622450000000000000
          Top = 20.787401574803100000
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
          Left = 188.976377950000000000
          Top = 20.787401574803100000
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
          Left = 2.000000000000000000
          Top = 20.787401570000000000
          Width = 186.000000000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Style = fsDouble
          Memo.UTF8W = (
            'PARAN'#193' FERRAGENS LTDA')
          ParentFont = False
        end
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
          Font.Height = -12
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 34.307086610000000000
          Top = 10.000000000000000000
          Width = 684.094930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o Genero do Item da Mercadoria / Servi'#231'o')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 20.787401574803100000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataGeneroItem
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Left = 3.000000000000000000
          Top = 2.000000000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDataGeneroItem
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
        object frxDBDataset1NM_GEN_ITE: TfrxMemoView
          Left = 34.354360000000000000
          Top = 2.000000000000000000
          Width = 680.315400000000000000
          Height = 18.897637800000000000
          DataField = 'NM_GEN_ITE'
          DataSet = frxDBDataGeneroItem
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_GEN_ITE"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object Line3: TfrxLineView
          Top = 19.897650000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 7.000000000000000000
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
      object Memo2: TfrxMemoView
        Width = 529.134200000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'courier new'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELATORIO DESCRICAO DO GENERO ITEM MERCADORIA/SERVI'#199'O)')
        ParentFont = False
        WordWrap = False
      end
      object TotalPages: TfrxMemoView
        Left = 609.622450000000000000
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
    end
  end
  object frxDBDataGeneroItem: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NM_GEN_ITE=NM_GEN_ITE'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU')
    DataSet = DMcadastro.CDSGeneroItem
    BCDToCurrency = False
    Left = 252
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
    Left = 564
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
    Left = 467
    Top = 413
  end
  object frx_GeneroItemMatrix: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43033.723893657400000000
    ReportOptions.LastChange = 43033.738064502300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnPreview = frx_GeneroItemMatrixPreview
    Left = 400
    Top = 40
    Datasets = <
      item
        DataSet = frxDBDataGeneroItem
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 296.862308276425900000
      PaperSize = 9
      FontStyle = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Height = 34.000000000000000000
        ParentFont = False
        Top = 17.000000000000000000
        Width = 796.800000000000000000
        object DMPMemo1: TfrxDMPMemoView
          Align = baCenter
          Left = 307.200000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          Memo.UTF8W = (
            'Relatorio matrical')
          ParentFont = False
          TruncOutboundText = False
        end
        object Date: TfrxDMPMemoView
          Align = baRight
          Left = 547.200000000000100000
          Top = 17.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          TruncOutboundText = False
        end
        object Time: TfrxDMPMemoView
          Align = baRight
          Left = 672.000000000000000000
          Top = 17.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          TruncOutboundText = False
        end
        object Page: TfrxDMPMemoView
          Align = baRight
          Left = 720.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsx12cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 85.000000000000000000
        Width = 796.800000000000000000
        DataSet = frxDBDataGeneroItem
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxDMPMemoView
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'ID'
          DataSet = frxDBDataGeneroItem
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_GEN_ITE: TfrxDMPMemoView
          Left = 76.800000000000000000
          Width = 681.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_GEN_ITE'
          DataSet = frxDBDataGeneroItem
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_GEN_ITE"]')
          TruncOutboundText = False
        end
        object DMPCommand1: TfrxDMPCommand
          Left = 144.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          Command = '#14#20'
        end
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    FileName = 'C:\Users\Marcos\AppData\Local\Temp\frB70C.tmp'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 43033.731303020830000000
    DataOnly = False
    EscModel = 1
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 516
    Top = 35
  end
end
