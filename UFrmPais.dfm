inherited FormPaises: TFormPaises
  Caption = 'Cadastro de Pa'#237'ses'
  ExplicitWidth = 885
  ExplicitHeight = 644
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      inherited PanelConsulta: TPanel
        inherited cbConsulta: TComboBox
          Width = 188
          ItemIndex = 0
          Text = 'Nome Pa'#237's'
          Items.Strings = (
            'Nome Pa'#237's')
          ExplicitWidth = 188
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
            FieldName = 'CD_PAI'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_PAI'
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CD_DDI'
            Title.Alignment = taCenter
            Width = 100
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
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 865
        Height = 134
        Align = alTop
        TabOrder = 1
        object Label4: TLabel
          Left = 20
          Top = 41
          Width = 89
          Height = 16
          Caption = 'C'#243'digo do Pa'#237's:'
        end
        object Label2: TLabel
          Left = 26
          Top = 71
          Width = 83
          Height = 16
          Caption = 'Nome do Pa'#237's:'
        end
        object Label3: TLabel
          Left = 41
          Top = 101
          Width = 68
          Height = 16
          Caption = 'C'#243'digo DDI:'
        end
        object DBText1: TDBText
          Left = 117
          Top = 15
          Width = 39
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
        object Label1: TLabel
          Left = 65
          Top = 15
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object DBEdit_CD_PAI: TDBEdit
          Left = 114
          Top = 38
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CD_PAI'
          DataSource = DSpadrao
          TabOrder = 0
          OnKeyPress = DBEdit_CD_PAIKeyPress
        end
        object DBEdit_NM_PAI: TDBEdit
          Left = 114
          Top = 68
          Width = 385
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_PAI'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit_CD_DDI: TDBEdit
          Left = 114
          Top = 98
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CD_DDI'
          DataSource = DSpadrao
          TabOrder = 2
          OnKeyPress = DBEdit_CD_DDIKeyPress
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 688
    Top = 160
  end
  inherited ActionList1: TActionList
    Left = 760
    Top = 160
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSPaises
    Left = 128
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
    StoredProcName = 'SP_GEN_DB_PAISES_ID'
    Left = 36
    Top = 262
  end
  object PopupMenu1: TPopupMenu
    Left = 524
    Top = 251
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
  object FReport_Paises: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43056.398503298610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FReport_PaisesGetValue
    Left = 792
    Top = 360
    Datasets = <
      item
        DataSet = frxDBDataset_Paises
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
        Height = 41.574830000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Top = 10.000000000000000000
          Width = 98.267780000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 66.141746930000000000
          Top = 10.000000000000000000
          Width = 468.661427090000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME DO PA'#205'S')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 532.913730000000000000
          Top = 10.000000000000000000
          Width = 185.196970000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DDI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677165350000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset_Paises
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_PAI: TfrxMemoView
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'CD_PAI'
          DataSet = frxDBDataset_Paises
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CD_PAI"]')
        end
        object frxDBDataset1NM_PAI: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779529999999994000
          Width = 279.685220000000000000
          Height = 18.897650000000000000
          DataField = 'NM_PAI'
          DataSet = frxDBDataset_Paises
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_PAI"]')
        end
        object frxDBDataset1CD_DDI: TfrxMemoView
          Left = 532.913730000000000000
          Top = 3.779529999999994000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CD_DDI'
          DataSet = frxDBDataset_Paises
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_DDI"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 7.000000000000056000
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
        Width = 257.008040000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELAT'#211'RIO DE PA'#205'SES)')
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
  object frxDBDataset_Paises: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD_PAI=CD_PAI'
      'NM_PAI=NM_PAI'
      'CD_DDI=CD_DDI'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU')
    DataSet = DMcadastro.CDSPaises
    BCDToCurrency = False
    Left = 791
    Top = 423
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
    Left = 788
    Top = 475
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
    Left = 788
    Top = 539
  end
  object FR_Paises_Matricial: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'pmdefault'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43034.472662419000000000
    ReportOptions.LastChange = 43056.403511435190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_Paises_MatricialGetValue
    Left = 682
    Top = 375
    Datasets = <
      item
        DataSet = frxDBDataset_Paises
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
          FontStyle = [fsxCondensed, fsx15cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE PAISES')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 153.000000000000000000
        Width = 940.800000000000000000
        DataSet = frxDBDataset_Paises
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_DDI: TfrxDMPMemoView
          Left = 633.600000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_DDI'
          DataSet = frxDBDataset_Paises
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_DDI"]')
          TruncOutboundText = False
        end
        object frxDBDataset1CD_PAI: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_PAI'
          DataSet = frxDBDataset_Paises
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_PAI"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_PAI: TfrxDMPMemoView
          Left = 76.800000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_PAI'
          DataSet = frxDBDataset_Paises
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_PAI"]')
          TruncOutboundText = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 85.000000000000000000
        Width = 940.800000000000000000
        object DMPMemo5: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 76.800000000000000000
          Top = 17.000000000000000000
          Width = 547.200000000000100000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME DO PAIS')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 633.600000000000000000
          Top = 17.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DDI')
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
    Left = 682
    Top = 439
  end
end
