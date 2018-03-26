inherited FormFamProduto: TFormFamProduto
  Caption = 'Cadastro Fam'#237'lia de Produto'
  ClientHeight = 611
  ClientWidth = 899
  ExplicitWidth = 905
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 899
    Height = 611
    ExplicitWidth = 899
    ExplicitHeight = 611
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      ExplicitWidth = 891
      ExplicitHeight = 580
      inherited PanelConsulta: TPanel
        Width = 891
        ExplicitWidth = 891
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'C'#243'digo'
          OnSelect = cbConsultaSelect
          Items.Strings = (
            'C'#243'digo'
            'Fam'#237'lia')
        end
        inherited BtConsultar: TButton
          Left = 719
          Top = 17
          Height = 41
          ExplicitLeft = 719
          ExplicitTop = 17
          ExplicitHeight = 41
        end
        inherited Edconsulta: TMaskEdit
          OnKeyPress = EdconsultaKeyPress
        end
      end
      inherited Panel1: TPanel
        Width = 891
        ExplicitWidth = 891
        inherited btnFechar: TSpeedButton
          Left = 830
          ExplicitLeft = 809
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 891
        Height = 467
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'C'#243'digo'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FAM_PDT'
            Title.Caption = 'Fam'#237'lia'
            Width = 355
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_CAD'
            Title.Caption = 'Data Cadastro'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Caption = 'Ultima Altera'#231#227'o'
            Width = 292
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VER_ATU'
            Visible = False
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitWidth = 891
      ExplicitHeight = 580
      inherited Panel2: TPanel
        Top = 526
        Width = 891
        ExplicitTop = 526
        ExplicitWidth = 891
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 614
        Height = 105
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 27
          Top = 23
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object Label2: TLabel
          Left = 25
          Top = 56
          Width = 46
          Height = 16
          Caption = 'Fam'#237'lia:'
          FocusControl = cxDBTextEdit1
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 80
          Top = 53
          DataBinding.DataField = 'NM_FAM_PDT'
          DataBinding.DataSource = DSpadrao
          TabOrder = 0
          Width = 513
        end
        object DBEdit1: TDBEdit
          Left = 80
          Top = 20
          Width = 77
          Height = 24
          DataField = 'ID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 1
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 744
    Top = 192
  end
  inherited ActionList1: TActionList
    Left = 744
    Top = 256
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSFamProduto
    Left = 744
    Top = 136
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
    StoredProcName = 'SP_GEN_DB_FAM_PRODUTO_ID'
    Left = 740
    Top = 310
  end
  object FrFamPro: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43035.637322222200000000
    ReportOptions.LastChange = 43035.637322222200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 288
    Top = 328
    Datasets = <
      item
        DataSet = frxDBDatasetFamPro
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 234.330860000000000000
          Top = 0.779530000000001200
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Rela'#231#227'o de Fam'#237'lia de produtos')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 549.354670000000000000
          Top = 35.015770000000010000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 621.961040000000000000
          Top = 35.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 272.126160000000000000
          Top = 19.677180000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Solution - Sistema Integrado')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 663.197280000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo5: TfrxMemoView
          Left = 631.181510000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pag:')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome Fam'#237'lia de produto')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetFamPro
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDatasetFamPro
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
        end
        object frxDBDataset1NM_FAM_PDT: TfrxMemoView
          Left = 113.385900000000000000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          DataField = 'NM_FAM_PDT'
          DataSet = frxDBDatasetFamPro
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FAM_PDT"]')
        end
      end
    end
  end
  object frxDBDatasetFamPro: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DMcadastro.CDSFamProduto
    BCDToCurrency = False
    Left = 408
    Top = 320
  end
end
