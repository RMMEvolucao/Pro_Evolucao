inherited FormContasReceber: TFormContasReceber
  Align = alCustom
  Caption = 'Cadastro Constas Receber'
  ClientHeight = 677
  ClientWidth = 1001
  ExplicitWidth = 1007
  ExplicitHeight = 706
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1001
    Height = 677
    ActivePage = TabCadastro
    ExplicitWidth = 1001
    ExplicitHeight = 677
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 993
      ExplicitHeight = 646
      inherited PanelConsulta: TPanel
        Width = 993
        ExplicitWidth = 993
        inherited lbConsulta: TLabel
          Left = 198
          ExplicitLeft = 198
        end
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'N'#250'mero Documento:'
          Items.Strings = (
            'N'#250'mero Documento:')
        end
        inherited BtConsultar: TButton
          Left = 719
          ExplicitLeft = 719
        end
        inherited Edconsulta: TMaskEdit
          Left = 198
          Width = 504
          OnExit = EdconsultaExit
          ExplicitLeft = 198
          ExplicitWidth = 504
        end
      end
      inherited Panel1: TPanel
        Width = 993
        ExplicitWidth = 993
      end
      inherited DBGrid1: TDBGrid
        Width = 993
        Height = 492
        DataSource = DSpadrao
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NO_DOC'
            Title.Alignment = taCenter
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TP_DOC'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Doc.'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_DOC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_DEB_DOC'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_VCT'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_PGT'
            Title.Alignment = taCenter
            Title.Caption = 'Pagamento'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_EMS'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_RCB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_JUR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_ABA_DCT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_DEV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vr_total_receber'
            Title.Caption = 'Valor Final'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SN_NEG'
            Title.Alignment = taCenter
            Title.Caption = 'Negativo'
            Visible = True
          end>
      end
      inherited ToolBar1: TToolBar
        Width = 993
        ExplicitWidth = 993
        inherited btnIncluir: TToolButton
          ExplicitTop = -2
        end
        inherited btnImprimir: TToolButton
          OnClick = btnImprimirClick
          ExplicitTop = 3
        end
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 993
      ExplicitHeight = 646
      inherited Panel2: TPanel
        Top = 592
        Width = 993
        ExplicitTop = 592
        ExplicitWidth = 993
      end
      object PageControl_Edicao: TPageControl
        Left = 0
        Top = 0
        Width = 993
        Height = 592
        ActivePage = TabSheet_DadosDocumentos
        Align = alClient
        TabOrder = 1
        object TabSheet_DadosDocumentos: TTabSheet
          Caption = 'Dados do Documento'
          object GroupBoxDocumento: TGroupBox
            Left = 0
            Top = 0
            Width = 985
            Height = 81
            Align = alTop
            TabOrder = 0
            object Label5: TLabel
              Left = 6
              Top = 16
              Width = 131
              Height = 16
              Caption = 'N'#250'mero Documento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 22
              Top = 45
              Width = 115
              Height = 16
              Caption = 'Documento Origem:'
            end
            object Label30: TLabel
              Left = 632
              Top = 16
              Width = 86
              Height = 16
              Caption = 'Data Cadastro:'
            end
            object Label31: TLabel
              Left = 677
              Top = 45
              Width = 41
              Height = 16
              Caption = 'Status:'
            end
            object DBEdit_NO_DOC_ORI: TDBEdit
              Left = 140
              Top = 42
              Width = 173
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NO_DOC_ORI'
              DataSource = DSpadrao
              TabOrder = 4
              OnEnter = DBEdit_NO_DOC_ORIEnter
              OnExit = DBEdit_NO_DOC_ORIExit
            end
            object cxDBDateEdit_DT_CAD: TcxDBDateEdit
              Left = 724
              Top = 12
              DataBinding.DataField = 'DT_CAD'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              TabOrder = 3
              Width = 121
            end
            object Edit_NO_DOC_ANO: TEdit
              Left = 319
              Top = 12
              Width = 33
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 2
              TabOrder = 1
            end
            object Edit_NO_DOC_PAR: TEdit
              Left = 358
              Top = 12
              Width = 33
              Height = 24
              CharCase = ecUpperCase
              MaxLength = 2
              TabOrder = 2
            end
            object DBEdit_NO_DOC: TDBEdit
              Left = 140
              Top = 12
              Width = 160
              Height = 24
              DataField = 'NO_DOC'
              DataSource = DSpadrao
              TabOrder = 0
              OnExit = DBEdit_NO_DOCExit
              OnKeyPress = DBEdit_NO_DOCKeyPress
            end
            object ComboTipoDocumento: TComboBox
              Left = 440
              Top = 12
              Width = 145
              Height = 24
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 5
              Text = 'DUPLICATA'
              Items.Strings = (
                'DUPLICATA')
            end
            object ComboBox_ST_DOC: TComboBox
              Left = 724
              Top = 42
              Width = 122
              Height = 24
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 6
              Text = 'NORMAL'
              Items.Strings = (
                'NORMAL'
                'PARCIAL'
                'DESCONTADO')
            end
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 81
            Width = 985
            Height = 143
            Align = alTop
            TabOrder = 1
            object Label1: TLabel
              Left = 56
              Top = 19
              Width = 81
              Height = 16
              Caption = 'Nome Cliente:'
            end
            object Label13: TLabel
              Left = 79
              Top = 49
              Width = 58
              Height = 16
              Caption = 'Endere'#231'o:'
            end
            object Label21: TLabel
              Left = 520
              Top = 48
              Width = 39
              Height = 16
              Caption = 'Bairro:'
            end
            object Label14: TLabel
              Left = 82
              Top = 79
              Width = 55
              Height = 16
              Caption = 'Telefone:'
            end
            object Label22: TLabel
              Left = 312
              Top = 79
              Width = 25
              Height = 16
              Caption = 'Fax:'
            end
            object Label9: TLabel
              Left = 532
              Top = 79
              Width = 27
              Height = 16
              Caption = 'Cep:'
            end
            object Label11: TLabel
              Left = 539
              Top = 109
              Width = 20
              Height = 16
              Caption = 'UF:'
            end
            object Label12: TLabel
              Left = 93
              Top = 110
              Width = 44
              Height = 16
              Caption = 'Cidade:'
            end
            object Label2: TLabel
              Left = 515
              Top = 18
              Width = 44
              Height = 16
              Caption = 'C'#243'digo:'
            end
            object Label3: TLabel
              Left = 638
              Top = 19
              Width = 60
              Height = 16
              Caption = 'CNPJ/CPF:'
            end
            object DBEdit_NM_CLI: TDBEdit
              Left = 140
              Top = 15
              Width = 341
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NM_CLI'
              DataSource = DSpadrao
              TabOrder = 0
              OnExit = DBEdit_NM_CLIExit
              OnKeyDown = DBEdit_NM_CLIKeyDown
            end
            object DBEdit_ID_FOR: TDBEdit
              Left = 561
              Top = 15
              Width = 72
              Height = 24
              Color = 16773077
              DataField = 'ID_CLIENTE_1'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 1
            end
            object DBEdit_NO_CNP_CPF: TDBEdit
              Left = 706
              Top = 16
              Width = 140
              Height = 24
              Color = 16773077
              DataField = 'NO_CNP_CPF'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 2
            end
            object DBEdit_NM_RUA: TDBEdit
              Left = 140
              Top = 45
              Width = 341
              Height = 24
              Color = 16773077
              DataField = 'NM_RUA'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 3
            end
            object DBEdit_NM_BAI: TDBEdit
              Left = 561
              Top = 46
              Width = 285
              Height = 24
              Color = 16773077
              DataField = 'NM_BAI'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 4
            end
            object DBEdit_NO_FON: TDBEdit
              Left = 140
              Top = 75
              Width = 140
              Height = 24
              Color = 16773077
              DataField = 'NO_FON'
              DataSource = DSpadrao
              Enabled = False
              MaxLength = 15
              TabOrder = 5
            end
            object DBEdit_NO_FAX: TDBEdit
              Left = 341
              Top = 75
              Width = 140
              Height = 24
              Color = 16773077
              DataField = 'NO_FAX'
              DataSource = DSpadrao
              Enabled = False
              MaxLength = 15
              TabOrder = 6
            end
            object DBEdit_NO_CEP: TDBEdit
              Left = 561
              Top = 76
              Width = 97
              Height = 24
              Color = 16773077
              DataField = 'NO_CEP'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 7
            end
            object DBEdit_UF_CID: TDBEdit
              Left = 561
              Top = 106
              Width = 41
              Height = 24
              Color = 16773077
              DataField = 'UF_CID'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 8
            end
            object DBEdit_NM_CID: TDBEdit
              Left = 140
              Top = 107
              Width = 341
              Height = 24
              Color = 16773077
              DataField = 'NM_CID'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 9
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 224
            Width = 985
            Height = 98
            Align = alTop
            TabOrder = 2
            object Label8: TLabel
              Left = 45
              Top = 23
              Width = 92
              Height = 16
              Caption = 'Local Cobran'#231'a:'
            end
            object Label10: TLabel
              Left = 359
              Top = 23
              Width = 87
              Height = 16
              Caption = 'Data Remessa:'
            end
            object Label15: TLabel
              Left = 579
              Top = 23
              Width = 93
              Height = 16
              Caption = 'No. T'#237'tulo Local:'
            end
            object Label7: TLabel
              Left = 725
              Top = 56
              Width = 54
              Height = 16
              Caption = 'Negativo:'
            end
            object cxDBDateEdit_DT_RMS_COB: TcxDBDateEdit
              Left = 448
              Top = 20
              DataBinding.DataField = 'DT_RMS_COB'
              DataBinding.DataSource = DSpadrao
              TabOrder = 1
              Width = 121
            end
            object DBEdit_CD_TIT_LOC: TDBEdit
              Left = 672
              Top = 20
              Width = 174
              Height = 24
              DataField = 'CD_TIT_LOC'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBLookup_ID_LOCAL: TDBLookupComboBox
              Left = 140
              Top = 20
              Width = 213
              Height = 24
              DataField = 'ID_LOCAL'
              DataSource = DSpadrao
              KeyField = 'ID'
              ListField = 'NM_LOC_COB'
              ListFieldIndex = 5
              ListSource = DSLocal
              TabOrder = 0
            end
            object DBEdit_ST_TIT_LOC: TDBEdit
              Left = 140
              Top = 53
              Width = 518
              Height = 24
              CharCase = ecUpperCase
              DataField = 'ST_TIT_LOC'
              DataSource = DSpadrao
              TabOrder = 3
            end
            object Combo_SN_NEG: TComboBox
              Left = 784
              Top = 53
              Width = 61
              Height = 24
              Style = csDropDownList
              ItemIndex = 1
              TabOrder = 4
              Text = 'NAO'
              Items.Strings = (
                'SIM'
                'NAO')
            end
          end
          object GroupBox5: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 325
            Width = 326
            Height = 233
            Align = alLeft
            TabOrder = 3
            object Label16: TLabel
              Left = 62
              Top = 18
              Width = 112
              Height = 16
              Caption = 'Ultima Modifica'#231#227'o:'
            end
            object Label17: TLabel
              Left = 92
              Top = 48
              Width = 82
              Height = 16
              Caption = 'Data Emiss'#227'o:'
            end
            object Label18: TLabel
              Left = 58
              Top = 78
              Width = 116
              Height = 16
              Caption = 'Data Vencimento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 53
              Top = 108
              Width = 121
              Height = 16
              Caption = 'Valor do Documento:'
            end
            object Label20: TLabel
              Left = 50
              Top = 138
              Width = 124
              Height = 16
              Caption = 'D'#233'bito Documento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cxDBDateEdit_DT_ULT_MOD: TcxDBDateEdit
              Left = 179
              Top = 15
              DataBinding.DataField = 'DT_ULT_MOD'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              TabOrder = 0
              Width = 121
            end
            object cxDBDateEdit_DT_EMS: TcxDBDateEdit
              Left = 179
              Top = 45
              DataBinding.DataField = 'DT_EMS'
              DataBinding.DataSource = DSpadrao
              TabOrder = 1
              Width = 121
            end
            object cxDBDateEdit_DT_VCT: TcxDBDateEdit
              Left = 179
              Top = 75
              DataBinding.DataField = 'DT_VCT'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 2
              OnExit = cxDBDateEdit_DT_VCTExit
              Width = 121
            end
            object DBEdit_VR_DOC: TDBEdit
              Left = 179
              Top = 105
              Width = 121
              Height = 24
              DataField = 'VR_DOC'
              DataSource = DSpadrao
              TabOrder = 3
              OnExit = DBEdit_VR_DOCExit
            end
            object DBEdit_VR_DEB_DOC: TDBEdit
              Left = 179
              Top = 135
              Width = 121
              Height = 24
              DataField = 'VR_DEB_DOC'
              DataSource = DSpadrao
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnEnter = DBEdit_VR_DEB_DOCEnter
            end
          end
          object GroupBox6: TGroupBox
            AlignWithMargins = True
            Left = 335
            Top = 325
            Width = 325
            Height = 233
            Align = alClient
            TabOrder = 4
            object Label23: TLabel
              Left = 31
              Top = 48
              Width = 35
              Height = 16
              Caption = 'Juros:'
            end
            object Label24: TLabel
              Left = 33
              Top = 102
              Width = 33
              Height = 16
              Caption = 'Taxa:'
            end
            object DBComboBox_TP_JUR: TDBComboBox
              Left = 72
              Top = 45
              Width = 102
              Height = 24
              Style = csDropDownList
              DataField = 'TP_JUR'
              DataSource = DSpadrao
              Items.Strings = (
                'SIMPLES'
                'COMPOSTO')
              TabOrder = 0
            end
            object DBEdit_TX_JUR: TDBEdit
              Left = 72
              Top = 99
              Width = 102
              Height = 24
              DataField = 'TX_JUR'
              DataSource = DSpadrao
              TabOrder = 1
            end
          end
          object GroupBox7: TGroupBox
            AlignWithMargins = True
            Left = 666
            Top = 325
            Width = 316
            Height = 233
            Align = alRight
            TabOrder = 5
            object Label25: TLabel
              Left = 55
              Top = 18
              Width = 113
              Height = 16
              Caption = 'Data Pagamento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label26: TLabel
              Left = 101
              Top = 48
              Width = 67
              Height = 16
              Caption = 'Valor Pago:'
            end
            object Label27: TLabel
              Left = 101
              Top = 78
              Width = 67
              Height = 16
              Caption = 'Juros Pago:'
            end
            object Label28: TLabel
              Left = 41
              Top = 108
              Width = 127
              Height = 16
              Caption = 'Abatimento/Desconto:'
            end
            object Label29: TLabel
              Left = 97
              Top = 168
              Width = 71
              Height = 16
              Caption = 'Valor Final:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 105
              Top = 138
              Width = 63
              Height = 16
              Caption = 'Devolu'#231#227'o:'
            end
            object cxDBDateEdit_DT_PGT: TcxDBDateEdit
              Left = 175
              Top = 15
              DataBinding.DataField = 'DT_PGT'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = cxDBDateEdit_DT_PGTExit
              Width = 121
            end
            object DBEdit_VR_RCB: TDBEdit
              Left = 175
              Top = 45
              Width = 121
              Height = 24
              DataField = 'VR_RCB'
              DataSource = DSpadrao
              TabOrder = 1
              OnExit = DBEdit_VR_RCBExit
            end
            object DBEdit_VR_JUR: TDBEdit
              Left = 175
              Top = 75
              Width = 121
              Height = 24
              DataField = 'VR_JUR'
              DataSource = DSpadrao
              TabOrder = 2
              OnExit = DBEdit_VR_JURExit
            end
            object DBEdit_VR_ABA_DCT: TDBEdit
              Left = 175
              Top = 105
              Width = 121
              Height = 24
              DataField = 'VR_ABA_DCT'
              DataSource = DSpadrao
              TabOrder = 3
              OnExit = DBEdit_VR_ABA_DCTExit
            end
            object EditValorFinal: TEdit
              Left = 175
              Top = 165
              Width = 121
              Height = 24
              Alignment = taRightJustify
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit_VR_DEV: TDBEdit
              Left = 174
              Top = 135
              Width = 121
              Height = 24
              DataField = 'VR_DEV'
              DataSource = DSpadrao
              TabOrder = 5
            end
          end
        end
        object TabSheet_OutrasInformacoes: TTabSheet
          Caption = 'Outras Informa'#231#245'es'
          ImageIndex = 1
          object Label33: TLabel
            Left = 3
            Top = 63
            Width = 132
            Height = 16
            Caption = 'Informe a Observa'#231#227'o:'
          end
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 985
            Height = 57
            Align = alTop
            TabOrder = 0
            object Label32: TLabel
              Left = 14
              Top = 20
              Width = 103
              Height = 16
              Caption = 'C'#243'digo Vendedor:'
            end
            object DBEdit4: TDBEdit
              Left = 171
              Top = 17
              Width = 341
              Height = 24
              Color = 16773077
              DataField = 'NM_VEN'
              DataSource = DSVendedor
              Enabled = False
              TabOrder = 0
            end
            object DBEdit_ID_VEN: TDBEdit
              Left = 123
              Top = 17
              Width = 41
              Height = 24
              DataField = 'ID_VEN'
              DataSource = DSpadrao
              TabOrder = 1
              OnExit = DBEdit_ID_VENExit
              OnKeyPress = DBEdit_ID_VENKeyPress
            end
          end
          object DBMemo1: TDBMemo
            Left = 0
            Top = 120
            Width = 985
            Height = 441
            Align = alBottom
            DataField = 'DS_OBS'
            DataSource = DSpadrao
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 480
    Top = 528
    Bitmap = {
      494C010107000800340010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF2900FFFF2900FFFFFF
      FFFFFFAF9FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFFBB
      AEFFFFFFFFFFFFBBAEFFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFFF
      FFFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFFF
      FFFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF6A4EFFFFD7CFFFFFBBAEFFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF2900FFFF2900FFFF29
      00FFFFAF9FFFFFFFFFFFFFBCAFFFFFE4DFFFFFFFFFFFFFFFFFFFFFE4DFFFFF6C
      4FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFFFFFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFFFFFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF785FFFFFF2EFFFFFFFFFFFFFFFFFFFFF9580FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFFC6BBFFFFFFFFFFFFC6BBFFFF5F3FFFFF6A4EFFFFBCAFFFFFFF
      FFFFFF6C4FFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFBB
      AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E76FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFFE4DFFFFFBCAFFFFF2900FFFF2900FFFF2900FFFF2900FFFFBC
      AFFFFFE4DFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29
      00FFFFFFFFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFAF
      9FFFFFFFFFFFFFFFFFFFFFAF9FFFFFD7CFFFFFFFFFFFFFFFFFFFFF512FFFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFF49
      25FFFF360FFFFFFFFFFFFF512FFFFF4925FFFF2900FFFF4925FFFF2900FFFF76
      5BFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFFAF9FFFFFBBAEFFFF2900FFFF5F40FFFFF2EFFFFFFFFFFFFFF2EFFFFF6A
      4EFFFF2900FFFF4925FFFF2900FFFF4925FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF2900FFFF2900FFFF29
      00FFFF360FFFFFFFFFFFFF5F3FFFFF2900FFFF2900FFFF2900FFFF2900FFFF5F
      3FFFFFFFFFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF5F3FFFFFFFFFFFFFFFFFFFFFD7
      CFFFFF360FFFFF2900FFFF2900FFFF2900FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFFE8E4FFFFBCAFFFFF4925FFFF2900FFFF4925FFFF2900FFFFC6
      BBFFFFE4DFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF9985FFFFFFFFFFFFFF
      FFFFFFD7CFFFFF4925FFFF2900FFFF4925FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF6C4FFFFFFFFFFFFFBCAFFFFF5F3FFFFF5F3FFFFFBCAFFFFFFF
      FFFFFF6C4FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFAF9FFFFFE4
      DFFFFF785FFFFF2900FFFF2900FFFF2900FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF6C4FFFFFE8E4FFFFFFFFFFFFFFFFFFFFE4DFFFFF82
      69FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2A00FFFD2E03FFFE2A00FFFD2F03FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF512FFFFFE4DFFFFF512FFFFF2900FFFF2900FFFF512FFFFFE4DFFFFF51
      2FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2A00FFFFFFFFFFFFFFFFFFFE2A00FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFF2EFFFFF512FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F
      3FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF6A
      4EFFFFF2EFFFFFFFFFFFFFF2EFFFFF6A4EFFFF512FFFFFF4F1FFFFFFFFFFFFF4
      F1FFFF512FFFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFFFFFFFFFFFFFFFFFD2F03FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFFF4
      F1FFFF512FFFFF4925FFFFA18FFFFF6A4EFFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF785FFFFFFFFFFFFFFFFFFFFF4925FFFFFFFFFFFF4925FFFFFFFFFFFF82
      69FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFFE4
      DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2EFFFFFF2EFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFE4DFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFFFFFFFFFFFFFFFFFE2A00FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF51
      2FFFFF2900FFFFAF9FFFFFFFFFFFFFF2EFFFFF512FFFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF9580FFFFFFFFFFFFFFFFFFFF2900FFFFFFFFFFFF2900FFFFFFFFFFFF95
      80FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF6A
      4EFFFFF2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
      F1FFFF512FFFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2A00FFFF2900FFFFFFFFFFFFFFFFFFFD2F03FFFE2A00FFFD2F
      03FFFE2A00FFFD2F03FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFFA18FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2EFFFFF6A4EFFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFFBCAFFFFFFFFFFFFFFFFFFFFF4925FFFFFFFFFFFF4925FFFFFFFFFFFFBB
      AEFFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF512FFFFFF2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2EFFFFF51
      2FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFE2A00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF512FFFFFF2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2EFFFFF512FFFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFFCABFFFFFFFFFFFFFFFFFFFFF2900FFFFFFFFFFFFFFFFFFFFFFFFFFFFCA
      BFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF512FFFFFF4F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2EFFFFF6A
      4EFFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFE2C01FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF6A4EFFFFF2EFFFFFFFFFFFFFFFFFFFFFF4F1FFFF512FFFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4
      F1FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF51
      2FFFFFF2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2
      EFFFFF512FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFFFFFFFFFFFFFFFFFE2A00FFFE2A00FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF512FFFFFF2EFFFFFF2EFFFFF512FFFFF2900FFFFA1
      8FFFFF512FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF36
      0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFFE8
      E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F1FFFFF2EFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFE4DFFFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFFFFFFFFFFFFFFFFFE2D02FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF6A4EFFFF512FFFFF4925FFFFAF9FFFFFFF
      FFFFFFE4DFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF51
      2FFFFFF2EFFFFFFFFFFFFFF2EFFFFF512FFFFF512FFFFFF2EFFFFFFFFFFFFFF2
      EFFFFF512FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFFFFFFFFFFFFFFFFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFA18FFFFFFFFFFFFFF2
      EFFFFF512FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF512FFFFFE8E4FFFF512FFFFF4925FFFF2900FFFF6A4EFFFFE4DFFFFF6A
      4EFFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFFFFFFFFFFFFFFFFFE2B00FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF6A4EFFFFE4DFFFFF6A
      4EFFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFFFFFFFFFFFFFFFFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FF424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  inherited ActionList1: TActionList
    Left = 384
    Top = 528
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSContasReceber
    Left = 304
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
    StoredProcName = 'SP_GEN_DB_CTAREC_ID'
    Left = 388
    Top = 590
  end
  object DSLocal: TDataSource
    DataSet = DMcadastro.CDSLocalCobranca
    Left = 492
    Top = 600
  end
  object DSVendedor: TDataSource
    DataSet = DMcadastro.CDSVendedor
    Left = 580
    Top = 600
  end
  object PopupMenu1: TPopupMenu
    Left = 564
    Top = 523
    object ContasaRecebernumPerodo1: TMenuItem
      Caption = 'Contas a Receber num Per'#237'odo'
      OnClick = ContasaRecebernumPerodo1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object IntegradoContasaReceberePagarnumPerodo1: TMenuItem
      Caption = 'Integrado Contas a Receber e Pagar num Per'#237'odo'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object DbitodoClientenaDataBase1: TMenuItem
      Caption = 'D'#233'bito do Cliente na Data Base'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object DbitodoClientenoPerodo1: TMenuItem
      Caption = 'D'#233'bito do Cliente no Per'#237'odo'
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ExportarContasaReceber1: TMenuItem
      Caption = 'EXPORTAR CONTAS A RECEBER'
    end
  end
end
