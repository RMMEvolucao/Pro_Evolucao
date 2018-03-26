inherited FormEmbalagem: TFormEmbalagem
  Caption = 'Cadastro de Embalagens'
  ExplicitWidth = 868
  ExplicitHeight = 534
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      inherited DBGrid1: TDBGrid
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CD_EMB_PDT'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Reduzido'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_EMB_PDT'
            Width = 400
            Visible = True
          end>
      end
      inherited PanelConsulta: TPanel
        inherited cbConsulta: TComboBox
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o Embalagem')
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
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 854
      ExplicitHeight = 474
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 848
        Height = 118
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 159
          Top = 13
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object Label4: TLabel
          Left = 33
          Top = 41
          Width = 170
          Height = 16
          Caption = 'Nome Embalagem Abreviado:'
        end
        object Label2: TLabel
          Left = 72
          Top = 74
          Width = 131
          Height = 16
          Caption = 'Descri'#231#227'o Embalagem:'
        end
        object cxDBLabel_ID: TcxDBLabel
          Left = 207
          Top = 11
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = DSpadrao
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          Height = 21
          Width = 37
        end
        object DBEdit_CD_EMB_PDT: TDBEdit
          Left = 208
          Top = 38
          Width = 41
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CD_EMB_PDT'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit_NM_EMB_PDT: TDBEdit
          Left = 207
          Top = 71
          Width = 385
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_EMB_PDT'
          DataSource = DSpadrao
          TabOrder = 2
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 792
    Top = 232
  end
  inherited ActionList1: TActionList
    Left = 792
    Top = 176
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSEmbalagem
    Left = 800
    Top = 384
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
    StoredProcName = 'SP_GEN_DB_EMBALAGEM_ID'
    Left = 796
    Top = 438
  end
  object FR_Embalagem: TfrxReport
    Version = '5.6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43027.661412175900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_EmbalagemGetValue
    Left = 80
    Top = 197
    Datasets = <
      item
        DataSet = frxDS_Embalagem
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
        Height = 30.236240000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Top = 10.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 51.023626930000000000
          Top = 10.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Reduzido')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 144.283257090000000000
          Top = 10.000000000000000000
          Width = 593.386210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231'ao Embalagem')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDS_Embalagem
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDS_Embalagem
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
        end
        object frxDBDataset1CD_EMB_PDT: TfrxMemoView
          Left = 71.472480000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'CD_EMB_PDT'
          DataSet = frxDS_Embalagem
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_EMB_PDT"]')
        end
        object frxDBDataset1NM_EMB_PDT: TfrxMemoView
          Left = 144.377952755906000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          DataField = 'NM_EMB_PDT'
          DataSet = frxDS_Embalagem
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_EMB_PDT"]')
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
          Font.Name = 'Arial'
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
          Top = 7.000012199999986000
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
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELATORIO DE EMBALAGENS)')
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
      object TotalPages: TfrxMemoView
        Left = 610.181510000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DisplayFormat.FormatStr = '00'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '[TotalPages#]')
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
    end
  end
  object frxDS_Embalagem: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD_EMB_PDT=CD_EMB_PDT'
      'NM_EMB_PDT=NM_EMB_PDT'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU')
    DataSet = DMcadastro.CDSEmbalagem
    BCDToCurrency = False
    Left = 87
    Top = 269
  end
  object PopupMenu1: TPopupMenu
    Left = 476
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
    Left = 84
    Top = 331
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
    Left = 76
    Top = 403
  end
  object FR_Embalagem_Matricial: TfrxReport
    Version = '5.6.7'
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
    OnGetValue = FR_Embalagem_MatricialGetValue
    Left = 194
    Top = 223
    Datasets = <
      item
        DataSet = frxDS_Embalagem
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
            'RELATORIO DE EMBALAGENS')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 153.000000000000000000
        Width = 940.800000000000000000
        DataSet = frxDS_Embalagem
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxDMPMemoView
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'ID'
          DataSet = frxDS_Embalagem
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          TruncOutboundText = False
        end
        object frxDBDataset1CD_EMB_PDT: TfrxDMPMemoView
          Left = 105.600000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_EMB_PDT'
          DataSet = frxDS_Embalagem
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_EMB_PDT"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_EMB_PDT: TfrxDMPMemoView
          Left = 163.200000000000000000
          Width = 460.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_EMB_PDT'
          DataSet = frxDS_Embalagem
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_EMB_PDT"]')
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
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'REDUZIDO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 163.200000000000000000
          Top = 17.000000000000000000
          Width = 768.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DESCRICAO DA EMBALAGEM')
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
    Left = 194
    Top = 287
  end
end
