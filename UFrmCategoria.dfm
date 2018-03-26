inherited FormCategoria: TFormCategoria
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  Align = alCustom
  Caption = 'Cadastro de Categorias'
  ClientHeight = 771
  ClientWidth = 1018
  Position = poMainFormCenter
  ExplicitWidth = 1024
  ExplicitHeight = 800
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1018
    Height = 771
    ExplicitWidth = 1018
    ExplicitHeight = 771
    inherited TabConsulta: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 1010
      ExplicitHeight = 740
      inherited PanelConsulta: TPanel
        Width = 1010
        ExplicitWidth = 1010
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'C'#243'digo'
          OnSelect = cbConsultaSelect
          Items.Strings = (
            'C'#243'digo'
            'Nome da Categoria')
        end
        inherited Edconsulta: TMaskEdit
          OnKeyPress = EdconsultaKeyPress
        end
      end
      inherited Panel1: TPanel
        Width = 1010
        ExplicitWidth = 1010
        inherited btnFechar: TSpeedButton
          Left = 949
          ExplicitLeft = 937
        end
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1010
        Height = 627
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
            FieldName = 'NM_CTG_CLI'
            Title.Caption = 'Nome Categoria'
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_IPI_ICM'
            Title.Alignment = taCenter
            Title.Caption = 'IPI na Base de ICMS para Venda'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CD_CTG'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo Reduzido'
            Width = 100
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1010
      ExplicitHeight = 740
      inherited Panel2: TPanel
        Top = 686
        Width = 1010
        ExplicitTop = 686
        ExplicitWidth = 1010
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 538
        Width = 1010
        Height = 88
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 252
          Top = 19
          Width = 100
          Height = 16
          Caption = 'C'#243'digo Reduzido:'
        end
        object Label2: TLabel
          Left = 37
          Top = 49
          Width = 97
          Height = 16
          Caption = 'Nome Categoria:'
        end
        object DBText1: TDBText
          Left = 140
          Top = 19
          Width = 41
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
        object Label4: TLabel
          Left = 90
          Top = 19
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object DBEditNM_CTG_CLI: TDBEdit
          Left = 140
          Top = 46
          Width = 277
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_CTG_CLI'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit_CD_CTG: TDBEdit
          Left = 355
          Top = 16
          Width = 62
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CD_CTG'
          DataSource = DSpadrao
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 626
        Width = 1010
        Height = 60
        Align = alBottom
        TabOrder = 2
        object Label3: TLabel
          Left = 63
          Top = 16
          Width = 191
          Height = 16
          Caption = 'IPI na base de ICMS para Venda:'
        end
        object ComboSN_IPI_ICM: TcxDBComboBox
          Left = 309
          Top = 13
          DataBinding.DataField = 'SN_IPI_ICM'
          DataBinding.DataSource = DSpadrao
          Properties.Items.Strings = (
            'N'#195'O'
            'SIM')
          TabOrder = 0
          Width = 121
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 944
    Top = 40
  end
  inherited ActionList1: TActionList
    Left = 872
    Top = 48
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSCategoria
    Left = 800
    Top = 48
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
    StoredProcName = 'SP_GEN_DB_CATEGORIA_ID'
    Left = 708
    Top = 46
  end
  object PopupMenu1: TPopupMenu
    Left = 292
    Top = 427
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
  object FReport_Categoria: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43060.676752476850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FReport_CategoriaGetValue
    Left = 752
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset_Categoria
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
          Left = 43.464566930000000000
          Top = 10.000000000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome Categoria')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 453.543307090000000000
          Top = 10.000000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 561.149970000000000000
          Top = 9.826771649999997000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COD. REDUZIDO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset_Categoria
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDataset_Categoria
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1NM_CTG_CLI: TfrxMemoView
          Left = 43.464566930000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CTG_CLI'
          DataSet = frxDBDataset_Categoria
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CTG_CLI"]')
          ParentFont = False
        end
        object frxDBDataset1SN_IPI_ICM: TfrxMemoView
          Left = 453.543307090000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'SN_IPI_ICM'
          DataSet = frxDBDataset_Categoria
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."SN_IPI_ICM"]')
          ParentFont = False
        end
        object frxDBDataset1CD_CTG: TfrxMemoView
          Left = 622.842920000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'CD_CTG'
          DataSet = frxDBDataset_Categoria
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CTG"]')
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
          '(RELATORIO DE CATEGORIAS)')
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
  object frxDBDataset_Categoria: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD_CTG=CD_CTG'
      'NM_CTG_CLI=NM_CTG_CLI'
      'SN_IPI_ICM=SN_IPI_ICM'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU')
    DataSet = DMcadastro.CDSCategoria
    BCDToCurrency = False
    Left = 759
    Top = 343
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
    Left = 756
    Top = 403
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
    Left = 756
    Top = 475
  end
  object FR_Categoria_Matricial: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'pmdefault'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43034.472662419000000000
    ReportOptions.LastChange = 43060.677757303240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_Categoria_MatricialGetValue
    Left = 917
    Top = 391
    Datasets = <
      item
        DataSet = frxDBDataset_Categoria
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
      PaperHeight = 292.364394514661900000
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
            'RELATORIO DE CATEGORIAS')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 153.000000000000000000
        Width = 940.800000000000000000
        DataSet = frxDBDataset_Categoria
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'ID'
          DataSet = frxDBDataset_Categoria
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_CTG_CLI: TfrxDMPMemoView
          Left = 76.800000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_CTG_CLI'
          DataSet = frxDBDataset_Categoria
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CTG_CLI"]')
          TruncOutboundText = False
        end
        object frxDBDataset1SN_IPI_ICM: TfrxDMPMemoView
          Left = 451.200000000000000000
          Width = 489.600000000000000000
          Height = 17.000000000000000000
          DataField = 'SN_IPI_ICM'
          DataSet = frxDBDataset_Categoria
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."SN_IPI_ICM"]')
          TruncOutboundText = False
        end
        object frxDBDataset1CD_CTG: TfrxDMPMemoView
          Left = 835.200000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_CTG'
          DataSet = frxDBDataset_Categoria
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CTG"]')
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
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DESCRICAO CATEGORIA')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 451.200000000000000000
          Top = 17.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'IPI')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 748.800000000000000000
          Top = 17.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'IPI')
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
    Left = 917
    Top = 455
  end
end
