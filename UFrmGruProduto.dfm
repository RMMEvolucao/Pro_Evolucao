inherited FormGruProduto: TFormGruProduto
  Caption = 'Cadastro de  Grupo de Produto'
  ClientHeight = 610
  ClientWidth = 1000
  ExplicitWidth = 1006
  ExplicitHeight = 639
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1000
    Height = 610
    ExplicitWidth = 1000
    ExplicitHeight = 610
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      ExplicitWidth = 992
      ExplicitHeight = 579
      inherited PanelConsulta: TPanel
        Width = 992
        ExplicitWidth = 992
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'C'#243'digo'
          Items.Strings = (
            'C'#243'digo'
            'Grupo'
            'Fam'#237'lia')
        end
        inherited BtConsultar: TButton
          Top = 21
          Height = 33
          ExplicitTop = 21
          ExplicitHeight = 33
        end
        inherited Edconsulta: TMaskEdit
          OnKeyPress = EdconsultaKeyPress
        end
      end
      inherited Panel1: TPanel
        Width = 992
        ExplicitWidth = 992
        inherited btnFechar: TSpeedButton
          Left = 931
          ExplicitLeft = 919
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 992
        Height = 466
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'C'#243'digo'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_GRU_PDT'
            Title.Caption = 'Grupo Produto'
            Width = 283
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FAM_PDT'
            Title.Caption = 'Fam'#237'lia Produto'
            Width = 295
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_CAD'
            Title.Caption = 'Data Cadastro'
            Width = 84
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
            Title.Caption = 'Ult'#237'ma Atualiza'#231#227'o'
            Width = 247
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 992
      ExplicitHeight = 579
      inherited Panel2: TPanel
        Top = 525
        Width = 992
        ExplicitTop = 525
        ExplicitWidth = 992
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 646
        Height = 92
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 51
          Top = 19
          Width = 82
          Height = 16
          Caption = 'C'#243'digo Grupo:'
        end
        object Label2: TLabel
          Left = 28
          Top = 52
          Width = 105
          Height = 16
          Caption = 'Grupo de Produto:'
        end
        object DBEditCodGrupo: TDBEdit
          Left = 142
          Top = 16
          Width = 75
          Height = 24
          DataField = 'ID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
        end
        object DBEditGrupoProduto: TDBEdit
          Left = 142
          Top = 49
          Width = 478
          Height = 24
          DataField = 'NM_GRU_PDT'
          DataSource = DSpadrao
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 101
        Width = 646
        Height = 60
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label3: TLabel
          Left = 17
          Top = 19
          Width = 116
          Height = 16
          Caption = 'Fam'#237'lia de  Produto:'
        end
        object DBcbFamPro: TDBLookupComboBox
          Left = 142
          Top = 16
          Width = 478
          Height = 24
          DataField = 'ID_FAM_PDT'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_FAM_PDT'
          ListSource = DsFamPro
          TabOrder = 0
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 496
    Top = 384
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSGruProduto
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
    StoredProcName = 'SP_GEN_DB_GRU_PRODUTO_ID'
    Left = 508
    Top = 14
  end
  object DsFamPro: TDataSource
    DataSet = DMcadastro.CDSFamProduto
    Left = 232
    Top = 208
  end
  object FrGrupoPro: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43035.656733460700000000
    ReportOptions.LastChange = 43035.656733460700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 224
    Top = 304
    Datasets = <
      item
        DataSet = frxDBDatasetGruPro
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Width = 64.252010000000000000
          Height = 18.897650000000000000
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
          Left = 75.590600000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome de Grupo de produto')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 415.748300000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
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
        object Memo6: TfrxMemoView
          Left = 476.220780000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome de Familia de produto')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetGruPro
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDatasetGruPro
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1NM_GRU_PDT: TfrxMemoView
          Left = 75.590600000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          DataField = 'NM_GRU_PDT'
          DataSet = frxDBDatasetGruPro
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_GRU_PDT"]')
          ParentFont = False
        end
        object frxDBDataset1ID_FAM_PDT: TfrxMemoView
          Left = 415.748300000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'ID_FAM_PDT'
          DataSet = frxDBDatasetGruPro
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_FAM_PDT"]')
          ParentFont = False
        end
        object frxDBDataset1NM_FAM_PDT: TfrxMemoView
          Left = 476.220780000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'NM_FAM_PDT'
          DataSet = frxDBDatasetGruPro
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FAM_PDT"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 240.000155000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Rela'#231#227'o do Grupo de produtos')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 272.126160000000000000
          Top = 22.677180000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Solution -  Sistema Integrado')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 681.315400000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 646.299630000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pag:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 563.370440000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 644.299630000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetGruPro: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NM_GRU_PDT=NM_GRU_PDT'
      'ID_FAM_PDT=ID_FAM_PDT'
      'DT_CAD=DT_CAD'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU'
      'NM_FAM_PDT=NM_FAM_PDT')
    DataSet = DMcadastro.CDSGruProduto
    BCDToCurrency = False
    Left = 224
    Top = 408
  end
end
