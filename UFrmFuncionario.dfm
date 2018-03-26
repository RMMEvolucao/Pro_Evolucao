inherited FormFuncionario: TFormFuncionario
  Caption = 'Cadastro de Funcion'#225'rios da Empresa'
  ClientHeight = 712
  ClientWidth = 1024
  ExplicitWidth = 1030
  ExplicitHeight = 741
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1024
    Height = 712
    ExplicitWidth = 1024
    ExplicitHeight = 712
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 1016
      ExplicitHeight = 681
      inherited PanelConsulta: TPanel
        Width = 1016
        ExplicitWidth = 1016
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'C'#243'digo'
          Items.Strings = (
            'C'#243'digo'
            'Nome Funcion'#225'rio')
        end
        inherited Edconsulta: TMaskEdit
          OnKeyPress = EdconsultaKeyPress
        end
      end
      inherited Panel1: TPanel
        Width = 1016
        ExplicitWidth = 1016
        inherited btnFechar: TSpeedButton
          Left = 955
          ExplicitLeft = 955
        end
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1016
        Height = 568
        DataSource = DSpadrao
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FCN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ST_FNC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_CAD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_ANV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FUN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_SET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_ADS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_DMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SN_RQS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_EDR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DS_CPL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_FON'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_FAX'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_CEL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'E_MAIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HOME_PAGE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_BANCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_BCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_AGC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_CTA_COR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_PAI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_CTB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_CTB_CRD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_CTB_DEB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DS_SNH'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DS_OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VER_ATU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_SETOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_BAI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_RUA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF_CID'
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1016
      ExplicitHeight = 681
      inherited Panel2: TPanel
        Top = 627
        Width = 1016
        TabOrder = 5
        ExplicitTop = 627
        ExplicitWidth = 1016
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1010
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 99
          Top = 15
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object Label2: TLabel
          Left = 389
          Top = 15
          Width = 86
          Height = 16
          Caption = 'Data Cadastro:'
        end
        object Label3: TLabel
          Left = 778
          Top = 15
          Width = 41
          Height = 16
          Caption = 'Status:'
        end
        object DBComboBox_ST_FNC: TDBComboBox
          Left = 825
          Top = 12
          Width = 122
          Height = 24
          DataField = 'ST_FNC'
          DataSource = DSpadrao
          Items.Strings = (
            'ATIVO'
            'DESATIVADO')
          TabOrder = 2
        end
        object DBEdit_ID: TDBEdit
          Left = 148
          Top = 12
          Width = 81
          Height = 24
          DataField = 'ID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
        end
        object cxDBDateEdit_DT_CAD: TcxDBDateEdit
          Left = 481
          Top = 12
          DataBinding.DataField = 'DT_CAD'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          TabOrder = 1
          Width = 121
        end
      end
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 58
        Width = 1010
        Height = 152
        Align = alTop
        TabOrder = 1
        object Label4: TLabel
          Left = 34
          Top = 20
          Width = 108
          Height = 16
          Caption = 'Nome Funcion'#225'rio:'
        end
        object Label5: TLabel
          Left = 33
          Top = 52
          Width = 109
          Height = 16
          Caption = 'Setor de Trabalho:'
        end
        object Label6: TLabel
          Left = 26
          Top = 85
          Width = 116
          Height = 16
          Caption = 'Fun'#231#227'o Funcion'#225'rio:'
        end
        object Label7: TLabel
          Left = 34
          Top = 118
          Width = 108
          Height = 16
          Caption = 'Data de Admiss'#227'o:'
        end
        object Label8: TLabel
          Left = 712
          Top = 118
          Width = 108
          Height = 16
          Caption = 'Data de Demiss'#227'o:'
        end
        object Label9: TLabel
          Left = 721
          Top = 20
          Width = 99
          Height = 16
          Caption = 'Data Anivers'#225'rio:'
        end
        object Label17: TLabel
          Left = 793
          Top = 52
          Width = 27
          Height = 16
          Caption = 'CPF:'
        end
        object Label24: TLabel
          Left = 798
          Top = 85
          Width = 21
          Height = 16
          Caption = 'RG:'
        end
        object DBEdit_NM_FCN: TDBEdit
          Left = 149
          Top = 17
          Width = 355
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_FCN'
          DataSource = DSpadrao
          TabOrder = 0
        end
        object cxDBLookupComboBox_ID_SET: TcxDBLookupComboBox
          Left = 148
          Top = 49
          DataBinding.DataField = 'ID_SETOR'
          DataBinding.DataSource = DSpadrao
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NM_SET'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_Setor
          TabOrder = 2
          Width = 218
        end
        object DBEdit_NM_FUN: TDBEdit
          Left = 148
          Top = 82
          Width = 318
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_FUN'
          DataSource = DSpadrao
          TabOrder = 4
        end
        object cxDBDateEdit_DT_ANV: TcxDBDateEdit
          Left = 826
          Top = 17
          DataBinding.DataField = 'DT_ANV'
          DataBinding.DataSource = DSpadrao
          TabOrder = 1
          Width = 121
        end
        object cxDBDateEdit_DT_ADS: TcxDBDateEdit
          Left = 148
          Top = 115
          DataBinding.DataField = 'DT_ADS'
          DataBinding.DataSource = DSpadrao
          TabOrder = 6
          OnExit = cxDBDateEdit_DT_ADSExit
          Width = 121
        end
        object cxDBDateEdit_DT_DMS: TcxDBDateEdit
          Left = 826
          Top = 115
          DataBinding.DataField = 'DT_DMS'
          DataBinding.DataSource = DSpadrao
          TabOrder = 7
          Width = 121
        end
        object DBEdit_NO_CNP_CPF: TDBEdit
          Left = 826
          Top = 49
          Width = 121
          Height = 24
          DataField = 'NO_CPF'
          DataSource = DSpadrao
          MaxLength = 14
          TabOrder = 3
        end
        object DBEdit_NO_RG: TDBEdit
          Left = 825
          Top = 82
          Width = 122
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NO_RG'
          DataSource = DSpadrao
          TabOrder = 5
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 216
        Width = 1010
        Height = 255
        Align = alTop
        Caption = ' Endere'#231'o '
        TabOrder = 2
        object Label10: TLabel
          Left = 113
          Top = 23
          Width = 27
          Height = 16
          Caption = 'Cep:'
        end
        object Label11: TLabel
          Left = 112
          Top = 56
          Width = 28
          Height = 16
          Caption = 'Pa'#237's:'
        end
        object Label12: TLabel
          Left = 120
          Top = 89
          Width = 20
          Height = 16
          Caption = 'UF:'
        end
        object Label13: TLabel
          Left = 96
          Top = 122
          Width = 44
          Height = 16
          Caption = 'Cidade:'
        end
        object Label14: TLabel
          Left = 82
          Top = 155
          Width = 58
          Height = 16
          Caption = 'Endere'#231'o:'
        end
        object Label21: TLabel
          Left = 642
          Top = 155
          Width = 39
          Height = 16
          Caption = 'Bairro:'
        end
        object Label16: TLabel
          Left = 90
          Top = 188
          Width = 50
          Height = 16
          Caption = 'N'#250'mero:'
        end
        object Label20: TLabel
          Left = 294
          Top = 188
          Width = 84
          Height = 16
          Caption = 'Complemento:'
        end
        object Label15: TLabel
          Left = 85
          Top = 221
          Width = 55
          Height = 16
          Caption = 'Telefone:'
        end
        object Label22: TLabel
          Left = 332
          Top = 221
          Width = 25
          Height = 16
          Caption = 'Fax:'
        end
        object Label23: TLabel
          Left = 636
          Top = 221
          Width = 45
          Height = 16
          Caption = 'Celular:'
        end
        object DBEdit_NO_CEP: TDBEdit
          Left = 147
          Top = 20
          Width = 121
          Height = 24
          Color = 16773077
          DataField = 'NO_CEP'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
        end
        object btn_cons_cep: TcxButton
          Left = 274
          Top = 18
          Width = 28
          Height = 27
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000060000000A000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000060000000FF0000006000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000060000000FF000000600000000000000000000000000000
            0000000000000000000000000060000000B000000080000000A0000000700000
            001000000060000000FF00000060000000000000000000000000000000000000
            000000000010000000B00000005F000000000000000000000000000000200000
            00A0000000FF0000006000000000000000000000000000000000000000000000
            0000000000B00000003000000000000000000000000000000000000000000000
            0000000000A00000003000000000000000000000000000000000000000000000
            0040000000600000000000000000000000000000000000000000000000000000
            000000000010000000A000000000000000000000000000000000000000000000
            00A0000000100000000000000000000000000000000000000000000000000000
            000000000000000000A000000000000000000000000000000000000000000000
            00C0000000000000000000000000000000000000000000000000000000000000
            0000000000000000008000000020000000000000000000000000000000000000
            00A0000000000000000000000000000000000000000000000000000000000000
            0000000000000000009000000000000000000000000000000000000000000000
            0060000000500000000000000000000000000000000000000000000000000000
            000000000000000000B000000000000000000000000000000000000000000000
            0000000000B00000001000000000000000000000000000000000000000000000
            0000000000700000004000000000000000000000000000000000000000000000
            000000000030000000B000000020000000000000000000000000000000100000
            0080000000600000000000000000000000000000000000000000000000000000
            000000000000000000100000008F000000B0000000A0000000C0000000A00000
            0040000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          SpeedButtonOptions.CanBeFocused = False
          TabOrder = 2
          OnClick = btn_cons_cepClick
        end
        object DBEdit_UF_CID: TDBEdit
          Left = 147
          Top = 86
          Width = 38
          Height = 24
          Color = 16773077
          DataField = 'UF_CID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 3
        end
        object DBEdit_NM_CID: TDBEdit
          Left = 147
          Top = 119
          Width = 357
          Height = 24
          Color = 16773077
          DataField = 'NM_CID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 4
        end
        object DBEdit_NM_RUA: TDBEdit
          Left = 147
          Top = 152
          Width = 357
          Height = 24
          Color = 16773077
          DataField = 'NM_RUA'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 5
        end
        object DBEdit_NM_BAI: TDBEdit
          Left = 687
          Top = 152
          Width = 272
          Height = 24
          Color = 16773077
          DataField = 'NM_BAI'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 6
        end
        object DBEdit_NO_EDR: TDBEdit
          Left = 147
          Top = 185
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NO_EDR'
          DataSource = DSpadrao
          TabOrder = 7
        end
        object DBEdit_DS_CPL: TDBEdit
          Left = 383
          Top = 185
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'DS_CPL'
          DataSource = DSpadrao
          TabOrder = 8
        end
        object DBEdit_NO_FON: TDBEdit
          Left = 147
          Top = 218
          Width = 140
          Height = 24
          DataField = 'NO_FON'
          DataSource = DSpadrao
          MaxLength = 14
          TabOrder = 9
        end
        object DBEdit_NO_FAX: TDBEdit
          Left = 364
          Top = 218
          Width = 140
          Height = 24
          DataField = 'NO_FAX'
          DataSource = DSpadrao
          MaxLength = 14
          TabOrder = 10
        end
        object DBEdit_NO_CEL: TDBEdit
          Left = 687
          Top = 218
          Width = 140
          Height = 24
          DataField = 'NO_CEL'
          DataSource = DSpadrao
          MaxLength = 15
          TabOrder = 11
        end
        object DBLookupPaises_AV1: TDBLookupComboBox
          Left = 146
          Top = 53
          Width = 342
          Height = 24
          DataField = 'CD_PAI'
          DataSource = DSpadrao
          KeyField = 'CD_PAI'
          ListField = 'NM_PAI;CD_PAI'
          ListSource = DS_PAISES
          TabOrder = 1
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 537
        Width = 1010
        Height = 84
        Align = alTop
        Caption = 'Dados da Internet'
        TabOrder = 4
        object Label18: TLabel
          Left = 69
          Top = 26
          Width = 71
          Height = 16
          Caption = 'Home-Page:'
        end
        object Label19: TLabel
          Left = 99
          Top = 57
          Width = 41
          Height = 16
          Caption = 'E-mail:'
        end
        object DBEdit_E_MAIL_CTT: TDBEdit
          Left = 146
          Top = 53
          Width = 439
          Height = 24
          CharCase = ecLowerCase
          DataField = 'E_MAIL'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object cxDBHomePage: TcxDBHyperLinkEdit
          Left = 147
          Top = 23
          DataBinding.DataField = 'HOME_PAGE'
          DataBinding.DataSource = DSpadrao
          TabOrder = 0
          Width = 439
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 474
        Width = 1016
        Height = 60
        Align = alTop
        Caption = ' Dados banc'#225'rios '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label26: TLabel
          Left = 441
          Top = 26
          Width = 50
          Height = 16
          Caption = 'Ag'#234'ncia:'
        end
        object Label27: TLabel
          Left = 669
          Top = 26
          Width = 90
          Height = 16
          Caption = 'Conta corrente:'
        end
        object Label25: TLabel
          Left = 23
          Top = 26
          Width = 120
          Height = 16
          Caption = 'C'#243'digo/Nome Banco:'
        end
        object Dbedit_NM_LOC_COB: TDBEdit
          Left = 209
          Top = 23
          Width = 191
          Height = 24
          CharCase = ecUpperCase
          Color = 16773077
          DataField = 'NM_LOC_COB'
          DataSource = Dscobranca
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object Dbedit_CD_AGC: TDBEdit
          Left = 499
          Top = 23
          Width = 114
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CD_AGC'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object DBEdit_NO_CTA_COR: TDBEdit
          Left = 765
          Top = 23
          Width = 195
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NO_CTA_COR'
          DataSource = DSpadrao
          TabOrder = 3
          OnEnter = DBEdit_NO_CTA_COREnter
          OnExit = DBEdit_NO_CTA_CORExit
          OnKeyPress = DBEdit_NO_CTA_CORKeyPress
        end
        object EdCodbanco: TEdit
          Left = 150
          Top = 23
          Width = 48
          Height = 24
          MaxLength = 3
          TabOrder = 0
          OnExit = EdCodbancoExit
          OnKeyPress = EdCodbancoKeyPress
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 704
    Top = 288
  end
  inherited ActionList1: TActionList
    Left = 856
    Top = 296
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSFuncionario
    Left = 688
    Top = 664
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
    StoredProcName = 'SP_GEN_DB_FUNCIONARIO_ID'
    Left = 932
    Top = 662
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 948
    Top = 295
  end
  object DS_Setor: TDataSource
    DataSet = DMcadastro.CDSSetor
    Left = 752
    Top = 664
  end
  object DSCep: TDataSource
    DataSet = DMcadastro.CDSCEP
    Left = 811
    Top = 665
  end
  object Dscobranca: TDataSource
    DataSet = DMcadastro.CDSLocalCobranca
    Left = 860
    Top = 667
  end
  object FR_Funcionarios: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43052.669695300900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_FuncionariosGetValue
    Left = 176
    Top = 656
    Datasets = <
      item
        DataSet = frxDBFuncionario
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
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object PageRep: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 5
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
      end
      object Memo2: TfrxMemoView
        Align = baCenter
        Left = 253.039533500000000000
        Top = -2.000000000000000000
        Width = 234.330860000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'courier new'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELATORIO FUNCIONARIOS)')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Left = 0.559060000000000000
        Top = -2.000000000000000000
        Width = 186.000000000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'PARAN'#193' FERRAGENS LTDA')
        ParentFont = False
      end
      object Date: TfrxMemoView
        Left = 238.992270000000000000
        Top = 17.118120000000000000
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
        Top = 17.118120000000000000
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
        Top = 17.118120000000000000
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 109.606370000000000000
        Width = 740.409927000000000000
        object Memo4: TfrxMemoView
          Top = 10.826771650000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'COD.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 35.133850940000000000
          Top = 10.826771650000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME DO FUNCIONARIO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 228.433070870000000000
          Top = 10.826771650000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'FUNCAO')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 397.866420000000000000
          Top = 10.826771650000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'TELEFONE / CELULAR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 562.181217090000000000
          Top = 10.826771650000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ADMISSAO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 662.197280000000000000
          Top = 10.826771650000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'ANIVERS.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 622.504330000000000000
          Top = 10.826771650000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DEMISS'#195'O')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        DataSet = frxDBFuncionario
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1NM_FCN: TfrxMemoView
          Left = 35.795300000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'NM_FCN'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FCN"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_FUN: TfrxMemoView
          Left = 228.992270000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'NM_FUN'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FUN"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_FON: TfrxMemoView
          Left = 397.071120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NO_FON'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FON"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1DT_CAD: TfrxMemoView
          Left = 559.252320000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'DT_CAD'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DT_CAD"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 621.504330000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'DT_CAD'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DT_CAD"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 676.535870000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'DT_CAD'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DT_CAD"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_CEL: TfrxMemoView
          Left = 474.661720000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'NO_CEL'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_CEL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 740.409927000000000000
        object Memo10: TfrxMemoView
          Top = 7.000000000000000000
          Width = 487.559370000000000000
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
      object Page: TfrxMemoView
        Align = baRight
        Left = 661.039797000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DisplayFormat.FormatStr = '000'
        DisplayFormat.Kind = fkNumeric
        HAlign = haRight
        Memo.UTF8W = (
          '[Page#]')
      end
    end
  end
  object frxDBFuncionario: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NM_FCN=NM_FCN'
      'ST_FNC=ST_FNC'
      'DT_CAD=DT_CAD'
      'DT_ANV=DT_ANV'
      'NM_FUN=NM_FUN'
      'ID_SET=ID_SET'
      'DT_ADS=DT_ADS'
      'DT_DMS=DT_DMS'
      'SN_RQS=SN_RQS'
      'ID_CEP=ID_CEP'
      'NO_EDR=NO_EDR'
      'DS_CPL=DS_CPL'
      'NO_FON=NO_FON'
      'NO_FAX=NO_FAX'
      'NO_CEL=NO_CEL'
      'E_MAIL=E_MAIL'
      'HOME_PAGE=HOME_PAGE'
      'ID_BANCO=ID_BANCO'
      'NM_BCO=NM_BCO'
      'CD_AGC=CD_AGC'
      'NO_CTA_COR=NO_CTA_COR'
      'CD_PAI=CD_PAI'
      'CD_CTB=CD_CTB'
      'CD_CTB_CRD=CD_CTB_CRD'
      'CD_CTB_DEB=CD_CTB_DEB'
      'DS_SNH=DS_SNH'
      'DS_OBS=DS_OBS'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU'
      'NO_CPF=NO_CPF'
      'NO_RG=NO_RG'
      'ID_SETOR=ID_SETOR'
      'NM_BAI=NM_BAI'
      'NM_CID=NM_CID'
      'NM_RUA=NM_RUA'
      'NO_CEP=NO_CEP'
      'UF_CID=UF_CID')
    DataSet = DMcadastro.CDSFuncionario
    BCDToCurrency = False
    Left = 255
    Top = 655
  end
  object PopupMenu1: TPopupMenu
    Left = 956
    Top = 243
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
    Left = 340
    Top = 659
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
    Left = 412
    Top = 659
  end
  object FR_Funcionario_matricial: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = '\\Financeiro4\EPSON FX-2190 Ver 2.0'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43034.472662419000000000
    ReportOptions.LastChange = 43052.706053680560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_Funcionario_matricialGetValue
    Left = 501
    Top = 599
    Datasets = <
      item
        DataSet = frxDBFuncionario
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
      PaperWidth = 335.279783465139900000
      PaperHeight = 292.364394514661900000
      PaperSize = 256
      FontStyle = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 17.000000000000000000
        Width = 1267.200000000000000000
        object Date: TfrxDMPMemoView
          Align = baRight
          Left = 1036.800000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[Date]')
          TruncOutboundText = False
        end
        object Time: TfrxDMPMemoView
          Align = baRight
          Left = 1142.400000000000000000
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
          Left = 1190.400000000000000000
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
          FontStyle = [fsxCondensed]
          Memo.UTF8W = (
            'PARANA FERRAGENS LTDA (MATRIZ)')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo3: TfrxDMPMemoView
          Align = baRight
          Left = 1094.400000000000000000
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
          Left = 499.200000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE FUNCIONARIOS')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 136.000000000000000000
        Width = 1267.200000000000000000
        DataSet = frxDBFuncionario
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxDMPMemoView
          Top = 17.000000000000000000
          Width = 48.000000000000000000
          Height = 17.000000000000000000
          DataField = 'ID'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          WordWrap = False
          TruncOutboundText = False
        end
        object frxDBDataset1NM_FCN: TfrxDMPMemoView
          Left = 57.600000000000000000
          Top = 17.000000000000000000
          Width = 288.000000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_FCN'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FCN"]')
          WordWrap = False
          TruncOutboundText = False
        end
        object frxDBDataset1NM_FUN: TfrxDMPMemoView
          Left = 384.000000000000000000
          Top = 17.000000000000000000
          Width = 249.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_FUN'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FUN"]')
          WordWrap = False
          TruncOutboundText = False
        end
        object frxDBDataset1NO_FON: TfrxDMPMemoView
          Left = 643.200000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_FON'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FON"]')
          WordWrap = False
          TruncOutboundText = False
        end
        object frxDBDataset1DT_CAD: TfrxDMPMemoView
          Left = 931.200000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          DataField = 'DT_CAD'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset1."DT_CAD"]')
          WordWrap = False
          TruncOutboundText = False
        end
        object frxDBDataset1DT_DMS: TfrxDMPMemoView
          Left = 1036.800000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          DataField = 'DT_DMS'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset1."DT_DMS"]')
          WordWrap = False
          TruncOutboundText = False
        end
        object frxDBDataset1DT_ANV: TfrxDMPMemoView
          Left = 1152.000000000000000000
          Top = 17.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DataField = 'DT_ANV'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DT_ANV"]')
          WordWrap = False
          TruncOutboundText = False
        end
        object frxDBDataset1NO_CEL: TfrxDMPMemoView
          Left = 777.600000000000000000
          Top = 17.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CEL'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset1."NO_CEL"]')
          TruncOutboundText = False
        end
        object frxDBDataset1ST_FNC: TfrxDMPMemoView
          Left = 355.200000000000000000
          Top = 17.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          DataField = 'ST_FNC'
          DataSet = frxDBFuncionario
          DataSetName = 'frxDBDataset1'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset1."ST_FNC"]')
          TruncOutboundText = False
        end
        object DMPLine1: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 42.500000000000000000
          Width = 1257.600000000000000000
          Color = clBlack
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 85.000000000000000000
        Width = 1267.200000000000000000
        object DMPCommand1: TfrxDMPCommand
          Top = 17.000000000000000000
          Width = 470.400000000000000000
          Height = 17.000000000000000000
          Hyperlink.Kind = hkDetailPage
          Command = 'c10cpi = #18'
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 643.200000000000000000
          Top = 17.000000000000000000
          Width = 297.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'FONE / FAX')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Left = 950.400000000000000000
          Top = 17.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ADMISSAO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Left = 1056.000000000000000000
          Top = 17.000000000000000000
          Width = 86.400000000000010000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'DEMISSAO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'COD.')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 57.600000000000000000
          Top = 17.000000000000000000
          Width = 288.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME FUNCIONARIO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 384.000000000000000000
          Top = 17.000000000000000000
          Width = 249.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'FUNCAO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo12: TfrxDMPMemoView
          Left = 1132.800000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'ANIVERSARIO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Left = 355.200000000000000000
          Top = 17.000000000000000000
          Width = 19.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'ST')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 221.000000000000000000
        Width = 1267.200000000000000000
        object DMPMemo11: TfrxDMPMemoView
          Align = baLeft
          Width = 921.600000000000000000
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
          Align = baRight
          Left = 912.000000000000000000
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
    CreationTime = 43052.547632465280000000
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 509
    Top = 655
  end
  object DS_PAISES: TDataSource
    DataSet = DMcadastro.CDSPaises
    Left = 628
    Top = 677
  end
end
