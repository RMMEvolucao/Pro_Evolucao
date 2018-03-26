inherited FormUnidadeFederativa: TFormUnidadeFederativa
  Caption = 'Cadastro de Unidade Federativa'
  ClientHeight = 659
  ExplicitWidth = 885
  ExplicitHeight = 688
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Height = 659
    ActivePage = TabCadastro
    ExplicitHeight = 659
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      ExplicitHeight = 628
      inherited PanelConsulta: TPanel
        inherited cbConsulta: TComboBox
          Width = 188
          ItemIndex = 0
          Text = 'Nome Unidade Federativa'
          Items.Strings = (
            'Nome Unidade Federativa')
          ExplicitWidth = 188
        end
      end
      inherited Panel1: TPanel
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        Height = 515
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CD_UNF'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_UNF'
            Title.Caption = 'Nome da Unidade Federativa'
            Width = 300
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CD_UNF_IBG'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo IBGE'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_MVA'
            Title.Alignment = taCenter
            Title.Caption = 'MVA Ajustada'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PC_RJT'
            Title.Alignment = taCenter
            Title.Caption = '% Reajuste Tabela'
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 871
      ExplicitHeight = 628
      inherited Panel2: TPanel
        Top = 574
        ExplicitTop = 574
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 865
        Height = 198
        Align = alTop
        TabOrder = 1
        object Label4: TLabel
          Left = 108
          Top = 17
          Width = 52
          Height = 16
          Caption = 'Sigla UF:'
        end
        object Label2: TLabel
          Left = 45
          Top = 50
          Width = 115
          Height = 16
          Caption = 'Unidade Federativa:'
        end
        object Label3: TLabel
          Left = 86
          Top = 89
          Width = 74
          Height = 16
          Caption = 'C'#243'digo IBGE:'
        end
        object Label1: TLabel
          Left = 75
          Top = 126
          Width = 85
          Height = 16
          Caption = 'MVA Ajustada:'
        end
        object Label5: TLabel
          Left = 28
          Top = 163
          Width = 132
          Height = 16
          Caption = '% Reajuste da Tabela:'
        end
        object DBEdit_CD_UNF: TDBEdit
          Left = 166
          Top = 14
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CD_UNF'
          DataSource = DSpadrao
          TabOrder = 0
        end
        object DBEdit_NM_UNF: TDBEdit
          Left = 166
          Top = 50
          Width = 319
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_UNF'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit_CD_UNF_IBG: TDBEdit
          Left = 166
          Top = 87
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CD_UNF_IBG'
          DataSource = DSpadrao
          TabOrder = 2
          OnKeyPress = DBEdit_CD_UNF_IBGKeyPress
        end
        object DBCombo_SN_MVA: TDBComboBox
          Left = 166
          Top = 123
          Width = 79
          Height = 24
          Style = csDropDownList
          DataField = 'SN_MVA'
          DataSource = DSpadrao
          Items.Strings = (
            'NAO'
            'SIM')
          TabOrder = 3
        end
        object cxDBCalc_PC_RJT: TcxDBCalcEdit
          Left = 166
          Top = 160
          DataBinding.DataField = 'PC_RJT'
          DataBinding.DataSource = DSpadrao
          TabOrder = 4
          Width = 79
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 224
    Top = 600
  end
  inherited ActionList1: TActionList
    Left = 280
    Top = 608
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSUFederativa
    Left = 56
    Top = 592
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
    StoredProcName = 'SP_GEN_DB_UFEDERATIVA_ID'
    Left = 124
    Top = 590
  end
  object FReport_UFederativa: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43056.482384791660000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FReport_UFederativaGetValue
    Left = 792
    Top = 360
    Datasets = <
      item
        DataSet = frxDBDataset_UFederativa
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
        object Memo4: TfrxMemoView
          Top = 9.826771649999997000
          Width = 98.267780000000000000
          Height = 34.015748031496100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo'
            'Unidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 66.141746930000000000
          Top = 9.826771649999997000
          Width = 355.275527090000000000
          Height = 34.015748031496100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome Unidade'
            'Federativa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 419.527830000000000000
          Top = 9.826771649999997000
          Width = 75.590600000000000000
          Height = 34.015748031496100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo IBGE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 491.338900000000000000
          Top = 9.826771649999997000
          Width = 102.047310000000000000
          Height = 34.015748031496100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'MVA '
            'Ajustada')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 593.386210000000000000
          Top = 9.826771649999997000
          Width = 124.724490000000000000
          Height = 34.015748031496100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '% Reajuste'
            'Tabela')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset_UFederativa
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_UNF: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'CD_UNF'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_UNF"]')
        end
        object frxDBDataset1NM_UNF: TfrxMemoView
          Left = 64.252010000000000000
          Top = 3.779529999999994000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'NM_UNF'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_UNF"]')
        end
        object frxDBDataset1CD_UNF_IBG: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779529999999994000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'CD_UNF_IBG'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_UNF_IBG"]')
        end
        object frxDBDataset1SN_MVA: TfrxMemoView
          Left = 498.897960000000000000
          Top = 3.779529999999994000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'SN_MVA'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_MVA"]')
        end
        object frxDBDataset1PC_RJT: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779529999999994000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'PC_RJT'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PC_RJT"]')
        end
        object Line2: TfrxLineView
          Top = 22.677179999999990000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 260.787570000000000000
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
        Width = 298.582870000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELAT'#211'RIO UNIDADE FEDERATIVA)')
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
  object frxDBDataset_UFederativa: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD_UNF=CD_UNF'
      'NM_UNF=NM_UNF'
      'CD_UNF_IBG=CD_UNF_IBG'
      'SN_MVA=SN_MVA'
      'PC_RJT=PC_RJT'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU')
    DataSet = DMcadastro.CDSUFederativa
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
  object FR_UFederativa_Matricial: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'pmdefault'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43034.472662419000000000
    ReportOptions.LastChange = 43056.503249664350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_UFederativa_MatricialGetValue
    Left = 658
    Top = 383
    Datasets = <
      item
        DataSet = frxDBDataset_UFederativa
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
            'RELATORIO UNIDADE FEDERATIVA')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 153.000000000000000000
        Width = 940.800000000000000000
        DataSet = frxDBDataset_UFederativa
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CD_UNF: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_UNF'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_UNF"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_UNF: TfrxDMPMemoView
          Left = 76.800000000000000000
          Width = 345.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_UNF'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_UNF"]')
          TruncOutboundText = False
        end
        object frxDBDataset1CD_UNF_IBG: TfrxDMPMemoView
          Left = 489.600000000000000000
          Width = 38.400000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_UNF_IBG'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_UNF_IBG"]')
          TruncOutboundText = False
        end
        object frxDBDataset1SN_MVA: TfrxDMPMemoView
          Left = 595.200000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'SN_MVA'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."SN_MVA"]')
          TruncOutboundText = False
        end
        object frxDBDataset1PC_RJT: TfrxDMPMemoView
          Left = 748.800000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'PC_RJT'
          DataSet = frxDBDataset_UFederativa
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."PC_RJT"]')
          TruncOutboundText = False
        end
        object DMPLine1: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 25.500000000000000000
          Width = 931.200000000000000000
          Color = clBlack
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
          Width = 403.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME UNIDADE FEDERATIVA')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 489.600000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'COD. IBGE')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 595.200000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'MVA AJUSTADA')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Left = 720.000000000000000000
          Top = 17.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '% REAJUSTE TABELA')
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
    Left = 658
    Top = 447
  end
end
