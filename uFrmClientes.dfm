inherited FormClientes: TFormClientes
  Caption = 'Cadastro de Cliente'
  ClientHeight = 755
  ClientWidth = 1008
  PopupMenu = PopupMenu1
  ExplicitWidth = 1014
  ExplicitHeight = 784
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1008
    Height = 755
    ExplicitWidth = 1008
    ExplicitHeight = 755
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 1000
      ExplicitHeight = 724
      inherited PanelConsulta: TPanel
        Width = 1000
        ExplicitWidth = 1000
      end
      inherited Panel1: TPanel
        Width = 1000
        ExplicitWidth = 1000
        inherited SpeedButton2: TSpeedButton
          Left = 350
          ExplicitLeft = 326
        end
        inherited SpeedButton4: TSpeedButton
          Left = 342
          ExplicitLeft = 318
        end
        inherited SpeedButton3: TSpeedButton
          Left = 334
          ExplicitLeft = 310
        end
        inherited bbtnConsultar: TSpeedButton
          Left = 359
          ExplicitLeft = 359
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1000
        Height = 570
        DataSource = DSpadrao
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CLI'
            Title.Caption = 'Nome Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FAN'
            Title.Caption = 'Nome Fantasia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_FON'
            Title.Caption = 'Telefone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_CNP_CPF'
            Title.Caption = 'CNPJ/CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_RUA'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_EDR'
            Title.Caption = 'N'#176'/ Complemento'
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_BAI'
            Title.Caption = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ST_CLI'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Title.Caption = 'Ultimos Registro'
            Visible = True
          end>
      end
      inherited ToolBar1: TToolBar
        Width = 1000
        ExplicitWidth = 1000
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1000
      ExplicitHeight = 724
      inherited Panel2: TPanel
        Top = 670
        Width = 1000
        TabOrder = 3
        ExplicitTop = 670
        ExplicitWidth = 1000
        inherited LbH: TLabel
          Left = 154
          ExplicitLeft = 154
        end
        inherited LbW: TLabel
          Left = 194
          ExplicitLeft = 194
        end
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 994
        Height = 89
        Align = alTop
        Caption = ' Identifica'#231#227'o '
        TabOrder = 0
        object DBText_ID: TDBText
          Left = 142
          Top = 27
          Width = 65
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
          Left = 92
          Top = 27
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object Label2: TLabel
          Left = 375
          Top = 23
          Width = 86
          Height = 16
          Caption = 'Data Cadastro:'
        end
        object Label3: TLabel
          Left = 692
          Top = 23
          Width = 54
          Height = 16
          Caption = 'Situa'#231#227'o:'
        end
        object Label4: TLabel
          Left = 63
          Top = 54
          Width = 73
          Height = 16
          Caption = 'CNPJ / CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 393
          Top = 53
          Width = 68
          Height = 16
          Caption = 'Declara'#231#227'o:'
        end
        object Label6: TLabel
          Left = 686
          Top = 53
          Width = 60
          Height = 16
          Caption = 'Categoria:'
        end
        object cxDBDateEdit_DT_CAD: TcxDBDateEdit
          Left = 467
          Top = 20
          DataBinding.DataField = 'DT_CAD'
          DataBinding.DataSource = DSpadrao
          Properties.Alignment.Horz = taCenter
          TabOrder = 0
          Width = 129
        end
        object DBCombo_ST_CLI: TDBComboBox
          Left = 752
          Top = 20
          Width = 145
          Height = 24
          DataField = 'ST_CLI'
          DataSource = DSpadrao
          Items.Strings = (
            'ATIVO'
            'DESATIVADO')
          TabOrder = 1
        end
        object DBLookupNM_CTG_CLI: TDBLookupComboBox
          Left = 752
          Top = 50
          Width = 217
          Height = 24
          DataField = 'ID_CATEGORIA'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_CTG_CLI'
          ListFieldIndex = 1
          ListSource = DSCategoria
          TabOrder = 4
        end
        object DBEdit_NO_CNP_CPF: TcxDBTextEdit
          Left = 142
          Top = 50
          DataBinding.DataField = 'NO_CNP_CPF'
          DataBinding.DataSource = DSpadrao
          TabOrder = 2
          OnExit = DBEdit_NO_CNP_CPFExit
          OnKeyPress = DBEdit_NO_CNP_CPFKeyPress
          Width = 197
        end
        object Db_CB_Declaracao: TDBComboBox
          Left = 467
          Top = 50
          Width = 163
          Height = 24
          Style = csDropDownList
          DataField = 'SN_DCL'
          DataSource = DSpadrao
          Items.Strings = (
            ''
            'COM DECLARA'#199#195'O'
            'SEM DECLARA'#199#195'O')
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 98
        Width = 994
        Height = 119
        Align = alTop
        Caption = ' Nome Cliente '
        TabOrder = 1
        object Label7: TLabel
          Left = 55
          Top = 27
          Width = 81
          Height = 16
          Caption = 'Nome Cliente:'
        end
        object Label8: TLabel
          Left = 46
          Top = 59
          Width = 90
          Height = 16
          Caption = 'Nome Fantasia:'
        end
        object Label26: TLabel
          Left = 627
          Top = 27
          Width = 119
          Height = 16
          Caption = 'C'#243'digo Cont'#225'bil Rdz:'
        end
        object Label115: TLabel
          Left = 51
          Top = 91
          Width = 85
          Height = 16
          Caption = 'Data Abertura:'
        end
        object DBEdit_NM_CLI: TDBEdit
          Left = 142
          Top = 24
          Width = 430
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_CLI'
          DataSource = DSpadrao
          TabOrder = 0
        end
        object DBEdit_NM_FAN: TDBEdit
          Left = 142
          Top = 54
          Width = 430
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_FAN'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 752
          Top = 24
          Width = 74
          Height = 24
          DataField = 'CD_CTB'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 627
          Top = 54
          Width = 342
          Height = 24
          CharCase = ecUpperCase
          DataSource = DSpadrao
          TabOrder = 3
        end
        object DBEdit_DT_ABT: TDBEdit
          Left = 142
          Top = 88
          Width = 94
          Height = 24
          DataField = 'DT_ABT'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 4
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 220
        Width = 1000
        Height = 450
        Margins.Top = 0
        ActivePage = tabcadastro2
        Align = alClient
        TabOrder = 2
        object tabcadastro2: TTabSheet
          Margins.Top = 0
          Caption = 'Cadastro'
          object Label9: TLabel
            Left = 108
            Top = 19
            Width = 27
            Height = 16
            Caption = 'Cep:'
          end
          object btn_cons_cep: TSpeedButton
            Left = 241
            Top = 16
            Width = 23
            Height = 25
            Glyph.Data = {
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
            OnClick = btn_cons_cepClick
          end
          object Label10: TLabel
            Left = 77
            Top = 79
            Width = 58
            Height = 16
            Caption = 'Endere'#231'o:'
          end
          object Label15: TLabel
            Left = 588
            Top = 79
            Width = 50
            Height = 16
            Caption = 'N'#250'mero:'
          end
          object Label11: TLabel
            Left = 96
            Top = 109
            Width = 39
            Height = 16
            Caption = 'Bairro:'
          end
          object Label16: TLabel
            Left = 753
            Top = 79
            Width = 84
            Height = 16
            Caption = 'Complemento:'
          end
          object Label12: TLabel
            Left = 91
            Top = 139
            Width = 44
            Height = 16
            Caption = 'Cidade:'
          end
          object Label17: TLabel
            Left = 618
            Top = 139
            Width = 20
            Height = 16
            Caption = 'UF:'
          end
          object Label14: TLabel
            Left = 80
            Top = 169
            Width = 55
            Height = 16
            Caption = 'Telefone:'
          end
          object Label18: TLabel
            Left = 111
            Top = 199
            Width = 25
            Height = 16
            Caption = 'Fax:'
          end
          object Label19: TLabel
            Left = 93
            Top = 229
            Width = 45
            Height = 16
            Caption = 'Celular:'
          end
          object Label36: TLabel
            Left = 107
            Top = 50
            Width = 28
            Height = 16
            Caption = 'Pa'#237's:'
          end
          object DBEdit_ID_CEP: TDBEdit
            Left = 142
            Top = 16
            Width = 93
            Height = 24
            CharCase = ecUpperCase
            DataField = 'NO_CEP'
            DataSource = DSpadrao
            Enabled = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit_NM_RUA: TDBEdit
            Left = 142
            Top = 76
            Width = 429
            Height = 24
            CharCase = ecUpperCase
            Color = 16773077
            DataField = 'NM_RUA'
            DataSource = DSpadrao
            Enabled = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit_NO_EDR: TDBEdit
            Left = 641
            Top = 76
            Width = 94
            Height = 24
            DataField = 'NO_EDR'
            DataSource = DSpadrao
            TabOrder = 2
          end
          object DBEdit_NM_BAI: TDBEdit
            Left = 142
            Top = 106
            Width = 429
            Height = 24
            CharCase = ecUpperCase
            Color = 16773077
            DataField = 'NM_BAI'
            DataSource = DSpadrao
            Enabled = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit_DS_CPL: TDBEdit
            Left = 841
            Top = 76
            Width = 94
            Height = 24
            CharCase = ecUpperCase
            DataField = 'DS_CPL'
            DataSource = DSpadrao
            TabOrder = 4
          end
          object DBEdit_NM_CID: TDBEdit
            Left = 142
            Top = 136
            Width = 429
            Height = 24
            CharCase = ecUpperCase
            Color = 16773077
            DataField = 'NM_CID'
            DataSource = DSpadrao
            Enabled = False
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit_UF_CID: TDBEdit
            Left = 641
            Top = 136
            Width = 54
            Height = 24
            CharCase = ecUpperCase
            Color = 16773077
            DataField = 'UF_CID'
            DataSource = DSpadrao
            Enabled = False
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit_NO_FON: TDBEdit
            Left = 142
            Top = 166
            Width = 160
            Height = 24
            DataField = 'NO_FON'
            DataSource = DSpadrao
            TabOrder = 7
          end
          object DBEdit_NO_FAX: TDBEdit
            Left = 142
            Top = 196
            Width = 160
            Height = 24
            DataField = 'NO_FAX'
            DataSource = DSpadrao
            TabOrder = 8
          end
          object DBEdit_NO_CEL: TDBEdit
            Left = 142
            Top = 226
            Width = 160
            Height = 24
            DataField = 'NO_CEL'
            DataSource = DSpadrao
            MaxLength = 15
            TabOrder = 9
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 261
            Width = 992
            Height = 53
            Align = alBottom
            Caption = 'Contatos Celular'
            TabOrder = 10
            object Label20: TLabel
              Left = 106
              Top = 23
              Width = 29
              Height = 16
              Caption = 'Vivo:'
            end
            object Label21: TLabel
              Left = 323
              Top = 23
              Width = 17
              Height = 16
              Caption = 'Oi:'
            end
            object Label22: TLabel
              Left = 522
              Top = 23
              Width = 27
              Height = 16
              Caption = 'TIM:'
            end
            object Label23: TLabel
              Left = 734
              Top = 23
              Width = 35
              Height = 16
              Caption = 'Claro:'
            end
            object DBEdit_NO_CEL_VIV: TDBEdit
              Left = 142
              Top = 20
              Width = 160
              Height = 24
              DataField = 'NO_CEL_VIV'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_NO_CEL_OI: TDBEdit
              Left = 343
              Top = 20
              Width = 160
              Height = 24
              DataField = 'NO_CEL_OI'
              DataSource = DSpadrao
              TabOrder = 1
            end
            object DBEdit_NO_CEL_TIM: TDBEdit
              Left = 552
              Top = 20
              Width = 160
              Height = 24
              DataField = 'NO_CEL_TIM'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit_NO_CEL_CLA: TDBEdit
              Left = 775
              Top = 20
              Width = 160
              Height = 24
              DataField = 'NO_CEL_CLA'
              DataSource = DSpadrao
              TabOrder = 3
            end
          end
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 317
            Width = 986
            Height = 99
            Align = alBottom
            Caption = ' Inscri'#231#227'o '
            TabOrder = 11
            object Label24: TLabel
              Left = 585
              Top = 22
              Width = 120
              Height = 16
              Caption = 'Tipo de Consumidor:'
            end
            object Label25: TLabel
              Left = 41
              Top = 62
              Width = 91
              Height = 16
              Caption = 'Indicador da IE:'
            end
            object Label13: TLabel
              Left = 76
              Top = 22
              Width = 56
              Height = 16
              Caption = 'Inscri'#231#227'o:'
            end
            object DBEdit_NO_INS_EST: TDBEdit
              Left = 139
              Top = 19
              Width = 197
              Height = 24
              DataField = 'NO_INS_EST'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DbCb_IE: TDBComboBox
              Left = 138
              Top = 59
              Width = 794
              Height = 24
              Style = csDropDownList
              DataField = 'ID_IE'
              DataSource = DSpadrao
              Items.Strings = (
                '1 - Contribuinte de ICMS (Informar a IE do Destinat'#225'rio)'
                
                  '2 - Contribuinte Isento de Inscri'#231#227'o no Cadastro de Contribuinte' +
                  's de ICMS'
                
                  '9 - N'#227'o Contribuinte, que pode ou n'#227'o possuir IE no Cadastro de ' +
                  'Contruibuintes de ICMS')
              TabOrder = 2
            end
            object DB_CB_Consumidor: TDBComboBox
              Left = 711
              Top = 19
              Width = 221
              Height = 24
              Style = csDropDownList
              DataField = 'TP_CSM_FIN'
              DataSource = DSpadrao
              Items.Strings = (
                '0 - Revendedor / Normal / Outros'
                '1 - Consumidor Final')
              TabOrder = 1
            end
          end
          object DBLookup_CD_PAI: TDBLookupComboBox
            Left = 142
            Top = 46
            Width = 342
            Height = 24
            DataField = 'CD_PAI'
            DataSource = DSpadrao
            KeyField = 'CD_PAI'
            ListField = 'NM_PAI;CD_PAI'
            ListSource = DS_PAISES
            TabOrder = 12
          end
        end
        object tabEndCob: TTabSheet
          Caption = 'Endere'#231'o cobran'#231'a'
          ImageIndex = 1
          object GroupBox5: TGroupBox
            Left = -1
            Top = 1
            Width = 994
            Height = 286
            Caption = 'Endere'#231'o Cobran'#231'a'
            TabOrder = 0
            object Label27: TLabel
              Left = 80
              Top = 72
              Width = 58
              Height = 16
              Caption = 'Endere'#231'o:'
            end
            object SpeedButton5: TSpeedButton
              Left = 241
              Top = 35
              Width = 23
              Height = 25
              Glyph.Data = {
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
              OnClick = btn_cons_cepClick
            end
            object Label28: TLabel
              Left = 99
              Top = 140
              Width = 39
              Height = 16
              Caption = 'Bairro:'
            end
            object Label29: TLabel
              Left = 94
              Top = 106
              Width = 44
              Height = 16
              Caption = 'Cidade:'
            end
            object Label30: TLabel
              Left = 769
              Top = 72
              Width = 84
              Height = 16
              Caption = 'Complemento:'
            end
            object Label31: TLabel
              Left = 618
              Top = 106
              Width = 20
              Height = 16
              Caption = 'UF:'
            end
            object Label32: TLabel
              Left = 111
              Top = 38
              Width = 27
              Height = 16
              Caption = 'Cep:'
            end
            object Label33: TLabel
              Left = 588
              Top = 72
              Width = 50
              Height = 16
              Caption = 'N'#250'mero:'
            end
            object Label37: TLabel
              Left = 83
              Top = 174
              Width = 55
              Height = 16
              Caption = 'Telefone:'
            end
            object Label38: TLabel
              Left = 111
              Top = 208
              Width = 25
              Height = 16
              Caption = 'Fax:'
            end
            object Label39: TLabel
              Left = 93
              Top = 242
              Width = 45
              Height = 16
              Caption = 'Celular:'
            end
            object DBEdit_ID_CEP_COB: TDBEdit
              Left = 142
              Top = 35
              Width = 93
              Height = 24
              CharCase = ecUpperCase
              DataField = 'COBNO_CEP'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit_NM_RUA_COB: TDBEdit
              Left = 142
              Top = 69
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'COBNM_RUA'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit_NM_BAI_COB: TDBEdit
              Left = 142
              Top = 137
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'COBNM_BAI'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit_NM_CID_COB: TDBEdit
              Left = 142
              Top = 103
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'COBNM_CID'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit_NO_EDR_COB: TDBEdit
              Left = 642
              Top = 69
              Width = 94
              Height = 24
              DataField = 'NO_EDR_COB'
              DataSource = DSpadrao
              TabOrder = 4
            end
            object DBEdit_DS_DS_CPL_COB: TDBEdit
              Left = 857
              Top = 69
              Width = 94
              Height = 24
              CharCase = ecUpperCase
              DataField = 'DS_CPL_COB'
              DataSource = DSpadrao
              TabOrder = 5
            end
            object DBEdit_UF_CID_COB: TDBEdit
              Left = 642
              Top = 103
              Width = 38
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'COBUF_CID'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit1: TDBEdit
              Left = 142
              Top = 171
              Width = 160
              Height = 24
              DataField = 'NO_FON'
              DataSource = DSpadrao
              TabOrder = 7
            end
            object DBEdit2: TDBEdit
              Left = 142
              Top = 205
              Width = 160
              Height = 24
              DataField = 'NO_FAX'
              DataSource = DSpadrao
              TabOrder = 8
            end
            object DBEdit3: TDBEdit
              Left = 142
              Top = 239
              Width = 160
              Height = 24
              DataField = 'NO_CEL'
              DataSource = DSpadrao
              MaxLength = 15
              TabOrder = 9
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 286
            Width = 992
            Height = 95
            Caption = 'Contato'
            TabOrder = 1
            object Label34: TLabel
              Left = 64
              Top = 62
              Width = 41
              Height = 16
              Caption = 'E-mail:'
            end
            object Label35: TLabel
              Left = 3
              Top = 26
              Width = 102
              Height = 16
              Caption = 'Nome do contato:'
            end
            object DBEdit_E_MAIL_COB: TDBEdit
              Left = 108
              Top = 59
              Width = 415
              Height = 24
              CharCase = ecLowerCase
              DataField = 'E_MAIL_COB'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_NM_CTT_COB: TDBEdit
              Left = 108
              Top = 23
              Width = 415
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NM_CTT_COB'
              DataSource = DSpadrao
              TabOrder = 1
            end
          end
        end
        object TabInfComercial: TTabSheet
          Caption = 'Inf. Comerciais'
          ImageIndex = 2
          object GroupBox8: TGroupBox
            Left = 0
            Top = 274
            Width = 992
            Height = 137
            Align = alTop
            TabOrder = 2
            object Label47: TLabel
              Left = 63
              Top = 12
              Width = 99
              Height = 16
              Caption = 'Nome Empresa:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label48: TLabel
              Left = 635
              Top = 12
              Width = 60
              Height = 16
              Caption = 'Telefone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label49: TLabel
              Left = 76
              Top = 42
              Width = 86
              Height = 16
              Caption = 'Maior Compra:'
            end
            object Label50: TLabel
              Left = 605
              Top = 42
              Width = 90
              Height = 16
              Caption = #218'ltima Compra:'
            end
            object Label51: TLabel
              Left = 13
              Top = 72
              Width = 149
              Height = 16
              Caption = 'Limite/Forma Pagamento:'
            end
            object Label52: TLabel
              Left = 563
              Top = 72
              Width = 132
              Height = 16
              Caption = 'Respons'#225'vel/Cadastro:'
            end
            object Label53: TLabel
              Left = 90
              Top = 102
              Width = 72
              Height = 16
              Caption = 'Observa'#231#227'o:'
            end
            object DBEdit_NM_EMP_CM3: TDBEdit
              Left = 165
              Top = 9
              Width = 454
              Height = 24
              DataField = 'NM_INF_CM3'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_NO_FON_CM3: TDBEdit
              Left = 701
              Top = 9
              Width = 121
              Height = 24
              DataField = 'NO_FON_CM3'
              DataSource = DSpadrao
              TabOrder = 1
            end
            object DBEdit_VR_MFT_CM3: TDBEdit
              Left = 165
              Top = 39
              Width = 121
              Height = 24
              TabOrder = 2
            end
            object DBedit_DT_MFT_CM3: TcxDBDateEdit
              Left = 292
              Top = 39
              TabOrder = 3
              Width = 121
            end
            object DBEdit_VR_UCP_CM3: TDBEdit
              Left = 701
              Top = 39
              Width = 121
              Height = 24
              DataField = 'VR_UCP_CM3'
              DataSource = DSpadrao
              TabOrder = 4
            end
            object DBEdit_DT_UCP_CM3: TcxDBDateEdit
              Left = 838
              Top = 39
              DataBinding.DataField = 'DT_UCP_CM3'
              DataBinding.DataSource = DSpadrao
              TabOrder = 5
              Width = 121
            end
            object DBEdit_VR_LMT_CM3: TDBEdit
              Left = 165
              Top = 69
              Width = 121
              Height = 24
              DataField = 'VR_UCP_CM3'
              DataSource = DSpadrao
              TabOrder = 6
            end
            object DBEdit_FO_PGT_CM3: TDBEdit
              Left = 292
              Top = 69
              Width = 121
              Height = 24
              DataField = 'DT_UCP_CM3'
              DataSource = DSpadrao
              TabOrder = 7
            end
            object DBEdit_NM_INF_CM3: TDBEdit
              Left = 701
              Top = 69
              Width = 121
              Height = 24
              DataField = 'NM_INF_CM3'
              DataSource = DSpadrao
              TabOrder = 8
            end
            object DBedit_DT_CAD_CM3: TcxDBDateEdit
              Left = 838
              Top = 69
              DataBinding.DataField = 'DT_CAD_CM3'
              DataBinding.DataSource = DSpadrao
              TabOrder = 9
              Width = 121
            end
            object DBEdit_DS_OBS_CM3: TDBEdit
              Left = 165
              Top = 99
              Width = 657
              Height = 24
              TabOrder = 10
            end
          end
          object GroupBox7: TGroupBox
            Left = 0
            Top = 137
            Width = 992
            Height = 137
            Align = alTop
            TabOrder = 1
            object Label40: TLabel
              Left = 63
              Top = 12
              Width = 99
              Height = 16
              Caption = 'Nome Empresa:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label41: TLabel
              Left = 635
              Top = 12
              Width = 60
              Height = 16
              Caption = 'Telefone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label42: TLabel
              Left = 76
              Top = 42
              Width = 86
              Height = 16
              Caption = 'Maior Compra:'
            end
            object Label43: TLabel
              Left = 605
              Top = 42
              Width = 90
              Height = 16
              Caption = #218'ltima Compra:'
            end
            object Label44: TLabel
              Left = 13
              Top = 72
              Width = 149
              Height = 16
              Caption = 'Limite/Forma Pagamento:'
            end
            object Label45: TLabel
              Left = 563
              Top = 72
              Width = 132
              Height = 16
              Caption = 'Respons'#225'vel/Cadastro:'
            end
            object Label46: TLabel
              Left = 90
              Top = 102
              Width = 72
              Height = 16
              Caption = 'Observa'#231#227'o:'
            end
            object DBEdit_NM_EMP_CM2: TDBEdit
              Left = 165
              Top = 9
              Width = 454
              Height = 24
              DataField = 'NM_INF_CM2'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_NO_FON_CM2: TDBEdit
              Left = 701
              Top = 9
              Width = 121
              Height = 24
              DataField = 'NO_FON_CM3'
              DataSource = DSpadrao
              TabOrder = 1
            end
            object DBEdit_VR_MFT_CM2: TDBEdit
              Left = 165
              Top = 39
              Width = 121
              Height = 24
              DataField = 'VR_MFT_CM2'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBedit_DT_MFT_CM2: TcxDBDateEdit
              Left = 292
              Top = 39
              DataBinding.DataField = 'DT_MFT_CM2'
              DataBinding.DataSource = DSpadrao
              TabOrder = 3
              Width = 121
            end
            object DBEdit_VR_UCP_CM2: TDBEdit
              Left = 701
              Top = 39
              Width = 121
              Height = 24
              DataField = 'VR_UCP_CM2'
              DataSource = DSpadrao
              TabOrder = 4
            end
            object DBEdit_DT_UCP_CM2: TcxDBDateEdit
              Left = 838
              Top = 39
              DataBinding.DataField = 'DT_UCP_CM2'
              DataBinding.DataSource = DSpadrao
              TabOrder = 5
              Width = 121
            end
            object DBEdit_VR_LMT_CM2: TDBEdit
              Left = 165
              Top = 69
              Width = 121
              Height = 24
              DataField = 'VR_UCP_CM2'
              DataSource = DSpadrao
              TabOrder = 6
            end
            object DBEdit_FO_PGT_CM2: TDBEdit
              Left = 292
              Top = 69
              Width = 121
              Height = 24
              DataField = 'DT_UCP_CM2'
              DataSource = DSpadrao
              TabOrder = 7
            end
            object DBEdit_NM_INF_CM2: TDBEdit
              Left = 701
              Top = 69
              Width = 121
              Height = 24
              DataField = 'NM_INF_CM2'
              DataSource = DSpadrao
              TabOrder = 8
            end
            object DBedit_DT_CAD_CM2: TcxDBDateEdit
              Left = 838
              Top = 69
              DataBinding.DataField = 'DT_CAD_CM2'
              DataBinding.DataSource = DSpadrao
              TabOrder = 9
              Width = 121
            end
            object DBEdit_DS_OBS_CM2: TDBEdit
              Left = 165
              Top = 99
              Width = 657
              Height = 24
              TabOrder = 10
            end
          end
          object GroupBox9: TGroupBox
            Left = 0
            Top = 0
            Width = 992
            Height = 137
            Align = alTop
            TabOrder = 0
            object Label54: TLabel
              Left = 63
              Top = 12
              Width = 99
              Height = 16
              Caption = 'Nome Empresa:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label55: TLabel
              Left = 635
              Top = 12
              Width = 60
              Height = 16
              Caption = 'Telefone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label56: TLabel
              Left = 76
              Top = 42
              Width = 86
              Height = 16
              Caption = 'Maior Compra:'
            end
            object Label57: TLabel
              Left = 605
              Top = 42
              Width = 90
              Height = 16
              Caption = #218'ltima Compra:'
            end
            object Label58: TLabel
              Left = 13
              Top = 72
              Width = 149
              Height = 16
              Caption = 'Limite/Forma Pagamento:'
            end
            object Label59: TLabel
              Left = 563
              Top = 72
              Width = 132
              Height = 16
              Caption = 'Respons'#225'vel/Cadastro:'
            end
            object Label60: TLabel
              Left = 90
              Top = 102
              Width = 72
              Height = 16
              Caption = 'Observa'#231#227'o:'
            end
            object DBEdit_NM_EMP_CM1: TDBEdit
              Left = 165
              Top = 9
              Width = 454
              Height = 24
              DataField = 'NM_INF_CM1'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_NO_FON_CM1: TDBEdit
              Left = 701
              Top = 9
              Width = 121
              Height = 24
              DataField = 'NO_FON_CM1'
              DataSource = DSpadrao
              TabOrder = 1
            end
            object DBEdit_VR_MFT_CM1: TDBEdit
              Left = 165
              Top = 39
              Width = 121
              Height = 24
              DataField = 'VR_MFT_CM1'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit_DT_MFT_CM1: TcxDBDateEdit
              Left = 292
              Top = 39
              DataBinding.DataField = 'DT_MFT_CM1'
              DataBinding.DataSource = DSpadrao
              TabOrder = 3
              Width = 121
            end
            object DBEdit_VR_UCP_CM1: TDBEdit
              Left = 701
              Top = 39
              Width = 121
              Height = 24
              DataField = 'VR_UCP_CM1'
              DataSource = DSpadrao
              TabOrder = 4
            end
            object DBEdit_DT_UCP_CM1: TcxDBDateEdit
              Left = 838
              Top = 39
              DataBinding.DataField = 'DT_UCP_CM1'
              DataBinding.DataSource = DSpadrao
              TabOrder = 5
              Width = 121
            end
            object DBEdit_VR_LMT_CM1: TDBEdit
              Left = 165
              Top = 69
              Width = 121
              Height = 24
              DataField = 'VR_LMT_CM1'
              DataSource = DSpadrao
              TabOrder = 6
            end
            object DBEdit_FO_PGT_CM1: TDBEdit
              Left = 292
              Top = 69
              Width = 121
              Height = 24
              DataField = 'FO_PGT_CM1'
              DataSource = DSpadrao
              TabOrder = 7
            end
            object DBEdit_NM_INF_CM1: TDBEdit
              Left = 701
              Top = 69
              Width = 121
              Height = 24
              DataField = 'NM_INF_CM1'
              DataSource = DSpadrao
              TabOrder = 8
            end
            object DBedit_DT_CAD_CM1: TcxDBDateEdit
              Left = 838
              Top = 69
              DataBinding.DataField = 'DT_CAD_CM1'
              DataBinding.DataSource = DSpadrao
              TabOrder = 9
              Width = 121
            end
            object DBEdit_DS_OBS_CM1: TDBEdit
              Left = 165
              Top = 99
              Width = 657
              Height = 24
              DataField = 'DS_OBS_CM1'
              DataSource = DSpadrao
              TabOrder = 10
            end
          end
        end
        object TabInfBancariaInternet: TTabSheet
          Caption = 'Inf. Banc'#225'rias/Internet'
          ImageIndex = 3
          object GroupBox10: TGroupBox
            Left = 0
            Top = 210
            Width = 992
            Height = 79
            Align = alTop
            Caption = ' Contato '
            TabOrder = 0
            object Label66: TLabel
              Left = 49
              Top = 34
              Width = 86
              Height = 16
              Caption = 'Nome Contato:'
            end
            object DBEdit_NM_CTT: TDBEdit
              Left = 141
              Top = 31
              Width = 348
              Height = 24
              DataField = 'NM_CTT'
              DataSource = DSpadrao
              TabOrder = 0
            end
          end
          object GroupBox11: TGroupBox
            Left = 0
            Top = 105
            Width = 992
            Height = 105
            Align = alTop
            Caption = 'Dados Internet'
            TabOrder = 1
            object Label64: TLabel
              Left = 64
              Top = 35
              Width = 71
              Height = 16
              Caption = 'Home-Page:'
            end
            object Label65: TLabel
              Left = 101
              Top = 65
              Width = 36
              Height = 16
              Caption = 'Email:'
            end
            object DBEdit_HOME_PAGE: TDBEdit
              Left = 141
              Top = 32
              Width = 348
              Height = 24
              DataField = 'HOME_PAGE'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_E_MAIL: TDBEdit
              Left = 141
              Top = 62
              Width = 348
              Height = 24
              DataField = 'E_MAIL'
              DataSource = DSpadrao
              TabOrder = 1
            end
          end
          object GroupBox12: TGroupBox
            Left = 0
            Top = 0
            Width = 992
            Height = 105
            Align = alTop
            Caption = ' Informa'#231#245'es Banc'#225'rias '
            TabOrder = 2
            object Label61: TLabel
              Left = 61
              Top = 35
              Width = 76
              Height = 16
              Caption = 'Nome Banco:'
            end
            object Label62: TLabel
              Left = 48
              Top = 65
              Width = 87
              Height = 16
              Caption = 'Nome Gerente:'
            end
            object Label63: TLabel
              Left = 582
              Top = 35
              Width = 103
              Height = 16
              Caption = 'Telefone Contato:'
            end
            object DBEdit_NM_BCO_CM2: TDBEdit
              Left = 141
              Top = 32
              Width = 348
              Height = 24
              DataField = 'NM_BCO_CM2'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_NO_FBC_CM2: TDBEdit
              Left = 691
              Top = 32
              Width = 121
              Height = 24
              DataField = 'NO_FBC_CM2'
              DataSource = DSpadrao
              TabOrder = 1
            end
            object DBEdit_NM_GBC_CM: TDBEdit
              Left = 141
              Top = 62
              Width = 348
              Height = 24
              DataField = 'NM_GBC_CM2'
              DataSource = DSpadrao
              TabOrder = 2
            end
          end
        end
        object TabLimitePreferencia: TTabSheet
          Caption = 'Limite / Prefer'#234'ncias'
          ImageIndex = 4
          object GroupBox13: TGroupBox
            Left = 0
            Top = 274
            Width = 992
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label78: TLabel
              Left = 75
              Top = 11
              Width = 60
              Height = 16
              Caption = 'Vendedor:'
            end
            object DBLookupVendedor: TDBLookupComboBox
              Left = 139
              Top = 8
              Width = 425
              Height = 24
              DataSource = DSpadrao
              TabOrder = 0
            end
          end
          object GroupBox14: TGroupBox
            Left = 0
            Top = 184
            Width = 992
            Height = 90
            Align = alTop
            TabOrder = 1
            object Label76: TLabel
              Left = 25
              Top = 27
              Width = 110
              Height = 16
              Caption = 'Local de Cobran'#231'a:'
            end
            object Label77: TLabel
              Left = 41
              Top = 58
              Width = 94
              Height = 16
              Caption = 'Transportadora:'
            end
            object CB_CD_LOC_COB: TDBComboBox
              Left = 139
              Top = 24
              Width = 228
              Height = 24
              DataSource = DSpadrao
              Items.Strings = (
                'BANCO DO BRASIL'
                'BRADESCO ')
              TabOrder = 0
            end
            object CB_CD_TRN: TDBLookupComboBox
              Left = 139
              Top = 56
              Width = 423
              Height = 24
              DataSource = DSpadrao
              TabOrder = 1
            end
          end
          object GroupBox15: TGroupBox
            Left = 0
            Top = 113
            Width = 992
            Height = 71
            Align = alTop
            TabOrder = 2
            object Label72: TLabel
              Left = 15
              Top = 11
              Width = 120
              Height = 16
              Caption = 'Valor Maior Compra:'
            end
            object Label73: TLabel
              Left = 566
              Top = 11
              Width = 116
              Height = 16
              Caption = 'Data Maior Compra:'
            end
            object Label74: TLabel
              Left = 11
              Top = 41
              Width = 124
              Height = 16
              Caption = 'Valor '#218'ltima Compra:'
            end
            object Label75: TLabel
              Left = 560
              Top = 39
              Width = 120
              Height = 16
              Caption = 'Data '#218'ltima Compra:'
            end
            object DBEdit_VR_MAI_CMP: TDBEdit
              Left = 139
              Top = 8
              Width = 121
              Height = 24
              DataField = 'VR_MAI_CMP'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object cxDBDateEdit_DT_MAI_CMP: TcxDBDateEdit
              Left = 688
              Top = 6
              DataBinding.DataField = 'DT_MAI_CMP'
              DataBinding.DataSource = DSpadrao
              TabOrder = 1
              Width = 121
            end
            object DBEdit_VR_ULT_CMP: TDBEdit
              Left = 139
              Top = 38
              Width = 121
              Height = 24
              DataField = 'VR_ULT_CMP'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object cxDBDateEdit_DT_ULT_CMP: TcxDBDateEdit
              Left = 688
              Top = 36
              DataBinding.DataField = 'DT_ULT_CMP'
              DataBinding.DataSource = DSpadrao
              TabOrder = 3
              Width = 121
            end
          end
          object GroupBox16: TGroupBox
            Left = 0
            Top = 0
            Width = 992
            Height = 113
            Align = alTop
            TabOrder = 3
            object Label67: TLabel
              Left = 40
              Top = 19
              Width = 95
              Height = 16
              Caption = 'Limite Cr'#233'dito 1:'
            end
            object Label68: TLabel
              Left = 587
              Top = 19
              Width = 95
              Height = 16
              Caption = 'Limite Cr'#233'dito 2:'
            end
            object Label69: TLabel
              Left = 16
              Top = 49
              Width = 119
              Height = 16
              Caption = 'Usu'#225'rio que Liberou:'
            end
            object Label70: TLabel
              Left = 25
              Top = 78
              Width = 110
              Height = 16
              Caption = 'Observa'#231#227'o Limite:'
            end
            object Label71: TLabel
              Left = 661
              Top = 78
              Width = 21
              Height = 16
              Caption = 'CC:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton6: TSpeedButton
              Left = 872
              Top = 28
              Width = 50
              Height = 50
              Cursor = crHandPoint
              Hint = 'Hist'#243'rico Limite Cliente!'
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000FF0000
                00FF0000000000000000000000FF000000FF000000FF000000FF000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000FF0000
                00FF0000000000000000000000FF000000FF000000FF000000FF000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000FF0000
                00FF0000000000000000000000FF000000FF000000FF000000FF000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000FF0000
                00FF0000000000000000000000FF000000FF000000FF000000FF000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF00000000000000000000000000000000000000000000
                00000000000000000000000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF00000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Layout = blGlyphTop
              ParentShowHint = False
              ShowHint = True
            end
            object DBEdit_VR_LMT_CRD: TDBEdit
              Left = 139
              Top = 16
              Width = 121
              Height = 24
              DataField = 'VR_LMT_CRD'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_VR_LMT_AUX: TDBEdit
              Left = 688
              Top = 16
              Width = 121
              Height = 24
              DataField = 'VR_LMT_AUX'
              DataSource = DSpadrao
              TabOrder = 1
            end
            object DBEdit_CD_LBR_LMT: TDBEdit
              Left = 139
              Top = 46
              Width = 425
              Height = 24
              Color = clRed
              DataField = 'CD_LBR_LMT'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit_DT_LMT_CRD: TcxDBDateEdit
              Left = 688
              Top = 46
              DataBinding.DataField = 'DT_LMT_CRD'
              DataBinding.DataSource = DSpadrao
              TabOrder = 3
              Width = 121
            end
            object DBEdit_DS_OBS_AUX: TDBEdit
              Left = 139
              Top = 75
              Width = 425
              Height = 24
              DataField = 'DS_OBS_AUX'
              DataSource = DSpadrao
              TabOrder = 4
            end
            object CB_MSN_CC: TDBComboBox
              Left = 688
              Top = 75
              Width = 73
              Height = 24
              DataField = 'SN_CC'
              DataSource = DSpadrao
              Items.Strings = (
                'NAO'
                'SIM')
              TabOrder = 5
            end
          end
        end
        object TabPessoaFisica: TTabSheet
          Caption = 'Pessoa F'#237'sica'
          ImageIndex = 5
          object GroupBox17: TGroupBox
            Left = 0
            Top = 283
            Width = 992
            Height = 105
            Align = alTop
            Caption = 'Local de Trabalho'
            TabOrder = 0
            object Label84: TLabel
              Left = 28
              Top = 34
              Width = 107
              Height = 16
              Caption = 'Local de Trabalho:'
            end
            object Label85: TLabel
              Left = 37
              Top = 64
              Width = 98
              Height = 16
              Caption = 'Fun'#231#227'o Exercida:'
            end
            object Label113: TLabel
              Left = 636
              Top = 34
              Width = 55
              Height = 16
              Caption = 'Telefone:'
            end
            object Label114: TLabel
              Left = 646
              Top = 64
              Width = 45
              Height = 16
              Caption = 'Sal'#225'rio:'
            end
            object DBEdit_NM_LOC_TRB: TDBEdit
              Left = 141
              Top = 31
              Width = 430
              Height = 24
              DataField = 'NM_LOC_TRB'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_NM_FUN_TRB: TDBEdit
              Left = 141
              Top = 61
              Width = 430
              Height = 24
              DataField = 'NM_FUN_TRB'
              DataSource = DSpadrao
              TabOrder = 1
            end
            object DBEdit_NO_FON_TRB: TDBEdit
              Left = 697
              Top = 31
              Width = 162
              Height = 24
              DataField = 'NO_FON_TRB'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit_VR_SAL: TDBEdit
              Left = 697
              Top = 61
              Width = 162
              Height = 24
              DataField = 'NM_LOC_TRB'
              DataSource = DSpadrao
              TabOrder = 3
            end
          end
          object GroupBox18: TGroupBox
            Left = 0
            Top = 178
            Width = 992
            Height = 105
            Align = alTop
            Caption = ' Filia'#231#227'o '
            TabOrder = 1
            object Label82: TLabel
              Left = 58
              Top = 30
              Width = 77
              Height = 16
              Caption = 'Nome do Pai:'
            end
            object Label83: TLabel
              Left = 51
              Top = 60
              Width = 84
              Height = 16
              Caption = 'Nome da M'#227'e:'
            end
            object DBEdit_NM_PAI: TDBEdit
              Left = 141
              Top = 27
              Width = 430
              Height = 24
              DataField = 'NM_PAI'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_NM_MAE: TDBEdit
              Left = 141
              Top = 57
              Width = 430
              Height = 24
              DataField = 'NM_MAE'
              DataSource = DSpadrao
              TabOrder = 1
            end
          end
          object GroupBox19: TGroupBox
            Left = 0
            Top = 73
            Width = 992
            Height = 105
            Align = alTop
            Caption = ' Nascimento '
            TabOrder = 2
            object Label80: TLabel
              Left = 16
              Top = 34
              Width = 119
              Height = 16
              Caption = 'Data de Nascimento:'
            end
            object Label81: TLabel
              Left = 13
              Top = 64
              Width = 122
              Height = 16
              Caption = 'Local de Nascimento:'
            end
            object Label112: TLabel
              Left = 671
              Top = 64
              Width = 20
              Height = 16
              Caption = 'UF:'
            end
            object DateEdit_DT_NCM: TcxDBDateEdit
              Left = 141
              Top = 31
              DataBinding.DataField = 'DT_NCT'
              DataBinding.DataSource = DSpadrao
              TabOrder = 0
              Width = 121
            end
            object DBEdit37: TDBEdit
              Left = 141
              Top = 61
              Width = 295
              Height = 24
              TabOrder = 1
            end
            object DBEdit_UF_CID_NCT: TDBEdit
              Left = 697
              Top = 61
              Width = 52
              Height = 24
              DataField = 'UF_CID_NCT'
              DataSource = DSpadrao
              TabOrder = 2
            end
          end
          object GroupBox20: TGroupBox
            Left = 0
            Top = 0
            Width = 992
            Height = 73
            Align = alTop
            Caption = ' Identidade '
            TabOrder = 3
            object Label79: TLabel
              Left = 20
              Top = 33
              Width = 115
              Height = 16
              Caption = 'Carteira Identidade:'
            end
            object DBEdit_NO_IDT: TDBEdit
              Left = 141
              Top = 30
              Width = 137
              Height = 24
              DataField = 'NO_IDT'
              DataSource = DSpadrao
              TabOrder = 0
            end
          end
        end
        object TabObsVendas: TTabSheet
          Caption = 'Obs. Vendas'
          ImageIndex = 6
          object DBMemo1: TDBMemo
            Left = 0
            Top = 0
            Width = 992
            Height = 419
            Align = alClient
            DataSource = DSpadrao
            TabOrder = 0
          end
        end
        object TabObsFinanceira: TTabSheet
          Caption = 'Obs. Financeiras'
          ImageIndex = 7
          object DBMemo2: TDBMemo
            Left = 0
            Top = 0
            Width = 992
            Height = 419
            Align = alClient
            DataSource = DSpadrao
            TabOrder = 0
          end
        end
        object TabAvalista1: TTabSheet
          Caption = 'Avalista 1'
          ImageIndex = 8
          object GroupBox21: TGroupBox
            Left = 0
            Top = 105
            Width = 992
            Height = 256
            Align = alTop
            Caption = 'Endere'#231'o Avalista 1'
            TabOrder = 0
            object Label89: TLabel
              Left = 108
              Top = 21
              Width = 27
              Height = 16
              Caption = 'Cep:'
            end
            object SpeedButton7: TSpeedButton
              Left = 240
              Top = 18
              Width = 23
              Height = 25
              Glyph.Data = {
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
              OnClick = btn_cons_cepClick
            end
            object Label90: TLabel
              Left = 107
              Top = 52
              Width = 28
              Height = 16
              Caption = 'Pa'#237's:'
            end
            object Label91: TLabel
              Left = 77
              Top = 81
              Width = 58
              Height = 16
              Caption = 'Endere'#231'o:'
            end
            object Label92: TLabel
              Left = 588
              Top = 81
              Width = 50
              Height = 16
              Caption = 'N'#250'mero:'
            end
            object Label93: TLabel
              Left = 753
              Top = 81
              Width = 84
              Height = 16
              Caption = 'Complemento:'
            end
            object Label94: TLabel
              Left = 96
              Top = 111
              Width = 39
              Height = 16
              Caption = 'Bairro:'
            end
            object Label95: TLabel
              Left = 91
              Top = 141
              Width = 44
              Height = 16
              Caption = 'Cidade:'
            end
            object Label96: TLabel
              Left = 617
              Top = 141
              Width = 20
              Height = 16
              Caption = 'UF:'
            end
            object Label97: TLabel
              Left = 80
              Top = 171
              Width = 55
              Height = 16
              Caption = 'Telefone:'
            end
            object Label98: TLabel
              Left = 93
              Top = 201
              Width = 45
              Height = 16
              Caption = 'Celular:'
            end
            object DBEdit_ID_CEP_AV: TDBEdit
              Left = 141
              Top = 18
              Width = 93
              Height = 24
              CharCase = ecUpperCase
              DataField = 'AV1NO_CEP'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit_NM_RUA_AV1: TDBEdit
              Left = 141
              Top = 78
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'AV1NM_RUA'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit45: TDBEdit
              Left = 641
              Top = 78
              Width = 94
              Height = 24
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit46: TDBEdit
              Left = 841
              Top = 78
              Width = 94
              Height = 24
              CharCase = ecUpperCase
              DataSource = DSpadrao
              TabOrder = 3
            end
            object DBEdit_NM_BAI_AV1: TDBEdit
              Left = 141
              Top = 108
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'AV1NM_BAI'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit_NM_CID_AV1: TDBEdit
              Left = 141
              Top = 138
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'AV1NM_CID'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit_UF_CID_AV1: TDBEdit
              Left = 641
              Top = 138
              Width = 54
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'AV1UF_CID'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit50: TDBEdit
              Left = 141
              Top = 168
              Width = 160
              Height = 24
              DataSource = DSpadrao
              TabOrder = 7
            end
            object DBEdit51: TDBEdit
              Left = 141
              Top = 198
              Width = 160
              Height = 24
              DataSource = DSpadrao
              MaxLength = 15
              TabOrder = 8
            end
            object DBLookupPaises_AV1: TDBLookupComboBox
              Left = 141
              Top = 48
              Width = 342
              Height = 24
              DataField = 'CD_PAI'
              DataSource = DSpadrao
              KeyField = 'CD_PAI'
              ListField = 'NM_PAI;CD_PAI'
              ListSource = DS_PAISES
              TabOrder = 9
            end
          end
          object GroupBox22: TGroupBox
            Left = 0
            Top = 0
            Width = 992
            Height = 105
            Align = alTop
            Caption = ' Identidade '
            TabOrder = 1
            object Label86: TLabel
              Left = 31
              Top = 35
              Width = 104
              Height = 16
              Caption = 'Nome do Avalista:'
            end
            object Label87: TLabel
              Left = 75
              Top = 65
              Width = 60
              Height = 16
              Caption = 'CPF/CNPJ:'
            end
            object Label88: TLabel
              Left = 380
              Top = 65
              Width = 56
              Height = 16
              Caption = 'Cadastro:'
            end
            object DBEdit_NM_AVL_1: TDBEdit
              Left = 141
              Top = 32
              Width = 430
              Height = 24
              DataSource = DSpadrao
              TabOrder = 0
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 141
              Top = 62
              DataBinding.DataSource = DSpadrao
              TabOrder = 1
              OnKeyPress = DBEdit_NO_CNP_CPFKeyPress
              Width = 197
            end
            object cxDBDateEdit14: TcxDBDateEdit
              Left = 442
              Top = 62
              DataBinding.DataSource = DSpadrao
              Properties.Alignment.Horz = taCenter
              TabOrder = 2
              Width = 129
            end
          end
        end
        object TabAvalista2: TTabSheet
          Caption = 'Avalista 2'
          ImageIndex = 9
          object GroupBox23: TGroupBox
            Left = 0
            Top = 0
            Width = 992
            Height = 105
            Align = alTop
            Caption = ' Identidade '
            TabOrder = 0
            object Label99: TLabel
              Left = 31
              Top = 35
              Width = 104
              Height = 16
              Caption = 'Nome do Avalista:'
            end
            object Label100: TLabel
              Left = 75
              Top = 65
              Width = 60
              Height = 16
              Caption = 'CPF/CNPJ:'
            end
            object Label101: TLabel
              Left = 380
              Top = 65
              Width = 56
              Height = 16
              Caption = 'Cadastro:'
            end
            object DBEdit52: TDBEdit
              Left = 141
              Top = 32
              Width = 430
              Height = 24
              TabOrder = 0
            end
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 141
              Top = 62
              DataBinding.DataField = 'NO_CNP_CPF'
              DataBinding.DataSource = DSpadrao
              TabOrder = 1
              OnKeyPress = DBEdit_NO_CNP_CPFKeyPress
              Width = 197
            end
            object cxDBDateEdit15: TcxDBDateEdit
              Left = 442
              Top = 62
              DataBinding.DataField = 'DT_CAD'
              DataBinding.DataSource = DSpadrao
              Properties.Alignment.Horz = taCenter
              TabOrder = 2
              Width = 129
            end
          end
          object GroupBox24: TGroupBox
            Left = 0
            Top = 105
            Width = 992
            Height = 256
            Align = alTop
            Caption = 'Endere'#231'o Avalista 2'
            TabOrder = 1
            object Label102: TLabel
              Left = 108
              Top = 29
              Width = 27
              Height = 16
              Caption = 'Cep:'
            end
            object SpeedButton8: TSpeedButton
              Left = 240
              Top = 26
              Width = 23
              Height = 24
              Glyph.Data = {
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
              OnClick = btn_cons_cepClick
            end
            object Label103: TLabel
              Left = 107
              Top = 60
              Width = 28
              Height = 16
              Caption = 'Pa'#237's:'
            end
            object Label104: TLabel
              Left = 77
              Top = 89
              Width = 58
              Height = 16
              Caption = 'Endere'#231'o:'
            end
            object Label105: TLabel
              Left = 588
              Top = 89
              Width = 50
              Height = 16
              Caption = 'N'#250'mero:'
            end
            object Label106: TLabel
              Left = 753
              Top = 89
              Width = 84
              Height = 16
              Caption = 'Complemento:'
            end
            object Label107: TLabel
              Left = 96
              Top = 119
              Width = 39
              Height = 16
              Caption = 'Bairro:'
            end
            object Label108: TLabel
              Left = 91
              Top = 149
              Width = 44
              Height = 16
              Caption = 'Cidade:'
            end
            object Label109: TLabel
              Left = 618
              Top = 149
              Width = 20
              Height = 16
              Caption = 'UF:'
            end
            object Label110: TLabel
              Left = 80
              Top = 179
              Width = 55
              Height = 16
              Caption = 'Telefone:'
            end
            object Label111: TLabel
              Left = 93
              Top = 209
              Width = 45
              Height = 16
              Caption = 'Celular:'
            end
            object DBEdit53: TDBEdit
              Left = 141
              Top = 26
              Width = 93
              Height = 24
              CharCase = ecUpperCase
              DataField = 'AV2NO_CEP'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 141
              Top = 56
              Width = 342
              Height = 24
              DataSource = DSpadrao
              KeyField = 'CD_PAI'
              ListField = 'NM_PAI;CD_PAI'
              ListSource = DS_PAISES
              TabOrder = 1
            end
            object DBEdit54: TDBEdit
              Left = 141
              Top = 86
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'AV2NM_RUA'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit55: TDBEdit
              Left = 641
              Top = 86
              Width = 94
              Height = 24
              DataSource = DSpadrao
              TabOrder = 3
            end
            object DBEdit56: TDBEdit
              Left = 841
              Top = 86
              Width = 94
              Height = 24
              CharCase = ecUpperCase
              DataSource = DSpadrao
              TabOrder = 4
            end
            object DBEdit57: TDBEdit
              Left = 141
              Top = 116
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'AV2NM_BAI'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEdit58: TDBEdit
              Left = 141
              Top = 146
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'AV2NM_CID'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 6
            end
            object DBEdit59: TDBEdit
              Left = 641
              Top = 147
              Width = 54
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'av2uf_cid'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdit60: TDBEdit
              Left = 141
              Top = 176
              Width = 160
              Height = 24
              DataSource = DSpadrao
              TabOrder = 8
            end
            object DBEdit61: TDBEdit
              Left = 141
              Top = 206
              Width = 160
              Height = 24
              DataSource = DSpadrao
              MaxLength = 15
              TabOrder = 9
            end
          end
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 944
    Top = 440
    Bitmap = {
      494C0101070008003C0010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 944
    Top = 392
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSClientes
    Left = 464
    Top = 656
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
    StoredProcName = 'SP_GEN_DB_CLIENTE_ID'
    Left = 684
    Top = 646
  end
  object DSCategoria: TDataSource
    DataSet = DMcadastro.CDSCategoria
    Left = 532
    Top = 655
  end
  object DSCep: TDataSource
    DataSet = DMcadastro.CDSCEP
    Left = 604
    Top = 647
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 944
    Top = 664
  end
  object DS_PAISES: TDataSource
    DataSet = DMcadastro.CDSPaises
    Left = 380
    Top = 653
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://www.receitaws.com.br/v1/cnpj/05399123000160'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 648
    Top = 40
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 648
    Top = 104
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 648
    Top = 168
  end
  object SP_GEN_HISTORICO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = DMcadastro.SQLConnection1
    StoredProcName = 'SP_GEN_DB_HTR_CLI_ID'
    Left = 532
    Top = 294
  end
  object Ds_Htr_tpc: TDataSource
    DataSet = DMcadastro.CDS_Historico_ALT
    Left = 952
    Top = 504
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 456
    object Histricodotipodeconsumidor1: TMenuItem
      Caption = 'Hist'#243'rico das altera'#231#245'es do tipo de consumidor'
      OnClick = Histricodotipodeconsumidor1Click
    end
  end
end
