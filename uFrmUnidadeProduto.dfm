inherited FormUnidadeProduto: TFormUnidadeProduto
  Caption = 'FormUnidadeProduto'
  ExplicitWidth = 885
  ExplicitHeight = 644
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      inherited PanelConsulta: TPanel
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'C'#243'digo'
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
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NM_UNI_RDZ'
            Title.Alignment = taCenter
            Title.Caption = 'Unid. Reduzida'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_UNI_PDT'
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_FRC'
            Title.Alignment = taCenter
            Title.Caption = 'Fra'#231#227'o'
            Width = 50
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
        Height = 142
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 96
          Top = 13
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object Label4: TLabel
          Left = 33
          Top = 41
          Width = 107
          Height = 16
          Caption = 'Unidade Reduzida:'
        end
        object Label2: TLabel
          Left = 52
          Top = 74
          Width = 88
          Height = 16
          Caption = 'Nome Unidade:'
        end
        object Label3: TLabel
          Left = 22
          Top = 106
          Width = 118
          Height = 16
          Caption = 'Unidade Fracionada:'
        end
        object cxDBLabel1: TcxDBLabel
          Left = 145
          Top = 11
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = DSpadrao
          Style.Shadow = False
          Style.TextStyle = [fsBold]
          Height = 21
          Width = 37
          AnchorX = 182
        end
        object DBEdit_NM_UNI_RDZ: TDBEdit
          Left = 145
          Top = 38
          Width = 41
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_UNI_RDZ'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit_NM_UNI_PDT: TDBEdit
          Left = 145
          Top = 71
          Width = 385
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_UNI_PDT'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object DBCombo_sn_frc: TDBComboBox
          Left = 145
          Top = 103
          Width = 121
          Height = 24
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'SN_FRC'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'NAO')
          TabOrder = 3
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 584
    Top = 192
  end
  inherited ActionList1: TActionList
    Left = 672
    Top = 184
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSUnidadePDT
    Left = 152
    Top = 216
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
    StoredProcName = 'SP_GEN_DB_UNIDADEPDT_ID'
    Left = 76
    Top = 214
  end
  object FR_UnidadePDT: TfrxReport
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
    OnGetValue = FR_UnidadePDTGetValue
    Left = 398
    Top = 381
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
          Top = 20.787401570000000000
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
          Left = 1.889763779527560000
          Top = 20.787401570000000000
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
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Top = 10.000000000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 41.574830000000000000
          Top = 10.000000000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'RDZ')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 94.488188980000000000
          Top = 10.000000000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o Unidade')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 345.448818897638000000
          Top = 10.000000000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Fracao')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 20.787401570000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataGeneroItem
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
          Left = 2.000000000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDataGeneroItem
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1NM_UNI_RDZ: TfrxMemoView
          Left = 45.574830000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'NM_UNI_RDZ'
          DataSet = frxDBDataGeneroItem
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_UNI_RDZ"]')
          ParentFont = False
        end
        object frxDBDataset1NM_UNI_PDT: TfrxMemoView
          Left = 94.488250000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'NM_UNI_PDT'
          DataSet = frxDBDataGeneroItem
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_UNI_PDT"]')
          ParentFont = False
        end
        object frxDBDataset1SN_FRC: TfrxMemoView
          Left = 345.496290000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'SN_FRC'
          DataSet = frxDBDataGeneroItem
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."SN_FRC"]')
          ParentFont = False
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
          Top = 7.000012199999990000
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
          Top = 7.000012200000010000
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
        Left = 211.653680000000000000
        Width = 306.141930000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'courier new'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELATORIO UNIDADES DE PRODUTOS)')
        ParentFont = False
        WordWrap = False
      end
      object TotalPages: TfrxMemoView
        Left = 633.622450000000000000
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
      object Memo1: TfrxMemoView
        Left = 2.000000000000000000
        Width = 186.000000000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Frame.Style = fsDouble
        Memo.UTF8W = (
          'PARAN'#193' FERRAGENS LTDA')
        ParentFont = False
      end
    end
  end
  object frxDBDataGeneroItem: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NM_UNI_RDZ=NM_UNI_RDZ'
      'NM_UNI_PDT=NM_UNI_PDT'
      'SN_FRC=SN_FRC'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU')
    DataSet = DMcadastro.CDSUnidadePDT
    BCDToCurrency = False
    Left = 508
    Top = 381
  end
  object PopupMenu1: TPopupMenu
    Left = 756
    Top = 187
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
    Left = 596
    Top = 373
  end
  object frxXLSExport1: TfrxXLSExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = True
    ExportEMF = True
    ExportStyles = False
    ExportPictures = False
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = False
    SuppressPageHeadersFooters = False
    Left = 660
    Top = 381
  end
  object FR_UnidadeProduto_Matricial: TfrxReport
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
    OnGetValue = FR_UnidadeProduto_MatricialGetValue
    Left = 218
    Top = 287
    Datasets = <
      item
        DataSet = frxDBDataGeneroItem
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
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO UNIDADE PRODUTOS')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 153.000000000000000000
        Width = 940.800000000000000000
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
        object frxDBDataset1NM_UNI_RDZ: TfrxDMPMemoView
          Left = 105.600000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_UNI_RDZ'
          DataSet = frxDBDataGeneroItem
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NM_UNI_RDZ"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_UNI_PDT: TfrxDMPMemoView
          Left = 220.800000000000000000
          Width = 288.000000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_UNI_PDT'
          DataSet = frxDBDataGeneroItem
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_UNI_PDT"]')
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
          Width = 76.800000000000000000
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
          Left = 220.800000000000000000
          Top = 17.000000000000000000
          Width = 720.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DESCRICAO UNIDADE PRODUTO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 96.000000000000000000
          Top = 17.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'REDUZIDO')
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
          Top = 17.000000000000000000
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
          Top = 17.000000000000000000
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
    Left = 218
    Top = 351
  end
end
