inherited FormCadEmpresa: TFormCadEmpresa
  Caption = 'Cadastro de Empresa'
  ClientHeight = 723
  ClientWidth = 1100
  ExplicitWidth = 1106
  ExplicitHeight = 752
  PixelsPerInch = 96
  TextHeight = 16
  object Label49: TLabel [0]
    Left = 22
    Top = 487
    Width = 149
    Height = 19
    Caption = 'Vendedor que libera:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited PageControl1: TPageControl
    Width = 1100
    Height = 723
    ExplicitWidth = 1100
    ExplicitHeight = 723
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 1092
      ExplicitHeight = 692
      inherited PanelConsulta: TPanel
        Width = 1092
        ExplicitWidth = 1092
        inherited cbConsulta: TComboBox
          Items.Strings = (
            'C'#243'digo'
            'Raz'#227'o'
            'Ult'#237'mos Registros')
        end
        inherited BtConsultar: TButton
          Left = 984
          ExplicitLeft = 984
        end
        inherited Edconsulta: TMaskEdit
          Width = 737
          OnKeyPress = EdconsultaKeyPress
          ExplicitWidth = 737
        end
      end
      inherited Panel1: TPanel
        Width = 1092
        ExplicitWidth = 1092
        inherited btnFechar: TSpeedButton
          Left = 1031
          ExplicitLeft = 1013
        end
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1092
        Height = 579
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_EMP'
            Title.Caption = 'Nome Empresa'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 252
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FAN'
            Title.Caption = 'Nome Fantasia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 280
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_CNP_CPF'
            Title.Caption = 'CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_INS_EST'
            Title.Caption = 'Inscri'#231#227'o Estadual'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_CEP'
            Title.Caption = 'CEP'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Title.Caption = 'Ultima Altera'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 276
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1092
      ExplicitHeight = 692
      inherited Panel2: TPanel
        Top = 638
        Width = 1092
        TabOrder = 2
        ExplicitTop = 638
        ExplicitWidth = 1092
      end
      object PageControl2: TPageControl
        Left = 11
        Top = 147
        Width = 1070
        Height = 490
        ActivePage = TabDadosCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object TabDadosCadastro: TTabSheet
          Caption = 'Cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          object PanelCEP: TPanel
            Left = 3
            Top = 3
            Width = 918
            Height = 450
            Color = clBtnHighlight
            ParentBackground = False
            TabOrder = 2
            Visible = False
            object Label71: TLabel
              Left = 5
              Top = 3
              Width = 156
              Height = 33
              Caption = 'Consulta CEP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 15519618
              Font.Height = -27
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DBgridCep: TDBGrid
              Left = 3
              Top = 40
              Width = 910
              Height = 405
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = [fsBold]
              OnCellClick = DBgridCepCellClick
              OnDblClick = DBgridCepDblClick
              OnKeyUp = DBgridCepKeyUp
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ID_CEP'
                  Title.Caption = 'ID'
                  Width = 63
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'UF_CID'
                  Title.Caption = 'UF'
                  Width = 27
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'endereco'
                  Title.Caption = 'Endere'#231'o'
                  Width = 260
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'bairro'
                  Title.Caption = 'Bairro'
                  Width = 255
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cidade'
                  Width = 262
                  Visible = True
                end>
            end
          end
          object GroupBox7: TGroupBox
            Left = 1
            Top = 304
            Width = 1058
            Height = 63
            Caption = ' Fone  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label16: TLabel
              Left = 75
              Top = 29
              Width = 55
              Height = 16
              Caption = 'Telefone:'
              FocusControl = DBeditNO_FON
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 293
              Top = 29
              Width = 25
              Height = 16
              Caption = 'Fax:'
              FocusControl = DBeditNO_FAX
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 474
              Top = 29
              Width = 45
              Height = 16
              Caption = 'Celular:'
              FocusControl = DBeditNO_CEL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DBeditNO_FON: TcxDBTextEdit
              Left = 145
              Top = 26
              DataBinding.DataField = 'NO_FON'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 131
            end
            object DBeditNO_FAX: TcxDBTextEdit
              Left = 331
              Top = 26
              DataBinding.DataField = 'NO_FAX'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 131
            end
            object DBeditNO_CEL: TcxDBTextEdit
              Left = 530
              Top = 26
              DataBinding.DataField = 'NO_CEL'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 131
            end
          end
          object GroupBox8: TGroupBox
            Left = -6
            Top = -4
            Width = 1065
            Height = 309
            Caption = ' Endere'#231'o '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label6: TLabel
              Left = 109
              Top = 88
              Width = 27
              Height = 16
              Caption = 'Cep:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 107
              Top = 125
              Width = 28
              Height = 16
              Caption = 'Pa'#237's:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 117
              Top = 163
              Width = 20
              Height = 16
              Caption = 'UF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 93
              Top = 209
              Width = 44
              Height = 16
              Caption = 'Cidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 79
              Top = 239
              Width = 58
              Height = 16
              Caption = 'Endere'#231'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 685
              Top = 235
              Width = 50
              Height = 16
              Caption = 'N'#250'mero:'
              FocusControl = DBeditNO_EDR
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 847
              Top = 235
              Width = 84
              Height = 16
              Caption = 'Complemento:'
              FocusControl = DbEditDS_CPL
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 98
              Top = 272
              Width = 39
              Height = 16
              Caption = 'Bairro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 85
              Top = 52
              Width = 56
              Height = 16
              Caption = 'Inscri'#231#227'o:'
              FocusControl = DBeditNO_INS_EST
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Btn_CEP: TSpeedButton
              Left = 253
              Top = 85
              Width = 30
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
              OnClick = Btn_CEPClick
            end
            object Label20: TLabel
              Left = 658
              Top = 52
              Width = 172
              Height = 16
              Caption = 'Atualizar dados Cliente Sefaz:'
              FocusControl = DBeditNO_INS_EST
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DBeditNO_EDR: TcxDBTextEdit
              Left = 746
              Top = 232
              DataBinding.DataField = 'NO_EDR'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 72
            end
            object DbEditDS_CPL: TcxDBTextEdit
              Left = 936
              Top = 232
              DataBinding.DataField = 'DS_CPL'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 96
            end
            object DBeditNO_INS_EST: TcxDBTextEdit
              Left = 152
              Top = 49
              DataBinding.DataField = 'NO_INS_EST'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = DBeditNO_INS_ESTExit
              Width = 206
            end
            object DbeditUF: TcxDBTextEdit
              Left = 152
              Top = 159
              DataBinding.DataField = 'UF_CID'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 4
              Width = 87
            end
            object DbEditCidade: TcxDBTextEdit
              Left = 152
              Top = 195
              DataBinding.DataField = 'NM_CID'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 5
              Width = 516
            end
            object DbEditEndereco: TcxDBTextEdit
              Left = 152
              Top = 232
              DataBinding.DataField = 'NM_RUA'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 6
              Width = 516
            end
            object DBeditBairro: TcxDBTextEdit
              Left = 152
              Top = 269
              DataBinding.DataField = 'NM_BAI'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 7
              Width = 516
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 154
              Top = 85
              DataBinding.DataField = 'NO_CEP'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 8
              Width = 87
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 152
              Top = 122
              Width = 342
              Height = 24
              Color = 16773077
              DataField = 'CD_PAI'
              DataSource = DSpadrao
              KeyField = 'CD_PAI'
              ListField = 'NM_PAI'
              ListSource = DSPaises
              TabOrder = 2
            end
            object DB_CB_CLI_ATL: TDBComboBox
              Left = 841
              Top = 49
              Width = 104
              Height = 24
              DataField = 'SN_CLI_ATL'
              DataSource = DSpadrao
              Items.Strings = (
                'SIM'
                'N'#195'O')
              TabOrder = 9
            end
          end
          object GroupBox2: TGroupBox
            Left = 3
            Top = 369
            Width = 1056
            Height = 87
            Caption = ' Contato '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object Label58: TLabel
              Left = 21
              Top = 19
              Width = 107
              Height = 16
              Caption = 'Nome do Contado:'
              FocusControl = DbEditNM_CTT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label59: TLabel
              Left = 92
              Top = 55
              Width = 36
              Height = 16
              Caption = 'Email:'
              FocusControl = DbeditE_MAIL_CTT
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DbEditNM_CTT: TcxDBTextEdit
              Left = 143
              Top = 16
              DataBinding.DataField = 'NM_CTT'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 516
            end
            object DbeditE_MAIL_CTT: TcxDBTextEdit
              Left = 143
              Top = 52
              DataBinding.DataField = 'E_MAIL_CTT'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 516
            end
          end
        end
        object TabContador: TTabSheet
          Caption = 'Contador'
          ImageIndex = 5
          object GroupBox5: TGroupBox
            Left = 3
            Top = 0
            Width = 1056
            Height = 137
            Caption = 'Contador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label51: TLabel
              Left = 34
              Top = 26
              Width = 94
              Height = 16
              Caption = 'Nome Contador:'
            end
            object Label52: TLabel
              Left = 45
              Top = 65
              Width = 83
              Height = 16
              Caption = 'CPF Contador:'
            end
            object Label53: TLabel
              Left = 788
              Top = 65
              Width = 33
              Height = 16
              Caption = 'CNPJ:'
            end
            object Label54: TLabel
              Left = 92
              Top = 104
              Width = 36
              Height = 16
              Caption = 'Email:'
            end
            object Label55: TLabel
              Left = 719
              Top = 26
              Width = 102
              Height = 16
              Caption = 'Inscri'#231#227'o no CRC:'
            end
            object DbEditNomeContador: TcxDBTextEdit
              Left = 143
              Top = 23
              DataBinding.DataField = 'NM_CTD'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 388
            end
            object DbEditCPFContador: TcxDBTextEdit
              Left = 143
              Top = 62
              DataBinding.DataField = 'NO_CPF_CTD'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 133
            end
            object DbeditEmailContador: TcxDBTextEdit
              Left = 143
              Top = 101
              DataBinding.DataField = 'E_MAIL_CTD'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 389
            end
            object DbeditCrcContador: TcxDBTextEdit
              Left = 832
              Top = 23
              DataBinding.DataField = 'NO_INS_CRC'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 206
            end
            object DbeditCNPJContador: TcxDBTextEdit
              Left = 832
              Top = 62
              DataBinding.DataField = 'NO_CNP_CTD'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Properties.CharCase = ecUpperCase
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 206
            end
          end
          object GroupBox6: TGroupBox
            Left = 3
            Top = 141
            Width = 1056
            Height = 314
            Caption = 'Endere'#231'o Contador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label60: TLabel
              Left = 101
              Top = 33
              Width = 27
              Height = 16
              Caption = 'Cep:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label61: TLabel
              Left = 100
              Top = 66
              Width = 28
              Height = 16
              Caption = 'Pa'#237's:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label62: TLabel
              Left = 108
              Top = 101
              Width = 20
              Height = 16
              Caption = 'UF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label63: TLabel
              Left = 84
              Top = 137
              Width = 44
              Height = 16
              Caption = 'Cidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label64: TLabel
              Left = 70
              Top = 172
              Width = 58
              Height = 16
              Caption = 'Endere'#231'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label65: TLabel
              Left = 78
              Top = 244
              Width = 50
              Height = 16
              Caption = 'N'#250'mero:'
              FocusControl = DbEditNO_EDR_CTD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label66: TLabel
              Left = 73
              Top = 280
              Width = 55
              Height = 16
              Caption = 'Telefone:'
              FocusControl = DbeditNO_FON_CTD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label67: TLabel
              Left = 280
              Top = 244
              Width = 84
              Height = 16
              Caption = 'Complemento:'
              FocusControl = DbeditDS_CPL_CTD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label68: TLabel
              Left = 565
              Top = 280
              Width = 45
              Height = 16
              Caption = 'Celular:'
              FocusControl = DbeditNO_CEL_CTD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label69: TLabel
              Left = 89
              Top = 207
              Width = 39
              Height = 16
              Caption = 'Bairro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label70: TLabel
              Left = 339
              Top = 280
              Width = 25
              Height = 16
              Caption = 'Fax:'
              FocusControl = DbeditDS_CPL_CTD
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Btn_CEP_Contador: TSpeedButton
              Left = 242
              Top = 30
              Width = 30
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
              OnClick = Btn_CEPClick
            end
            object DbeditNO_FON_CTD: TcxDBTextEdit
              Left = 143
              Top = 277
              DataBinding.DataField = 'NO_FON_CTD'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              Width = 154
            end
            object DbEditNO_EDR_CTD: TcxDBTextEdit
              Left = 143
              Top = 241
              DataBinding.DataField = 'NO_EDR_CTD'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 110
            end
            object DbeditDS_CPL_CTD: TcxDBTextEdit
              Left = 375
              Top = 241
              DataBinding.DataField = 'DS_CPL_CTD'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 154
            end
            object DbeditNO_FAX_CTD: TcxDBTextEdit
              Left = 375
              Top = 277
              DataBinding.DataField = 'NO_FAX_CTD'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 154
            end
            object DbeditNO_CEL_CTD: TcxDBTextEdit
              Left = 625
              Top = 277
              DataBinding.DataField = 'NO_CEL_CTD'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              Width = 154
            end
            object DbeditUFCon: TcxDBTextEdit
              Left = 143
              Top = 98
              DataBinding.DataField = 'UF_CID_CONT'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 5
              Width = 93
            end
            object DbeditCidadeCon: TcxDBTextEdit
              Left = 143
              Top = 134
              DataBinding.DataField = 'NM_CID_CON'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 6
              Width = 636
            end
            object DbeditEnderecoCon: TcxDBTextEdit
              Left = 143
              Top = 169
              DataBinding.DataField = 'NM_RUA_CON'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 7
              Width = 636
            end
            object DbeditBairroCon: TcxDBTextEdit
              Left = 143
              Top = 204
              DataBinding.DataField = 'NM_BAI_CON'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 8
              Width = 636
            end
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 143
              Top = 30
              DataBinding.DataField = 'NO_CEP_CON'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Properties.ReadOnly = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clWindowFrame
              StyleDisabled.Color = 16773077
              StyleDisabled.TextColor = clDefault
              TabOrder = 9
              Width = 93
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 143
              Top = 64
              Width = 342
              Height = 24
              Color = 16773077
              DataField = 'CD_PAI_CTD'
              DataSource = DSpadrao
              KeyField = 'CD_PAI'
              ListField = 'NM_PAI'
              ListSource = DSPaises
              TabOrder = 10
            end
          end
        end
        object TabPisCofins: TTabSheet
          Caption = 'Pis/Cofins'
          ImageIndex = 5
          object Label28: TLabel
            Left = 15
            Top = 24
            Width = 150
            Height = 16
            Caption = '% PIS para a empresa:'
            FocusControl = DbEditAlPis
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 15
            Top = 88
            Width = 176
            Height = 16
            Caption = '% Confins para a empresa:'
            FocusControl = DbeditAL_COF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 15
            Top = 152
            Width = 191
            Height = 16
            Caption = 'Valor do Aluguel da empresa:'
            FocusControl = dbeditVR_ALG
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 15
            Top = 216
            Width = 154
            Height = 16
            Caption = 'Fornecedor do Aluguel: '
            FocusControl = DbeditCD_FCN
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 543
            Top = 216
            Width = 65
            Height = 16
            Caption = 'CNPJ/CPF:'
            FocusControl = cxDBTextEdit8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbEditAlPis: TcxDBTextEdit
            Left = 15
            Top = 48
            DataBinding.DataField = 'AL_PIS'
            DataBinding.DataSource = DSpadrao
            TabOrder = 0
            Width = 106
          end
          object DbeditAL_COF: TcxDBTextEdit
            Left = 15
            Top = 110
            DataBinding.DataField = 'AL_COF'
            DataBinding.DataSource = DSpadrao
            TabOrder = 1
            Width = 106
          end
          object dbeditVR_ALG: TcxDBTextEdit
            Left = 15
            Top = 176
            DataBinding.DataField = 'VR_ALG'
            DataBinding.DataSource = DSpadrao
            TabOrder = 2
            Width = 106
          end
          object DbeditCD_FCN: TcxDBTextEdit
            Left = 15
            Top = 240
            DataBinding.DataField = 'CD_FCN'
            DataBinding.DataSource = DSpadrao
            TabOrder = 3
            Width = 106
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 144
            Top = 240
            ParentShowHint = False
            Properties.ReadOnly = True
            ShowHint = True
            Style.Color = clInfoBk
            TabOrder = 4
            Width = 377
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 543
            Top = 240
            ParentShowHint = False
            Properties.ReadOnly = True
            ShowHint = False
            Style.Color = clInfoBk
            TabOrder = 5
            Width = 194
          end
        end
        object TabSped: TTabSheet
          Caption = 'Sped'
          ImageIndex = 6
          object Label32: TLabel
            Left = 20
            Top = 32
            Width = 164
            Height = 16
            Caption = 'Natureza da pessoa jur'#237'dica:'
          end
          object Label33: TLabel
            Left = 20
            Top = 93
            Width = 145
            Height = 16
            Caption = 'Atividade preponderante:'
          end
          object Label73: TLabel
            Left = 20
            Top = 224
            Width = 177
            Height = 16
            Caption = 'Indicador de situa'#231#227'o especial:'
          end
          object Label74: TLabel
            Left = 20
            Top = 302
            Width = 216
            Height = 16
            Caption = 'Vers'#227'o do leiaute do Sped Pis/Cofins:'
          end
          object Label75: TLabel
            Left = 20
            Top = 374
            Width = 193
            Height = 16
            Caption = 'C'#243'digo Base de Cr'#233'dito Pis/Cofins'
          end
          object Label80: TLabel
            Left = 20
            Top = 159
            Width = 252
            Height = 16
            Caption = 'Escritura'#231#227'o das Opera'#231#245'es por Nf-e e ECF:'
          end
          object CBNatureza: TComboBox
            Left = 20
            Top = 57
            Width = 909
            Height = 24
            Style = csDropDownList
            TabOrder = 0
            OnSelect = CBNaturezaSelect
            Items.Strings = (
              
                '00 - Pessoa jur'#237'dica em geral (n'#227'o participante de SCP como s'#243'ci' +
                'a ostensiva)'
              
                '01 - Sociedade cooperativa (n'#227'o participante de SCP como s'#243'cia o' +
                'stensiva)'
              
                '02 - Entidade sujeita no PIS/Pasep exclusivamente com base na Fo' +
                'lha de Sal'#225'rios'
              
                '03 - Pessoa jur'#237'dica em geral participante de SCP como s'#243'cia ost' +
                'ensiva'
              
                '04 - Sociedade cooperativa participante de SCP como s'#243'cia ostens' +
                'iva'
              '05 - Sociedade em Conta de Participa'#231#227'o - SCP ')
          end
          object cbAtividade: TComboBox
            Left = 20
            Top = 118
            Width = 909
            Height = 24
            Style = csDropDownList
            TabOrder = 1
            OnSelect = cbAtividadeSelect
            Items.Strings = (
              '0 -  Industrial ou equiparado a industrial'
              '1 -  Prestador de servi'#231'os'
              '2 -  Atividade de com'#233'rcio'
              '3 -  Atividade de financeira'
              '4 -  Atividade Imobili'#225'ria'
              '9 -  Outros')
          end
          object cbSituacao: TComboBox
            Left = 20
            Top = 249
            Width = 909
            Height = 24
            Style = csDropDownList
            TabOrder = 3
            OnSelect = cbSituacaoSelect
            Items.Strings = (
              '0 - Abertura'
              '1 - Cis'#227'o'
              '2 - Fus'#227'o'
              '3 - Incorpora'#231#227'o'
              '4 - Encerramento')
          end
          object dbEditCD_VER_PCF: TcxDBTextEdit
            Left = 20
            Top = 327
            DataBinding.DataField = 'CD_VER_PCF'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 69
          end
          object cbCreditoPis: TComboBox
            Left = 20
            Top = 399
            Width = 909
            Height = 24
            Style = csDropDownList
            DropDownCount = 100
            TabOrder = 5
            OnSelect = cbCreditoPisSelect
            Items.Strings = (
              '01 - Aquisi'#231#227'o de bens para revenda'
              '02 - Aquisi'#231#227'o de bens utilizados como insumo'
              '03 - Aquisi'#231#227'o de servi'#231'os utilizados como insumo'
              '04 - Energia el'#233'trica/t'#233'rmica, inclusive a vapor'
              '05 - Alugu'#233'is de pr'#233'dios'
              '06 - Alugu'#233'is de m'#225'quinas e equipamentos'
              '07 - Armazenagem de mercadoria e frete na opera'#231#227'o de venda'
              '08 - Contrapresta'#231#245'es de arrendamento mercantil'
              
                '09 - (Credito S/Encargos de deprecia'#231#227'o)M'#225'quinas/equipamentos/ou' +
                'tros bens incorporados ao ativo imobilizado'
              
                '10 - (Credito c/base Vr.aquisi'#231#227'o)M'#225'quinas/equipamentos/outros b' +
                'ens incorporados ao ativo imobilizado'
              
                '11 - Amortiza'#231#227'o e Deprecia'#231#227'o de edifica'#231#245'es e benfeitorias em ' +
                'im'#243'veis'
              '12 - Devolu'#231#227'o de Vendas Sujeitas '#224' Incid'#234'ncia N'#227'o-Cumulativa'
              '13 - Outras Opera'#231#245'es com Direito a Credito'
              '14 - Atividade de Transporte de Cargas - Subcontrata'#231#227'o'
              '15 - Atv.Imobili'#225'ria-Custo Incorrido de Unidade Imobili'#225'ria'
              '16 - Atv.Imobil'#225'ria-Custo or'#231'ado de unidade n'#227'o conclu'#237'da'
              
                '17 - Atv.de Presta'#231#227'o de Servi'#231'os de Limpeza, Conserva'#231#227'o e Manu' +
                'ten'#231#227'o - vale-transporte, vale-refei'#231#227'o ou vale-alimenta'#231#227'o, far' +
                'damento ou uniforme'
              '18 - Estoque de abertura de bens')
          end
          object CBEscituracao: TComboBox
            Left = 20
            Top = 184
            Width = 909
            Height = 24
            Style = csDropDownList
            TabOrder = 2
            OnSelect = CBEscituracaoSelect
            Items.Strings = (
              
                '1 - Apura'#231#227'o com base nos registros de consolida'#231#227'o das opera'#231#245'e' +
                's por Nf-e(C180 e C190) e por ECF(C490)'
              
                '2 - Apura'#231#227'o com base nos registros individualizado de Nf-e(C100' +
                ' e C170) e por ECF(C400)Indicador de situa'#231#227'o especial ')
          end
        end
        object TabECF: TTabSheet
          Caption = 'ECF'
          ImageIndex = 7
          object Label76: TLabel
            Left = 3
            Top = 24
            Width = 177
            Height = 16
            Caption = 'C'#243'digo modelo do Docto fiscal:'
          end
          object Label77: TLabel
            Left = 3
            Top = 96
            Width = 142
            Height = 16
            Caption = 'Modelo do Equipamento:'
          end
          object Label78: TLabel
            Left = 3
            Top = 160
            Width = 146
            Height = 16
            Caption = 'N'#250'mero de S'#233'rie do ECF:'
          end
          object Label79: TLabel
            Left = 3
            Top = 224
            Width = 147
            Height = 16
            Caption = 'N'#250'mero do Caixa no ECF:'
          end
          object dbeditCD_MOD_ECF: TcxDBTextEdit
            Left = 3
            Top = 121
            DataBinding.DataField = 'CD_MOD_ECF'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 223
          end
          object dbeditNO_SER_ECF: TcxDBTextEdit
            Left = 3
            Top = 185
            DataBinding.DataField = 'NO_SER_ECF'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 223
          end
          object DbeditNO_CXA_ECF: TcxDBTextEdit
            Left = 3
            Top = 249
            DataBinding.DataField = 'NO_CXA_ECF'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 63
          end
          object CbCD_MOD_FIS: TDBComboBox
            Left = 3
            Top = 49
            Width = 86
            Height = 24
            Style = csDropDownList
            DataField = 'CD_MOD_FIS'
            DataSource = DSpadrao
            Items.Strings = (
              '02'
              'D2')
            TabOrder = 0
          end
        end
        object TabFatEstoque: TTabSheet
          Caption = 'Faturamento/Estoque'
          ImageIndex = 3
          object GroupBox3: TGroupBox
            Left = 0
            Top = 3
            Width = 1059
            Height = 54
            TabOrder = 0
            object Label34: TLabel
              Left = 42
              Top = 18
              Width = 107
              Height = 16
              Caption = #218'ltima Nota Fiscal:'
              FocusControl = DBeditNO_NTF
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 450
              Top = 18
              Width = 116
              Height = 16
              Caption = 'S'#233'rie da Nota fiscal:'
              FocusControl = DbeditSerieNFE
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DBeditNO_NTF: TcxDBTextEdit
              Left = 176
              Top = 13
              DataBinding.DataField = 'NO_NTF'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 150
            end
            object DbeditSerieNFE: TcxDBTextEdit
              Left = 591
              Top = 13
              DataBinding.DataField = 'DS_SER_NTF'
              DataBinding.DataSource = DSpadrao
              Enabled = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 150
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 63
            Width = 1059
            Height = 88
            TabOrder = 1
            object Label38: TLabel
              Left = 33
              Top = 15
              Width = 116
              Height = 16
              Caption = 'Data estoque inicial:'
              FocusControl = DbeditDtEstoqueInicial
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 19
              Top = 49
              Width = 130
              Height = 16
              Caption = 'Data '#250'ltimo invent'#225'rio:'
              FocusControl = DbeditUltimoInventario
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DbeditDtEstoqueInicial: TcxDBTextEdit
              Left = 176
              Top = 12
              DataBinding.DataField = 'DT_SLD_INI'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 150
            end
            object DbeditUltimoInventario: TcxDBTextEdit
              Left = 176
              Top = 46
              DataBinding.DataField = 'DT_ULT_INV'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 150
            end
          end
        end
        object TabMarkup: TTabSheet
          Caption = 'Markup'
          ImageIndex = 4
          object Label41: TLabel
            Left = 73
            Top = 81
            Width = 103
            Height = 16
            Caption = 'Al'#237'quota de ICMS:'
            FocusControl = DbeditAL_ICM_MKP
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 140
            Top = 124
            Width = 36
            Height = 16
            Caption = '%PIS:'
            FocusControl = DbeditAL_PIS_MKC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 107
            Top = 167
            Width = 69
            Height = 16
            Caption = '%CONFINS:'
            FocusControl = DbeditAL_COF_MKC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 26
            Top = 210
            Width = 150
            Height = 16
            Caption = 'Despesas Administrativas:'
            FocusControl = DbeditPC_DPA_MKP
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 48
            Top = 253
            Width = 128
            Height = 16
            Caption = 'Despesas Financeiras:'
            FocusControl = dbeditPC_DPF_MKP
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 51
            Top = 296
            Width = 125
            Height = 16
            Caption = 'Despesas de entrega:'
            FocusControl = dbeditPC_DPE_MKP
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 59
            Top = 339
            Width = 117
            Height = 16
            Caption = 'Comiss'#227'o vendedor:'
            FocusControl = dbeditPC_CMS_MKP
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 74
            Top = 382
            Width = 102
            Height = 16
            Caption = 'Margem de lucro:'
            FocusControl = dbeditPC_MLC_MKP
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 117
            Top = 39
            Width = 59
            Height = 16
            Caption = 'MARKUP:'
            FocusControl = cxDBTextEdit48
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DbeditAL_ICM_MKP: TcxDBTextEdit
            Left = 183
            Top = 78
            DataBinding.DataField = 'AL_ICM_MKP'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 70
          end
          object DbeditAL_PIS_MKC: TcxDBTextEdit
            Left = 183
            Top = 121
            DataBinding.DataField = 'AL_PIS_MKC'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 70
          end
          object DbeditAL_COF_MKC: TcxDBTextEdit
            Left = 183
            Top = 164
            DataBinding.DataField = 'AL_COF_MKC'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 70
          end
          object DbeditPC_DPA_MKP: TcxDBTextEdit
            Left = 183
            Top = 207
            DataBinding.DataField = 'PC_DPA_MKP'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 70
          end
          object dbeditPC_DPF_MKP: TcxDBTextEdit
            Left = 183
            Top = 250
            DataBinding.DataField = 'PC_DPF_MKP'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 4
            Width = 70
          end
          object dbeditPC_DPE_MKP: TcxDBTextEdit
            Left = 183
            Top = 293
            DataBinding.DataField = 'PC_DPE_MKP'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 5
            Width = 70
          end
          object dbeditPC_CMS_MKP: TcxDBTextEdit
            Left = 183
            Top = 336
            DataBinding.DataField = 'PC_CMS_MKP'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 70
          end
          object dbeditPC_MLC_MKP: TcxDBTextEdit
            Left = 183
            Top = 379
            DataBinding.DataField = 'PC_MLC_MKP'
            DataBinding.DataSource = DSpadrao
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 7
            Width = 70
          end
          object cxDBTextEdit48: TcxDBTextEdit
            Left = 183
            Top = 35
            DataBinding.DataField = 'NM_FAN'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 8
            Width = 69
          end
        end
        object tabPrmVenda: TTabSheet
          Caption = 'Par'#226'metros venda'
          ImageIndex = 1
          OnShow = tabPrmVendaShow
          object GroupBox9: TGroupBox
            Left = 3
            Top = 3
            Width = 746
            Height = 54
            TabOrder = 0
            object Label19: TLabel
              Left = 16
              Top = 18
              Width = 112
              Height = 16
              Caption = 'Liberar no m'#225'ximo:'
              FocusControl = DbeditVR_PED_MAX
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DbeditVR_PED_MAX: TcxDBTextEdit
              Left = 143
              Top = 15
              DataBinding.DataField = 'VR_PED_MAX'
              DataBinding.DataSource = DSpadrao
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 114
            end
          end
          object GroupBox10: TGroupBox
            Left = 3
            Top = 112
            Width = 746
            Height = 305
            TabOrder = 2
            object DBGrid2: TDBGrid
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 736
              Height = 282
              Margins.Top = 0
              Align = alClient
              DataSource = DsVenEmp
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'ID_COD_VEN'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NM_VEN'
                  Title.Caption = 'Nome Vendedor'
                  Width = 405
                  Visible = True
                end>
            end
          end
          object GroupBox11: TGroupBox
            Left = 3
            Top = 63
            Width = 746
            Height = 43
            TabOrder = 1
            object Label8: TLabel
              Left = 9
              Top = 12
              Width = 121
              Height = 16
              Caption = 'Vendedor que libera:'
              FocusControl = DbeditVR_PED_MAX
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object EdConVen: TEdit
              Left = 143
              Top = 9
              Width = 56
              Height = 24
              NumbersOnly = True
              TabOrder = 0
              OnExit = EdConVenExit
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 211
              Top = 9
              DataBinding.DataField = 'NM_VEN'
              DataBinding.DataSource = DSVENDEDOR
              Enabled = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              StyleDisabled.Color = 16773077
              TabOrder = 1
              Width = 352
            end
            object Btn_Add_Ven: TcxButton
              Left = 580
              Top = 9
              Width = 42
              Height = 24
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000070F07162857267F3F8B3CCA4DA849F54DA849F53F8B
                3CCA2856267E070E061500000000000000000000000000000000000000000000
                0000000000001C3E1B5A4DA749F450AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
                4CFF50AF4CFF4CA748F31B3C1A57000000000000000000000000000000000000
                00001B3A195550AE4CFE50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
                4CFF50AF4CFF50AF4CFF50AE4CFE1A381852000000000000000000000000070E
                06154CA548F150AF4CFF50AF4CFF50AF4CFF50AF4CFF8ACA88FF8ACA88FF50AF
                4CFF50AF4CFF50AF4CFF50AF4CFF4BA447EF060D061300000000000000002959
                278250AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFFFFFFFFFFFFFFFFFF50AF
                4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF2857267F0000000000000000428F
                3ED150AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFFFFFFFFFFFFFFFFFF50AF
                4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF418D3DCE00000000000000004CA7
                48F350AF4CFF50AF4CFF8ACA88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF8ACA88FF50AF4CFF50AF4CFF4CA648F200000000000000004CA7
                48F350AF4CFF50AF4CFF8ACA88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF8ACA88FF50AF4CFF50AF4CFF4CA648F20000000000000000428F
                3ED150AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFFFFFFFFFFFFFFFFFF50AF
                4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF418D3DCE00000000000000002959
                278250AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFFFFFFFFFFFFFFFFFF50AF
                4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF2857267F0000000000000000070E
                06154CA548F150AF4CFF50AF4CFF50AF4CFF50AF4CFF8ACA88FF8ACA88FF50AF
                4CFF50AF4CFF50AF4CFF50AF4CFF4BA447EF060D061300000000000000000000
                00001B3A195550AE4CFE50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
                4CFF50AF4CFF50AF4CFF50AE4CFE1A3818520000000000000000000000000000
                0000000000001C3E1B5A4DA749F450AF4CFF50AF4CFF50AF4CFF50AF4CFF50AF
                4CFF50AF4CFF4CA748F31B3C1A57000000000000000000000000000000000000
                00000000000000000000070F07162857267F3F8B3CCA49A045E949A045E93F8B
                3CCA2856267E070E061500000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              TabOrder = 2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = Btn_Add_VenClick
            end
            object Btn_rem_ven: TcxButton
              Left = 629
              Top = 9
              Width = 42
              Height = 24
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000050615161B217A7F2B35C1CA3440EAF53440EAF52B35
                C1CA1B21797E0406141500000000000000000000000000000000000000000000
                0000000000001318565A3440E9F43643F4FF3643F4FF3643F4FF3643F4FF3643
                F4FF3643F4FF3340E9F312175357000000000000000000000000000000000000
                0000121651553643F3FE3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
                F4FF3643F4FF3643F4FF3643F3FE11164E520000000000000000000000000406
                1415333FE7F13643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
                F4FF3643F4FF3643F4FF3643F4FF333FE5EF0405121300000000000000001C22
                7C823643F4FF3643F4FF3643F4FF6B74F7FF8D94F9FF3643F4FF3643F4FF8D94
                F9FF6A74F7FF3643F4FF3643F4FF3643F4FF1B217A7F00000000000000002C37
                C8D13643F4FF3643F4FF3643F4FF8B93F9FFFEFEFFFF8F96F9FF8F96F9FFFEFE
                FFFF8B93F9FF3643F4FF3643F4FF3643F4FF2C36C5CE00000000000000003340
                E9F33643F4FF3643F4FF3643F4FF3643F4FF979EF9FFFEFEFFFFFEFEFFFF979E
                F9FF3643F4FF3643F4FF3643F4FF3643F4FF3340E8F200000000000000003340
                E9F33643F4FF3643F4FF3643F4FF3643F4FF848CF8FFFEFEFFFFFEFEFFFF848C
                F8FF3643F4FF3643F4FF3643F4FF3643F4FF3340E8F200000000000000002C37
                C8D13643F4FF3643F4FF3643F4FF8B93F9FFFEFEFFFF8F96F9FF8F96F9FFFEFE
                FFFF8B93F9FF3643F4FF3643F4FF3643F4FF2C36C5CE00000000000000001C22
                7C823643F4FF3643F4FF3643F4FF6B74F7FF8D94F9FF3643F4FF3643F4FF8D94
                F9FF6A74F7FF3643F4FF3643F4FF3643F4FF1B217A7F00000000000000000406
                1415333FE7F13643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
                F4FF3643F4FF3643F4FF3643F4FF333FE5EF0405121300000000000000000000
                0000121651553643F3FE3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
                F4FF3643F4FF3643F4FF3643F3FE11164E520000000000000000000000000000
                0000000000001318565A3440E9F43643F4FF3643F4FF3643F4FF3643F4FF3643
                F4FF3643F4FF3340E9F312175357000000000000000000000000000000000000
                00000000000000000000050615161B217A7F2B35C1CA313DDFE9313DDFE92B35
                C1CA1B21797E0406141500000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              TabOrder = 3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = Btn_rem_venClick
            end
          end
        end
      end
      object GroupBox1: TGroupBox
        Left = 11
        Top = 0
        Width = 1066
        Height = 145
        TabOrder = 0
        object Label1: TLabel
          Left = 43
          Top = 49
          Width = 92
          Height = 16
          Caption = 'Nome Empresa:'
          FocusControl = DBeditNM_EMP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 772
          Top = 49
          Width = 56
          Height = 16
          Caption = 'Cadastro:'
          FocusControl = DBeditDT_CAD
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 43
          Top = 82
          Width = 90
          Height = 16
          Caption = 'Nome Fantasia:'
          FocusControl = DBeditNM_FAN
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 795
          Top = 82
          Width = 33
          Height = 16
          Caption = 'CNPJ:'
          FocusControl = DBeditNO_CNP_CPF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 27
          Top = 113
          Width = 108
          Height = 16
          Caption = 'Regime Tribut'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TLabel
          Left = 64
          Top = 18
          Width = 71
          Height = 16
          Caption = 'ID Empresa:'
          FocusControl = DBeditNM_EMP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 713
          Top = 113
          Width = 115
          Height = 16
          Caption = 'Digita Cod. Produto:'
          FocusControl = DBeditNO_CNP_CPF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBeditNM_EMP: TcxDBTextEdit
          Left = 150
          Top = 46
          DataBinding.DataField = 'NM_EMP'
          DataBinding.DataSource = DSpadrao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 603
        end
        object DBeditDT_CAD: TcxDBDateEdit
          Left = 839
          Top = 46
          DataBinding.DataField = 'DT_CAD'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Properties.ShowTime = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 114
        end
        object DBeditNM_FAN: TcxDBTextEdit
          Left = 150
          Top = 78
          DataBinding.DataField = 'NM_FAN'
          DataBinding.DataSource = DSpadrao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 603
        end
        object DBeditNO_CNP_CPF: TcxDBTextEdit
          Left = 839
          Top = 78
          DataBinding.DataField = 'NO_CNP_CPF'
          DataBinding.DataSource = DSpadrao
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 206
        end
        object DbIDempresa: TcxDBTextEdit
          Left = 150
          Top = 15
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 60
        end
        object CBRegimeTributario: TComboBox
          Left = 150
          Top = 110
          Width = 553
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Items.Strings = (
            '1 - Simples Nacional'
            '2 - Simples Nacional - Execesso de Sublimite de Receita Bruta'
            '3 - Regime Normal')
        end
        object DBComboBox1: TDBComboBox
          Left = 839
          Top = 110
          Width = 74
          Height = 24
          DataField = 'SN_DIG_PDT'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 6
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 848
    Top = 40
  end
  inherited ActionList1: TActionList
    Left = 800
    Top = 360
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSEmpresa
    Left = 408
    Top = 32
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
    StoredProcName = 'SP_GEN_DB_EMPRESA_ID'
    Left = 940
    Top = 598
  end
  object ACBrCEP1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsCorreios
    ChaveAcesso = '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.'
    PesquisarIBGE = True
    OnBuscaEfetuada = ACBrCEP1BuscaEfetuada
    Left = 1012
    Top = 520
  end
  object CDSCEPMult: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 864
    Top = 360
    object CDSCEPMultID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object CDSCEPMultUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 45
    end
    object CDSCEPMultendereco: TStringField
      FieldName = 'endereco'
      Size = 45
    end
    object CDSCEPMultbairro: TStringField
      FieldName = 'bairro'
      Size = 45
    end
    object CDSCEPMultcidade: TStringField
      FieldName = 'cidade'
      Size = 45
    end
  end
  object ACBrValidador1: TACBrValidador
    TipoDocto = docCNPJ
    IgnorarChar = './-'
    Left = 944
    Top = 360
  end
  object ACBrCEP2: TACBrCEP
    ProxyPort = '8080'
    WebService = wsBuscarCep
    PesquisarIBGE = True
    Left = 935
    Top = 529
  end
  object DScontador: TDataSource
    DataSet = DMcadastro.CDSCEP
    Left = 480
    Top = 32
  end
  object DsVenEmp: TDataSource
    DataSet = DMcadastro.CDSVenEmp
    Left = 672
    Top = 32
  end
  object SP_GEN_VEN: TSQLStoredProc
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
    StoredProcName = 'SP_GEN_DB_VEN_EMP_ID'
    Left = 1028
    Top = 598
  end
  object DSVENDEDOR: TDataSource
    DataSet = DMcadastro.CDSVendedor
    Left = 600
    Top = 32
  end
  object FR_Empresa_Laser: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43040.667499513890000000
    ReportOptions.Name = 'RelCadEmpresa'
    ReportOptions.LastChange = 43052.593384849540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_Empresa_LaserGetValue
    OnPreview = FR_Empresa_LaserPreview
    Left = 204
    Top = 675
    Datasets = <
      item
        DataSet = frxDBDataset_VEN_EMPRESA
        DataSetName = 'frxDBDataset_VEN_EMPRESA'
      end
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end>
    Variables = <
      item
        Name = ' variaveis'
        Value = Null
      end
      item
        Name = 'regimeTributario'
        Value = Null
      end
      item
        Name = 'rUsuario'
        Value = Null
      end
      item
        Name = 'NaturezaPessoaJuridica'
        Value = ''
      end
      item
        Name = 'AtividadePreponderante'
        Value = ''
      end
      item
        Name = 'EscrituracaoNfeECF'
        Value = ''
      end
      item
        Name = 'IndicadorSituacaoEspecial'
        Value = ''
      end
      item
        Name = 'CodBaseCreditoPisCofins'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 5
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 48.472480000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'COURIER NEW'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PARANA FERRAGENS LTDA (MATRIZ)')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 599.827150000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          Left = 657.638220000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Time]')
        end
        object Page: TfrxMemoView
          Left = 669.378387000000000000
          Top = 3.779527560000009000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Top = 22.677180000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Evolucao Sistemas Ltda - Versao 1.0.0.1')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 45.354360000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Align = baCenter
          Left = 236.031648500000000000
          Top = 3.779530000000001000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'ARIAL'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'RELATORIOS DE EMPRESAS DO GRUPO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 48.472480000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 975.118740000000000000
        Width = 740.409927000000000000
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000022000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Evolu'#231#227'o Sistemas')
        end
        object rUsuario: TfrxMemoView
          Left = 480.000310000000000000
          Top = 3.779529999999909000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[rUsuario]')
        end
        object Line11: TfrxLineView
          Width = 737.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 680.315400000000000000
        Top = 128.504020000000000000
        Width = 740.409927000000000000
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Left = 94.488188980000000000
          Top = 27.779525119999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."ID"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 27.779525119999990000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_EMP: TfrxMemoView
          Left = 94.488188980000000000
          Top = 46.677162909999990000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_EMP'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_EMP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 46.677162909999990000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_FAN: TfrxMemoView
          Left = 94.488188980000000000
          Top = 65.574800710000010000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_FAN'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_FAN"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 65.574800710000010000
          Width = 83.149606299212600000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Nome Fantasia:')
          ParentFont = False
          WordWrap = False
        end
        object Line1: TfrxLineView
          Top = 201.740260000000000000
          Width = 737.007874015748000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1NM_RUA: TfrxMemoView
          Left = 94.488188976378000000
          Top = 103.370076300000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_RUA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_RUA"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_CID: TfrxMemoView
          Left = 94.488188976378000000
          Top = 141.165351890000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CID'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_CID"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1UF_CID: TfrxMemoView
          Left = 469.354670000000000000
          Top = 141.165351890000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."UF_CID"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_CEP: TfrxMemoView
          Left = 544.370440000000000000
          Top = 141.165351890000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'NO_CEP'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CEP"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 103.370076300000000000
          Width = 83.149606299212600000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 122.267714090000000000
          Width = 83.149606299212600000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
          WordWrap = False
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 141.165351890000000000
          Width = 83.149606299212600000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 514.016080000000000000
          Top = 141.165351890000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
          WordWrap = False
        end
        object Memo11: TfrxMemoView
          Left = 336.377952760000000000
          Top = 141.165351890000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_CNP_CPF: TfrxMemoView
          Left = 94.488188976378000000
          Top = 84.472438500000010000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'NO_CNP_CPF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CNP_CPF"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_INS_EST: TfrxMemoView
          Left = 472.441250000000000000
          Top = 84.472438500000010000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'NO_INS_EST'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_INS_EST"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_EDR: TfrxMemoView
          Left = 471.779840000000000000
          Top = 103.370076300000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_EDR"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1DS_CPL: TfrxMemoView
          Left = 624.520100000000000000
          Top = 103.370076300000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."DS_CPL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 332.937230000000000000
          Top = 103.370076300000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Numero:')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Left = 546.590910000000000000
          Top = 103.370076300000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Complemento:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_BAI: TfrxMemoView
          Left = 94.488188976378000000
          Top = 122.267714090000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_BAI'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_BAI"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 84.472438500000010000
          Width = 83.149606299212600000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ / CPF:')
          ParentFont = False
          WordWrap = False
        end
        object Memo15: TfrxMemoView
          Left = 336.378170000000000000
          Top = 84.472438500000010000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Inscri'#231#227'o Estadual:')
          ParentFont = False
          WordWrap = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 160.062989690000000000
          Width = 83.149606299212600000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_FON: TfrxMemoView
          Left = 94.488188976378000000
          Top = 160.062989690000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'NO_FON'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_FON"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 222.992270000000000000
          Top = 160.062989690000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fax:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_FAX: TfrxMemoView
          Left = 328.819110000000000000
          Top = 160.062989690000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'NO_FAX'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_FAX"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo19: TfrxMemoView
          Left = 472.441250000000000000
          Top = 160.062989690000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Celular:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_CEL: TfrxMemoView
          Left = 574.488560000000000000
          Top = 160.062989690000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'NO_CEL'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CEL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 302.362400000000000000
          Top = 46.677179999999990000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Regime Tributario:')
          ParentFont = False
          WordWrap = False
        end
        object regimeTributario: TfrxMemoView
          Left = 430.866420000000000000
          Top = 46.677179999999990000
          Width = 306.141930000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[regimeTributario]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 3.779530000000000000
          Top = 206.858380000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Dados do Contator')
          ParentFont = False
        end
        object frxDBRepresentanteNM_CTD: TfrxMemoView
          Left = 94.488188980000000000
          Top = 225.433210000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_CTD"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNO_CPF_CTD: TfrxMemoView
          Left = 94.488188980000000000
          Top = 244.330706220000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'NO_CPF_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CPF_CTD"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNO_CNP_CTD: TfrxMemoView
          Left = 374.173470000000000000
          Top = 244.330860000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CNP_CTD"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNO_INS_CRC: TfrxMemoView
          Left = 457.764008980000000000
          Top = 225.433210000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_INS_CRC"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 366.834880000000000000
          Top = 225.433210000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'No. CRM:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNO_FON_CTD: TfrxMemoView
          Left = 94.488188980000000000
          Top = 319.921460000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'NO_FON_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_FON_CTD"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNO_FAX_CTD: TfrxMemoView
          Left = 328.819110000000000000
          Top = 319.921460000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'NO_FAX_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_FAX_CTD"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNO_CEL_CTD: TfrxMemoView
          Left = 578.268090000000000000
          Top = 319.921460000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'NO_CEL_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CEL_CTD"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNM_CID_CON: TfrxMemoView
          Left = 94.488188980000000000
          Top = 301.023619610000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CID_CON'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_CID_CON"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteUF_CID_CONT: TfrxMemoView
          Left = 469.417322830000000000
          Top = 301.023619610000000000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."UF_CID_CONT"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNM_BAI_CON: TfrxMemoView
          Left = 94.488188980000000000
          Top = 282.125981810000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_BAI_CON'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_BAI_CON"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNM_RUA_CON: TfrxMemoView
          Left = 94.488188980000000000
          Top = 263.228344020000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_RUA_CON'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_RUA_CON"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNO_CEP_CON: TfrxMemoView
          Left = 544.251968500000000000
          Top = 301.023619610000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CEP_CON"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo25: TfrxMemoView
          Left = 3.559060000000000000
          Top = 225.433210000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Nome Contador:')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Left = 3.559060000000000000
          Top = 244.330706220000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CPF Contador:')
          ParentFont = False
          WordWrap = False
        end
        object Memo27: TfrxMemoView
          Left = 264.567100000000000000
          Top = 244.330860000000000000
          Width = 109.606328500000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ Contador:')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Left = 3.559060000000000000
          Top = 263.228510000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          WordWrap = False
        end
        object Memo29: TfrxMemoView
          Left = 3.559060000000000000
          Top = 282.126160000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
          WordWrap = False
        end
        object Memo30: TfrxMemoView
          Left = 3.559060000000000000
          Top = 301.023797800000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 514.015748030000000000
          Top = 301.023810000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
          WordWrap = False
        end
        object Memo32: TfrxMemoView
          Left = 336.377952760000000000
          Top = 301.023810000000000000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 3.559060000000000000
          Top = 319.921460000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          WordWrap = False
        end
        object Memo34: TfrxMemoView
          Left = 222.992270000000000000
          Top = 319.921460000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Fax:')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Left = 472.441250000000000000
          Top = 319.921460000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Celular:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteE_MAIL_CTT: TfrxMemoView
          Left = 481.000310000000000000
          Top = 178.960730000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          DataField = 'E_MAIL_CTT'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."E_MAIL_CTT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 178.960730000000000000
          Width = 83.149606299212600000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Nome Contato:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNM_CTT: TfrxMemoView
          Left = 94.488188976378000000
          Top = 178.960730000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CTT'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_CTT"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 434.645950000000000000
          Top = 178.960730000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Email:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteNO_EDR_CTD: TfrxMemoView
          Left = 472.441250000000000000
          Top = 264.905690000000100000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NO_EDR_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_EDR_CTD"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBRepresentanteDS_CPL_CTD: TfrxMemoView
          Left = 614.173228350000000000
          Top = 264.905690000000100000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'DS_CPL_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."DS_CPL_CTD"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo38: TfrxMemoView
          Left = 336.378170000000000000
          Top = 264.905690000000100000
          Width = 132.283464570000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Numero:')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          Left = 550.031850000000000000
          Top = 264.905690000000100000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Complemento:')
          ParentFont = False
          WordWrap = False
        end
        object Memo21: TfrxMemoView
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Dados da Empresa')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 550.559370000000100000
          Width = 737.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Top = 358.968770000000000000
          Width = 737.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo42: TfrxMemoView
          Left = 3.338590000000000000
          Top = 389.882190000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Dt Estoque Inicial:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 210.771800000000000000
          Top = 389.866141730000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Dt.Ultimo Inventario:')
          ParentFont = False
        end
        object frxDBEmpresaDT_SLD_INI: TfrxMemoView
          Left = 123.504020000000000000
          Top = 389.882190000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DataField = 'DT_SLD_INI'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."DT_SLD_INI"]')
        end
        object frxDBEmpresaDT_ULT_INV: TfrxMemoView
          Left = 346.834880000000000000
          Top = 389.882190000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DataField = 'DT_ULT_INV'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."DT_ULT_INV"]')
        end
        object Line7: TfrxLineView
          Top = 384.764070000000100000
          Width = 737.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo44: TfrxMemoView
          Left = 3.559060000000000000
          Top = 363.307360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Aliquota PIS %:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 245.448980000000000000
          Top = 363.307360000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Aliquota Cofins %:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 506.457020000000000000
          Top = 363.307360000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Valor Aluguel R$:')
          ParentFont = False
        end
        object frxDBEmpresaVR_ALG: TfrxMemoView
          Left = 627.401980000000000000
          Top = 363.307360000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'VR_ALG'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."VR_ALG"]')
        end
        object frxDBEmpresaAL_PIS: TfrxMemoView
          Left = 111.488250000000000000
          Top = 363.307360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'AL_PIS'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_PIS"]')
        end
        object frxDBEmpresaAL_COF: TfrxMemoView
          Left = 370.393940000000000000
          Top = 363.307360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'AL_COF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_COF"]')
        end
        object Line8: TfrxLineView
          Top = 412.543600000000100000
          Width = 737.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Top = 416.323130000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Natureza Sped')
          ParentFont = False
        end
        object SpedNatureza: TfrxMemoView
          Left = 190.433210000000000000
          Top = 436.000000000000000000
          Width = 548.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[NaturezaPessoaJuridica]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Top = 436.000000000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Natureza da Pessoa Jur'#237'dica:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Top = 454.897637800000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Atividade Preponderante:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Top = 473.795275590000100000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Escritura'#231#227'o Opera'#231#245'es Nf-e e ECF:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Top = 492.913385830000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Indicador de Situa'#231#227'o Especial:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Top = 511.590551180000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vers'#227'o Leiaute do Sped Pis/Cofins:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Top = 530.488188980000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo Base de Cr'#233'dito Pis/Cofins:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          Left = 437.323130000000000000
          Top = 389.866420000000100000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ultima Nota:')
          ParentFont = False
        end
        object frxDBEmpresaNO_NTF: TfrxMemoView
          Left = 523.252320000000000000
          Top = 389.866420000000100000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'NO_NTF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_NTF"]')
        end
        object Memo55: TfrxMemoView
          Left = 596.842920000000000000
          Top = 389.866420000000100000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'S'#233'rie Nota:')
          ParentFont = False
        end
        object frxDBEmpresaDS_SER_NTF: TfrxMemoView
          Left = 672.756340000000000000
          Top = 389.866420000000100000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'DS_SER_NTF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."DS_SER_NTF"]')
        end
        object Memo56: TfrxMemoView
          Left = 3.559060000000000000
          Top = 340.732530000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Email:')
          ParentFont = False
          WordWrap = False
        end
        object frxDBEmpresaE_MAIL_CTD: TfrxMemoView
          Left = 94.488188980000000000
          Top = 340.732530000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          DataField = 'E_MAIL_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."E_MAIL_CTD"]')
          ParentFont = False
          WordWrap = False
        end
        object AtividadePreponderante: TfrxMemoView
          Left = 190.433061100000000000
          Top = 454.897637800000000000
          Width = 548.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[AtividadePreponderante]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object EscrituracaoNfeECF: TfrxMemoView
          Left = 190.433061100000000000
          Top = 473.795610000000000000
          Width = 548.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[EscrituracaoNfeECF]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object IndicadorSituacaoEspecial: TfrxMemoView
          Left = 190.267716540000000000
          Top = 493.070866140000000000
          Width = 548.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[IndicadorSituacaoEspecial]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object CodBaseCreditoPisCofins: TfrxMemoView
          Left = 188.756030000000000000
          Top = 529.709030000000000000
          Width = 548.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[CodBaseCreditoPisCofins]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frxDBEmpresaCD_VER_PCF: TfrxMemoView
          Left = 192.535560000000000000
          Top = 511.566929130000100000
          Width = 548.031496060000000000
          Height = 18.897650000000000000
          DataField = 'CD_VER_PCF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CD_VER_PCF"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Top = 571.283860000000000000
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo modelo do Docto fiscal:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Top = 552.386210000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ECF')
          ParentFont = False
        end
        object frxDBEmpresaCD_MOD_FIS: TfrxMemoView
          Left = 170.078740160000000000
          Top = 571.283860000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'CD_MOD_FIS'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CD_MOD_FIS"]')
          ParentFont = False
        end
        object frxDBEmpresaCD_MOD_ECF: TfrxMemoView
          Left = 489.338900000000000000
          Top = 571.283860000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'CD_MOD_ECF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."CD_MOD_ECF"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 370.393700790000000000
          Top = 571.283860000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Modelo Equipamento:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Top = 590.181510000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero de S'#233'rie Equipamento:')
          ParentFont = False
        end
        object frxDBEmpresaNO_SER_ECF: TfrxMemoView
          Left = 170.078850000000000000
          Top = 590.181510000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'NO_SER_ECF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_SER_ECF"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo61: TfrxMemoView
          Left = 370.393940000000000000
          Top = 590.181102360000100000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'No. do Caixa do ECF:')
          ParentFont = False
        end
        object frxDBEmpresaNO_CXA_ECF: TfrxMemoView
          Left = 487.559370000000000000
          Top = 590.181102360000100000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'NO_CXA_ECF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CXA_ECF"]')
          ParentFont = False
          WordWrap = False
        end
        object Line9: TfrxLineView
          Top = 609.079160000000000000
          Width = 737.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo62: TfrxMemoView
          Left = 3.779530000000000000
          Top = 612.858690000000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Markup')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 3.779530000000000000
          Top = 633.645669290000000000
          Width = 52.913346770000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Markup:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 117.165430000000000000
          Top = 633.645669290000000000
          Width = 102.047236770000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Aliquota de ICMS:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 287.244280000000000000
          Top = 633.645669290000000000
          Width = 56.692876770000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% PIS:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 400.630180000000000000
          Top = 633.645669290000000000
          Width = 71.810996770000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% COFINS:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 502.677490000000000000
          Top = 633.645669290000000000
          Width = 154.960656770000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% Despesas Administrativas:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 4.779530000000000000
          Top = 656.322834650000000000
          Width = 120.944886770000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Despesas Financeiras:')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 188.976500000000000000
          Top = 656.322834650000000000
          Width = 102.047236770000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Despesas Entrega:')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 381.732530000000000000
          Top = 656.322834650000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Comiss'#227'o Vendedor:')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 544.252320000000100000
          Top = 656.322834650000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Margem de Lucro:')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Top = 676.874460000000000000
          Width = 737.007874020000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBEmpresaAL_ICM_MKC: TfrxMemoView
          Left = 218.212740000000000000
          Top = 632.826771650000100000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'AL_ICM_MKC'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_ICM_MKC"]')
        end
        object frxDBEmpresaAL_PIS_MKC: TfrxMemoView
          Left = 347.716760000000000000
          Top = 633.826771650000100000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'AL_PIS_MKC'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_PIS_MKC"]')
        end
        object frxDBEmpresaAL_COF_MKP: TfrxMemoView
          Left = 472.441250000000000000
          Top = 633.961040000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'AL_COF_MKP'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_COF_MKP"]')
        end
        object frxDBEmpresaPC_DPA_MKC: TfrxMemoView
          Left = 654.858690000000000000
          Top = 633.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_DPA_MKC"]')
        end
        object frxDBEmpresaPC_DPF_MKP: TfrxMemoView
          Left = 124.724490000000000000
          Top = 656.638220000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'PC_DPF_MKP'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_DPF_MKP"]')
        end
        object frxDBEmpresaPC_DPE_MKP: TfrxMemoView
          Left = 290.803340000000000000
          Top = 656.638220000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_DPE_MKP"]')
        end
        object frxDBEmpresaPC_CMS_MKC: TfrxMemoView
          Left = 491.338900000000000000
          Top = 656.503937010000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PC_CMS_MKC'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_CMS_MKC"]')
        end
        object frxDBEmpresaPC_MLC_MKC: TfrxMemoView
          Left = 657.638220000000000000
          Top = 656.503937007874000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'PC_MLC_MKC'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_MLC_MKC"]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 895.748610000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset_VEN_EMPRESA
        DataSetName = 'frxDBDataset_VEN_EMPRESA'
        Filter = '<frxDBDataset_VEN_EMPRESA."ID_EMPRESA"> = <frxDBEmpresa."ID">'
        RowCount = 0
        object frxDBDataset_VEN_EMPRESAID_COD_VEN: TfrxMemoView
          Width = 52.913420000000000000
          Height = 18.897637800000000000
          DataField = 'ID_COD_VEN'
          DataSet = frxDBDataset_VEN_EMPRESA
          DataSetName = 'frxDBDataset_VEN_EMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset_VEN_EMPRESA."ID_COD_VEN"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object frxDBDataset_VEN_EMPRESANM_VEN: TfrxMemoView
          Left = 54.692950000000000000
          Width = 684.094930000000000000
          Height = 18.897637800000000000
          DataField = 'NM_VEN'
          DataSet = frxDBDataset_VEN_EMPRESA
          DataSetName = 'frxDBDataset_VEN_EMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_VEN_EMPRESA."NM_VEN"]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 39.685039370078700000
        Top = 831.496599999999900000
        Width = 740.409927000000000000
        object Memo23: TfrxMemoView
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Autorizado a Liberar Venda no Valor de:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 3.779530000000000000
          Top = 21.236239999999950000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 77.370130000000000000
          Top = 21.236239999999950000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendedor')
          ParentFont = False
        end
        object frxDBEmpresaVR_PED_MAX: TfrxMemoView
          Left = 317.480520000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VR_PED_MAX'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBEmpresa."VR_PED_MAX"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBEmpresa: TfrxDBDataset
    UserName = 'frxDBEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_CEP=ID_CEP'
      'ID_CEP_CONTADOR=ID_CEP_CONTADOR'
      'NM_EMP=NM_EMP'
      'DT_CAD=DT_CAD'
      'NM_FAN=NM_FAN'
      'NO_FON=NO_FON'
      'NO_FAX=NO_FAX'
      'NO_CEL=NO_CEL'
      'CD_PAI=CD_PAI'
      'NO_CNP_CPF=NO_CNP_CPF'
      'NO_INS_EST=NO_INS_EST'
      'CD_REG_TBT=CD_REG_TBT'
      'NM_CTT=NM_CTT'
      'E_MAIL_CTT=E_MAIL_CTT'
      'HOME_PAGE=HOME_PAGE'
      'DT_SLD_INI=DT_SLD_INI'
      'DT_ULT_INV=DT_ULT_INV'
      'DS_SER_NTF=DS_SER_NTF'
      'QT_ITE_NTF=QT_ITE_NTF'
      'NO_NTF_SD=NO_NTF_SD'
      'NO_CUP_FIS=NO_CUP_FIS'
      'NO_NT2=NO_NT2'
      'DS_SER_NT2=DS_SER_NT2'
      'NO_NTF_SCA=NO_NTF_SCA'
      'DS_SER_SCA=DS_SER_SCA'
      'NO_PED=NO_PED'
      'NO_OCM=NO_OCM'
      'NO_RQS=NO_RQS'
      'NO_RQS_FIL=NO_RQS_FIL'
      'NO_CRD=NO_CRD'
      'NO_KIT=NO_KIT'
      'NO_RMN=NO_RMN'
      'CD_CTB=CD_CTB'
      'CD_CTB_DEB=CD_CTB_DEB'
      'CD_CTB_CRD=CD_CTB_CRD'
      'CD_FCN=CD_FCN'
      'VR_PED_MAX=VR_PED_MAX'
      'CD_LIB_VND=CD_LIB_VND'
      'CD_CCL_VND=CD_CCL_VND'
      'CD_CRT_VND=CD_CRT_VND'
      'CD_AUX=CD_AUX'
      'NM_CTD=NM_CTD'
      'NO_INS_CRC=NO_INS_CRC'
      'NO_CPF_CTD=NO_CPF_CTD'
      'NO_CNP_CTD=NO_CNP_CTD'
      'E_MAIL_CTD=E_MAIL_CTD'
      'NO_EDR_CTD=NO_EDR_CTD'
      'DS_CPL_CTD=DS_CPL_CTD'
      'NO_FON_CTD=NO_FON_CTD'
      'NO_FAX_CTD=NO_FAX_CTD'
      'NO_CEL_CTD=NO_CEL_CTD'
      'UF_CID_CTD=UF_CID_CTD'
      'CD_PAI_CTD=CD_PAI_CTD'
      'NO_CEP_CTD=NO_CEP_CTD'
      'CD_CST_PIS=CD_CST_PIS'
      'CD_CST_PIE=CD_CST_PIE'
      'SN_APV_PIS=SN_APV_PIS'
      'AL_COF=AL_COF'
      'CD_CST_COS=CD_CST_COS'
      'CD_CST_COE=CD_CST_COE'
      'SN_APV_COF=SN_APV_COF'
      'ID_NAT_PJ=ID_NAT_PJ'
      'ID_ATV=ID_ATV'
      'ID_ESC=ID_ESC'
      'ID_SIT_ESP=ID_SIT_ESP'
      'CD_VER_PCF=CD_VER_PCF'
      'CD_MOD_FIS=CD_MOD_FIS'
      'CD_MOD_ECF=CD_MOD_ECF'
      'NO_SER_ECF=NO_SER_ECF'
      'NO_CXA_ECF=NO_CXA_ECF'
      'CD_BAS_CRD=CD_BAS_CRD'
      'VR_ALG=VR_ALG'
      'CD_FOR_ALG=CD_FOR_ALG'
      'AL_ICM_MKP=AL_ICM_MKP'
      'AL_PIS_MKP=AL_PIS_MKP'
      'AL_COF_MKP=AL_COF_MKP'
      'PC_DPA_MKP=PC_DPA_MKP'
      'PC_DPF_MKP=PC_DPF_MKP'
      'PC_DPE_MKP=PC_DPE_MKP'
      'PC_CMS_MKP=PC_CMS_MKP'
      'PC_MLC_MKP=PC_MLC_MKP'
      'AL_ICM_MKC=AL_ICM_MKC'
      'AL_PIS_MKC=AL_PIS_MKC'
      'AL_COF_MKC=AL_COF_MKC'
      'PC_DPA_MKC=PC_DPA_MKC'
      'PC_DPF_MKC=PC_DPF_MKC'
      'PC_DPE_MKC=PC_DPE_MKC'
      'PC_CMS_MKC=PC_CMS_MKC'
      'PC_MLC_MKC=PC_MLC_MKC'
      'AL_ICM_M12=AL_ICM_M12'
      'AL_PIS_M12=AL_PIS_M12'
      'AL_COF_M12=AL_COF_M12'
      'PC_DPA_M12=PC_DPA_M12'
      'PC_DPF_M12=PC_DPF_M12'
      'PC_DPE_M12=PC_DPE_M12'
      'PC_CMS_M12=PC_CMS_M12'
      'PC_MLC_M12=PC_MLC_M12'
      'DS_OBS=DS_OBS'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU'
      'NO_EDR=NO_EDR'
      'DS_CPL=DS_CPL'
      'AL_PIS=AL_PIS'
      'NO_NTF=NO_NTF'
      'NM_CID=NM_CID'
      'NM_BAI=NM_BAI'
      'NM_RUA=NM_RUA'
      'NO_CEP=NO_CEP'
      'ID_CEP_1=ID_CEP_1'
      'NM_CID_CON=NM_CID_CON'
      'NM_BAI_CON=NM_BAI_CON'
      'NM_RUA_CON=NM_RUA_CON'
      'NO_CEP_CON=NO_CEP_CON'
      'ID_CEP_CONT=ID_CEP_CONT'
      'UF_CID=UF_CID'
      'UF_CID_CONT=UF_CID_CONT')
    DataSet = DMcadastro.CDSEmpresa
    BCDToCurrency = False
    Left = 311
    Top = 671
  end
  object frxDBDataset_VEN_EMPRESA: TfrxDBDataset
    UserName = 'frxDBDataset_VEN_EMPRESA'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_COD_VEN=ID_COD_VEN'
      'ID_EMPRESA=ID_EMPRESA'
      'NM_VEN=NM_VEN')
    DataSet = CDSVenEmp
    BCDToCurrency = False
    Left = 431
    Top = 671
  end
  object PopupMenu1: TPopupMenu
    Left = 964
    Top = 235
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
  object SQLVenEmp: TSQLDataSet
    CommandText = 
      'select db_ven_emp.*,db_vendedor.nm_ven from db_ven_emp'#13#10'inner jo' +
      'in db_vendedor on db_vendedor.id =  db_ven_emp.id_cod_ven'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = DMcadastro.SQLConnection1
    Left = 712
    Top = 595
    object SQLVenEmpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SQLVenEmpID_COD_VEN: TIntegerField
      FieldName = 'ID_COD_VEN'
      Required = True
    end
    object SQLVenEmpID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object SQLVenEmpNM_VEN: TStringField
      FieldName = 'NM_VEN'
      ProviderFlags = []
      Size = 35
    end
  end
  object DSPVenEmp: TDataSetProvider
    DataSet = SQLVenEmp
    Left = 784
    Top = 595
  end
  object CDSVenEmp: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVenEmp'
    Left = 856
    Top = 595
    object CDSVenEmpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDSVenEmpID_COD_VEN: TIntegerField
      FieldName = 'ID_COD_VEN'
      Required = True
    end
    object CDSVenEmpID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object CDSVenEmpNM_VEN: TStringField
      FieldName = 'NM_VEN'
      ProviderFlags = []
      Size = 35
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
    Left = 548
    Top = 674
  end
  object frxXLSExport1: TfrxXLSExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    ExportStyles = False
    ExportPictures = False
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    GridLines = False
    Left = 612
    Top = 674
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
    Left = 909
    Top = 669
  end
  object FR_Empresa_Matricial: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43052.446910416700000000
    ReportOptions.LastChange = 43052.643996342590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DMPCommand1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  DMPCommand1.command := '#39'#27#120#0#20'#39'                         ' +
        '                             '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = FR_Empresa_MatricialGetValue
    Left = 964
    Top = 291
    Datasets = <
      item
        DataSet = frxDBDataset_VEN_EMPRESA
        DataSetName = 'frxDBDataset_VEN_EMPRESA'
      end
      item
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
      end>
    Variables = <
      item
        Name = ' variaveis'
        Value = Null
      end
      item
        Name = 'MRegimeTributario'
        Value = Null
      end
      item
        Name = 'MNaturezaPessoaJuridica'
        Value = ''
      end
      item
        Name = 'MAtividadePreponderante'
        Value = ''
      end
      item
        Name = 'MEscrituracaoNfeECF'
        Value = ''
      end
      item
        Name = 'MIndicadorSituacaoEspecial'
        Value = ''
      end
      item
        Name = 'MCodBaseCreditoPisCofins'
        Value = ''
      end
      item
        Name = 'MUsuario'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 411.479734252671600000
      PaperHeight = 292.364394514661800000
      PaperSize = 256
      FontStyle = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 629.000000000000000000
        Top = 102.000000000000000000
        Width = 1555.200000000000000000
        DataSet = frxDBEmpresa
        DataSetName = 'frxDBEmpresa'
        RowCount = 0
        object DMPMemo5: TfrxDMPMemoView
          Width = 163.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Memo.UTF8W = (
            'DADOS DA EMPRESA')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 67.200000000000000000
          Top = 34.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CODIGO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 201.600000000000000000
          Top = 34.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Memo.UTF8W = (
            'EMPRESA:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 547.200000000000100000
          Top = 51.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'REGIME TRIBUTARIO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Top = 51.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'NOME FANTASIA:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaID: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 34.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          DataField = 'ID'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."ID"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_EMP: TfrxDMPMemoView
          Left = 288.000000000000000000
          Top = 34.000000000000000000
          Width = 624.000000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_EMP'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_EMP"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_FAN: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 51.000000000000000000
          Width = 412.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_FAN'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_FAN"]')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Top = 68.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CNPJ/CPF:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo12: TfrxDMPMemoView
          Left = 585.600000000000000000
          Top = 68.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'INSCRICAO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_CNP_CPF: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 68.000000000000000000
          Width = 249.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CNP_CPF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CNP_CPF"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_INS_EST: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 68.000000000000000000
          Width = 268.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_INS_EST'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_INS_EST"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_RUA: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 85.000000000000000000
          Width = 489.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_RUA'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_RUA"]')
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Top = 85.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERECO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo14: TfrxDMPMemoView
          Left = 633.600000000000000000
          Top = 85.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'No.:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo15: TfrxDMPMemoView
          Top = 102.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_EDR: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 85.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_EDR'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_EDR"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_BAI: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 102.000000000000000000
          Width = 393.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_BAI'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_BAI"]')
          TruncOutboundText = False
        end
        object DMPMemo16: TfrxDMPMemoView
          Left = 806.400000000000000000
          Top = 85.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COMPLEMENTO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaDS_CPL: TfrxDMPMemoView
          Left = 921.600000000000000000
          Top = 85.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataField = 'DS_CPL'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."DS_CPL"]')
          TruncOutboundText = False
        end
        object DMPMemo17: TfrxDMPMemoView
          Left = 662.400000000000000000
          Top = 85.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'No.:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo18: TfrxDMPMemoView
          Left = 643.200000000000000000
          Top = 102.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CIDADE:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_CID: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 102.000000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_CID'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_CID"]')
          TruncOutboundText = False
        end
        object DMPMemo19: TfrxDMPMemoView
          Left = 1017.600000000000000000
          Top = 102.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaUF_CID: TfrxDMPMemoView
          Left = 1056.000000000000000000
          Top = 102.000000000000000000
          Width = 38.400000000000000000
          Height = 17.000000000000000000
          DataField = 'UF_CID'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."UF_CID"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_CEP: TfrxDMPMemoView
          Left = 1152.000000000000000000
          Top = 102.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CEP'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CEP"]')
          TruncOutboundText = False
        end
        object DMPMemo20: TfrxDMPMemoView
          Left = 1084.800000000000000000
          Top = 102.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          Top = 119.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo22: TfrxDMPMemoView
          Left = 278.400000000000000000
          Top = 119.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo23: TfrxDMPMemoView
          Left = 585.600000000000000000
          Top = 119.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CELULAR:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_FON: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 119.000000000000000000
          Width = 192.000000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_FON'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_FON"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_FAX: TfrxDMPMemoView
          Left = 412.800000000000000000
          Top = 119.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_FAX'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_FAX"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_CEL: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 119.000000000000000000
          Width = 230.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CEL'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CEL"]')
          TruncOutboundText = False
        end
        object DMPMemo24: TfrxDMPMemoView
          Top = 136.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          HAlign = haRight
          Memo.UTF8W = (
            'NOME CONTATO:')
          TruncOutboundText = False
        end
        object DMPMemo25: TfrxDMPMemoView
          Left = 585.600000000000000000
          Top = 136.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          HAlign = haRight
          Memo.UTF8W = (
            'EMAIL EMPRESA:')
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_CTT: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 136.000000000000000000
          Width = 422.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_CTT'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_CTT"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaE_MAIL_CTT: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 136.000000000000000000
          Width = 720.000000000000000000
          Height = 17.000000000000000000
          DataField = 'E_MAIL_CTT'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBEmpresa."E_MAIL_CTT"]')
          TruncOutboundText = False
        end
        object DMPMemo26: TfrxDMPMemoView
          Top = 170.000000000000000000
          Width = 163.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Memo.UTF8W = (
            'DADOS DO CONTADOR')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo27: TfrxDMPMemoView
          Top = 204.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'NOME CONTADOR:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo28: TfrxDMPMemoView
          Left = 499.200000000000000000
          Top = 204.000000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'NO. CRM:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_CTD: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 204.000000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_CTD"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_INS_CRC: TfrxDMPMemoView
          Left = 595.200000000000000000
          Top = 204.000000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_INS_CRC'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_INS_CRC"]')
          TruncOutboundText = False
        end
        object DMPMemo29: TfrxDMPMemoView
          Left = 710.400000000000000000
          Top = 204.000000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'NO. CPF:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo30: TfrxDMPMemoView
          Left = 979.200000000000000000
          Top = 204.000000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'NO. CNPJ:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_CPF_CTD: TfrxDMPMemoView
          Left = 806.400000000000000000
          Top = 204.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CPF_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CPF_CTD"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_CNP_CTD: TfrxDMPMemoView
          Left = 1075.200000000000000000
          Top = 204.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CNP_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CNP_CTD"]')
          TruncOutboundText = False
        end
        object DMPMemo32: TfrxDMPMemoView
          Top = 221.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ENDERECO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo33: TfrxDMPMemoView
          Top = 238.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo36: TfrxDMPMemoView
          Left = 806.400000000000000000
          Top = 221.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COMPLEMENTO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo38: TfrxDMPMemoView
          Left = 662.400000000000000000
          Top = 221.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'No.:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo39: TfrxDMPMemoView
          Left = 547.200000000000100000
          Top = 238.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CIDADE:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo41: TfrxDMPMemoView
          Left = 988.800000000000000000
          Top = 238.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_EDR_CTD: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 221.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_EDR_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_EDR_CTD"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaDS_CPL_CTD: TfrxDMPMemoView
          Left = 931.200000000000000000
          Top = 221.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataField = 'DS_CPL_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."DS_CPL_CTD"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_RUA_CON: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 221.000000000000000000
          Width = 499.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_RUA_CON'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_RUA_CON"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_BAI_CON: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 238.000000000000000000
          Width = 403.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_BAI_CON'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_BAI_CON"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNM_CID_CON: TfrxDMPMemoView
          Left = 633.600000000000000000
          Top = 238.000000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_CID_CON'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NM_CID_CON"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaUF_CID_CONT: TfrxDMPMemoView
          Left = 1017.600000000000000000
          Top = 238.000000000000000000
          Width = 28.800000000000000000
          Height = 17.000000000000000000
          DataField = 'UF_CID_CONT'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."UF_CID_CONT"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_CEP_CON: TfrxDMPMemoView
          Left = 1152.000000000000000000
          Top = 238.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CEP_CON'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CEP_CON"]')
          TruncOutboundText = False
        end
        object DMPMemo31: TfrxDMPMemoView
          Left = 1084.800000000000000000
          Top = 238.000000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo34: TfrxDMPMemoView
          Top = 255.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TELEFONE:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo35: TfrxDMPMemoView
          Left = 240.000000000000000000
          Top = 255.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'FAX:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo37: TfrxDMPMemoView
          Left = 489.600000000000000000
          Top = 255.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'CELULAR:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo40: TfrxDMPMemoView
          Left = 796.800000000000000000
          Top = 255.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'EMAIL:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_FON_CTD: TfrxDMPMemoView
          Left = 144.000000000000000000
          Top = 255.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_FON_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_FON_CTD"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_FAX_CTD: TfrxDMPMemoView
          Left = 384.000000000000000000
          Top = 255.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_FAX_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_FAX_CTD"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_CEL_CTD: TfrxDMPMemoView
          Left = 633.600000000000000000
          Top = 255.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CEL_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CEL_CTD"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaE_MAIL_CTD: TfrxDMPMemoView
          Left = 940.800000000000000000
          Top = 255.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'E_MAIL_CTD'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."E_MAIL_CTD"]')
          TruncOutboundText = False
        end
        object DMPMemo42: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 289.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ALIQUOTA PIS %:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo43: TfrxDMPMemoView
          Left = 480.000000000000000000
          Top = 289.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ALIQUOTA COFINS %:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo44: TfrxDMPMemoView
          Left = 816.000000000000000000
          Top = 289.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR DO ALUGUEL R$:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaAL_COF: TfrxDMPMemoView
          Left = 672.000000000000000000
          Top = 289.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'AL_COF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_COF"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaAL_PIS: TfrxDMPMemoView
          Left = 163.200000000000000000
          Top = 289.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'AL_PIS'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_PIS"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaVR_ALG: TfrxDMPMemoView
          Left = 1036.800000000000000000
          Top = 289.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          DataField = 'VR_ALG'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."VR_ALG"]')
          TruncOutboundText = False
        end
        object DMPMemo45: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 323.000000000000000000
          Width = 201.600000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DATA ESTOQUE INICIAL:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo46: TfrxDMPMemoView
          Left = 374.400000000000000000
          Top = 323.000000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DATA ULTIMO INVENTARIO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo47: TfrxDMPMemoView
          Left = 787.200000000000000000
          Top = 323.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ULTIMA NOTA:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo48: TfrxDMPMemoView
          Left = 1056.000000000000000000
          Top = 323.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SERIE NOTA:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaDT_SLD_INI: TfrxDMPMemoView
          Left = 220.800000000000000000
          Top = 323.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          DataField = 'DT_SLD_INI'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."DT_SLD_INI"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaDT_ULT_INV: TfrxDMPMemoView
          Left = 604.800000000000000000
          Top = 323.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          DataField = 'DT_ULT_INV'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."DT_ULT_INV"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaDS_SER_NTF: TfrxDMPMemoView
          Left = 1190.400000000000000000
          Top = 323.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          DataField = 'DS_SER_NTF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."DS_SER_NTF"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_OCM: TfrxDMPMemoView
          Left = 912.000000000000000000
          Top = 323.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_NTF"]')
          TruncOutboundText = False
        end
        object DMPMemo49: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 357.000000000000000000
          Width = 163.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Memo.UTF8W = (
            'NATUREZA SPED')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo50: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 374.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Natureza da Pessoa Juridica:')
          TruncOutboundText = False
        end
        object DMPMemo51: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 391.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Atividade Preponderante:')
          TruncOutboundText = False
        end
        object DMPMemo52: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 408.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Escrituracao Operacoes Nf-e e ECF:')
          TruncOutboundText = False
        end
        object DMPMemo53: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 425.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Indicador de Situacao Especial:')
          TruncOutboundText = False
        end
        object DMPMemo54: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 442.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Versao Leiaute do Sped Pis/Cofins:')
          TruncOutboundText = False
        end
        object DMPMemo55: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 459.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Codigo Base de Credito Pis/Cofins:')
          TruncOutboundText = False
        end
        object DMPMemo56: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 493.000000000000000000
          Width = 163.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Memo.UTF8W = (
            'ECF')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo57: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 510.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'C'#243'digo modelo do Docto fiscal:')
          TruncOutboundText = False
        end
        object DMPMemo58: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 527.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'N'#250'mero de S'#233'rie Equipamento:')
          TruncOutboundText = False
        end
        object DMPMemo59: TfrxDMPMemoView
          Left = 614.400000000000000000
          Top = 510.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Modelo Equipamento:')
          TruncOutboundText = False
        end
        object DMPMemo60: TfrxDMPMemoView
          Left = 614.400000000000000000
          Top = 527.000000000000000000
          Width = 326.400000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'No. do Caixa do ECF:')
          TruncOutboundText = False
        end
        object frxDBEmpresaCD_MOD_FIS: TfrxDMPMemoView
          Left = 345.600000000000000000
          Top = 510.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_MOD_FIS'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."CD_MOD_FIS"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaCD_MOD_ECF: TfrxDMPMemoView
          Left = 950.400000000000000000
          Top = 510.000000000000000000
          Width = 249.600000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_MOD_ECF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."CD_MOD_ECF"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_SER_ECF: TfrxDMPMemoView
          Left = 345.600000000000000000
          Top = 527.000000000000000000
          Width = 259.200000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_SER_ECF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_SER_ECF"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaNO_CXA_ECF: TfrxDMPMemoView
          Left = 950.400000000000000000
          Top = 527.000000000000000000
          Width = 249.600000000000000000
          Height = 17.000000000000000000
          DataField = 'NO_CXA_ECF'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."NO_CXA_ECF"]')
          TruncOutboundText = False
        end
        object DMPMemo61: TfrxDMPMemoView
          Left = 345.600000000000000000
          Top = 442.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."CD_VER_PCF"]')
          TruncOutboundText = False
        end
        object DMPMemo62: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 561.000000000000000000
          Width = 163.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Memo.UTF8W = (
            'MARKUP')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo63: TfrxDMPMemoView
          Left = 86.400000000000000000
          Top = 578.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'MARCKUP:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo64: TfrxDMPMemoView
          Left = 412.800000000000000000
          Top = 578.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ALIQUOTA ICMS:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo65: TfrxDMPMemoView
          Left = 595.200000000000000000
          Top = 578.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% PIS:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo66: TfrxDMPMemoView
          Left = 777.600000000000000000
          Top = 578.000000000000000000
          Width = 134.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            '% COFINS:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo67: TfrxDMPMemoView
          Left = 1152.000000000000000000
          Top = 578.000000000000000000
          Width = 240.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESPESAS ADMINISTRATIVAS:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPLine3: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 314.500000000000000000
          Width = 1545.600000000000000000
          Color = clBlack
        end
        object DMPLine4: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 348.500000000000000000
          Width = 1545.600000000000000000
          Color = clBlack
        end
        object DMPLine5: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 484.500000000000000000
          Width = 1545.600000000000000000
          Color = clBlack
        end
        object DMPLine6: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 552.500000000000000000
          Width = 1545.600000000000000000
          Color = clBlack
        end
        object DMPMemo68: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 595.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESPESAS FINANCEIRAS:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo69: TfrxDMPMemoView
          Left = 336.000000000000000000
          Top = 595.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'DESPESAS DE ENTREGA:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo70: TfrxDMPMemoView
          Left = 700.800000000000000000
          Top = 595.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'COMISSAO VENDEDOR:')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo71: TfrxDMPMemoView
          Left = 969.600000000000000000
          Top = 595.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          HAlign = haRight
          Memo.UTF8W = (
            'MARGEM LUCRO:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaAL_ICM_MKP: TfrxDMPMemoView
          Left = 556.799999999999900000
          Top = 578.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_ICM_MKP"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaAL_PIS_MKP: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 578.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_PIS_MKP"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaAL_COF_MKP: TfrxDMPMemoView
          Left = 921.600000000000000000
          Top = 578.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."AL_COF_MKP"]')
          TruncOutboundText = False
        end
        object DMPLine1: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 161.500000000000000000
          Width = 1545.600000000000000000
          Color = clBlack
        end
        object DMPMemo72: TfrxDMPMemoView
          Left = 1401.600000000000000000
          Top = 578.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_DPA_MKC"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaPC_DPF_MKC: TfrxDMPMemoView
          Left = 230.400000000000000000
          Top = 595.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_DPF_MKC"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaPC_DPE_MKC: TfrxDMPMemoView
          Left = 556.799999999999900000
          Top = 595.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_DPE_MKC"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaPC_CMS_MKC: TfrxDMPMemoView
          Left = 921.600000000000000000
          Top = 595.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_CMS_MKC"]')
          TruncOutboundText = False
        end
        object frxDBEmpresaPC_MLC_MKC: TfrxDMPMemoView
          Left = 1190.400000000000000000
          Top = 595.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."PC_MLC_MKC"]')
          TruncOutboundText = False
        end
        object DMPLine2: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 280.500000000000000000
          Width = 1545.600000000000000000
          Color = clBlack
        end
        object DMPLine7: TfrxDMPLineView
          Left = 4.800000000000000000
          Top = 620.500000000000000000
          Width = 1545.600000000000000000
          Color = clBlack
        end
        object MRegimeTributario: TfrxDMPMemoView
          Left = 729.600000000000000000
          Top = 51.000000000000000000
          Width = 806.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[MRegimeTributario]')
          TruncOutboundText = False
        end
        object MNaturezaPessoaJuridica: TfrxDMPMemoView
          Left = 345.600000000000000000
          Top = 374.000000000000000000
          Width = 1200.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[MNaturezaPessoaJuridica]')
          WordWrap = False
          TruncOutboundText = False
        end
        object MAtividadePreponderante: TfrxDMPMemoView
          Left = 345.600000000000000000
          Top = 391.000000000000000000
          Width = 1200.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[MAtividadePreponderante]')
          WordWrap = False
          TruncOutboundText = False
        end
        object MEscrituracaoNfeECF: TfrxDMPMemoView
          Left = 345.600000000000000000
          Top = 408.000000000000000000
          Width = 1200.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[MEscrituracaoNfeECF]')
          WordWrap = False
          TruncOutboundText = False
        end
        object MIndicadorSituacaoEspecial: TfrxDMPMemoView
          Left = 345.600000000000000000
          Top = 425.000000000000000000
          Width = 1200.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[MIndicadorSituacaoEspecial]')
          TruncOutboundText = False
        end
        object MCodBaseCreditoPisCofins: TfrxDMPMemoView
          Left = 345.600000000000000000
          Top = 459.000000000000000000
          Width = 1200.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[MCodBaseCreditoPisCofins]')
          WordWrap = False
          TruncOutboundText = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 816.000000000000000000
        Width = 1555.200000000000000000
        DataSet = frxDBDataset_VEN_EMPRESA
        DataSetName = 'frxDBDataset_VEN_EMPRESA'
        Filter = '<frxDBDataset_VEN_EMPRESA."ID_EMPRESA"> = <frxDBEmpresa."ID">'
        RowCount = 0
        object frxDBDataset_VEN_EMPRESAID_COD_VEN: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'ID_COD_VEN'
          DataSet = frxDBDataset_VEN_EMPRESA
          DataSetName = 'frxDBDataset_VEN_EMPRESA'
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset_VEN_EMPRESA."ID_COD_VEN"]')
          TruncOutboundText = False
        end
        object frxDBDataset_VEN_EMPRESANM_VEN: TfrxDMPMemoView
          Left = 124.800000000000000000
          Width = 470.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_VEN'
          DataSet = frxDBDataset_VEN_EMPRESA
          DataSetName = 'frxDBDataset_VEN_EMPRESA'
          Frame.Style = fsDot
          Memo.UTF8W = (
            '[frxDBDataset_VEN_EMPRESA."NM_VEN"]')
          TruncOutboundText = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 867.000000000000000000
        Width = 1555.200000000000000000
        object DMPMemo11: TfrxDMPMemoView
          Align = baLeft
          Width = 1008.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx12cpi]
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Evolucao Sistemas - Fone: (33) 9916-2272')
          ParentFont = False
          TruncOutboundText = False
        end
        object MUsuario: TfrxDMPMemoView
          Left = 1008.000000000000000000
          Width = 547.200000000000100000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[MUsuario]')
          TruncOutboundText = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 17.000000000000000000
        Width = 1555.200000000000000000
        object Date: TfrxDMPMemoView
          Align = baRight
          Left = 1324.800000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          TruncOutboundText = False
        end
        object Time: TfrxDMPMemoView
          Align = baRight
          Left = 1440.000000000000000000
          Top = 17.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          TruncOutboundText = False
        end
        object Page: TfrxDMPMemoView
          Align = baRight
          Left = 1488.000000000000000000
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
          Left = 1392.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '000'
          HAlign = haRight
          Memo.UTF8W = (
            'PAGINA:')
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          Align = baCenter
          Left = 672.000000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed, fsx15cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE EMPRESAS')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Top = 17.000000000000000000
          Width = 1315.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Evolucao Sistemas - Versao 1.0.01')
          TruncOutboundText = False
        end
        object DMPCommand1: TfrxDMPCommand
          Left = 825.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          OnBeforePrint = 'DMPCommand1OnBeforePrint'
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 748.000000000000000000
        Width = 1555.200000000000000000
        object DMPMemo73: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 384.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold]
          Memo.UTF8W = (
            'Autorizado a Liberar Venda no Valor de:')
          ParentFont = False
          TruncOutboundText = False
        end
        object frxDBEmpresaVR_PED_MAX: TfrxDMPMemoView
          Left = 393.600000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'VR_PED_MAX'
          DataSet = frxDBEmpresa
          DataSetName = 'frxDBEmpresa'
          Memo.UTF8W = (
            '[frxDBEmpresa."VR_PED_MAX"]')
          TruncOutboundText = False
        end
        object DMPMemo74: TfrxDMPMemoView
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo75: TfrxDMPMemoView
          Left = 124.800000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          FontStyle = []
          HAlign = haRight
          Memo.UTF8W = (
            'VENDEDOR')
          ParentFont = False
          TruncOutboundText = False
        end
      end
    end
  end
  object DSPaises: TDataSource
    DataSet = DMcadastro.CDSPaises
    Left = 700
    Top = 665
  end
end
