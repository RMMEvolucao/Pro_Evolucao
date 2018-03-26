inherited FormVendedor: TFormVendedor
  Caption = 'FormVendedor'
  ClientHeight = 706
  ClientWidth = 1018
  ExplicitTop = -42
  ExplicitWidth = 1024
  ExplicitHeight = 735
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1018
    Height = 706
    ExplicitWidth = 1018
    ExplicitHeight = 706
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 1010
      ExplicitHeight = 675
      inherited PanelConsulta: TPanel
        Width = 1010
        ExplicitWidth = 1010
        inherited cbConsulta: TComboBox
          OnSelect = cbConsultaSelect
          Items.Strings = (
            'C'#243'digo'
            'Nome Vendedor'
            'CPF/CNPJ')
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
        inherited SpeedButton2: TSpeedButton
          Left = 388
          ExplicitLeft = 388
        end
        inherited SpeedButton4: TSpeedButton
          Left = 380
          ExplicitLeft = 380
        end
        object SpeedButton5: TSpeedButton
          AlignWithMargins = True
          Left = 319
          Top = 1
          Width = 60
          Height = 48
          Cursor = crHandPoint
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = '&Senha'
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF2A00FFFF4A
            26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A
            26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF4A
            26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A
            26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF4A
            26FFFF2A00FFFFFFFFFFFFFFFFFFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A
            26FFFF2A00FFFFFFFFFFFFFFFFFFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF2A
            00FFFF2A00FFFFFFFFFFFFFFFFFFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A
            00FFFF2A00FFFFFFFFFFFFFFFFFFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF4A
            26FFFF2A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF2A
            00FFFF2A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF2A00FFFFFFFFFFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF4A
            26FFFF2A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF4A
            26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF4A
            26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF4A
            26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A
            26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF4A26FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A
            00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FFFF2A00FF}
          Layout = blGlyphTop
          Transparent = False
          ExplicitLeft = 369
          ExplicitTop = -2
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1010
        Height = 562
        DataSource = DSpadrao
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'C'#243'digo'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_VEN'
            Title.Caption = 'Nome Vendedor'
            Width = 261
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ST_VEN'
            Title.Caption = 'Situa'#231#227'o'
            Width = 271
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TP_VEN'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DT_CAD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DT_ANV'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NM_VEN_RAZ'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NO_FON'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NO_FAX'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NO_CEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CD_PAI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NO_CNP_CPF'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NO_INS_EST'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'E_MAIL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'HOME_PAGE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CD_BCO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NM_BCO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CD_AGC'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NO_CTA_COR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CD_CTB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CD_CTB_CRD'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CD_CTB_DEB'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SN_CMS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SN_RLT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PC_CMS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CD_FOR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DS_SNH'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FM_MET_1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VR_MET_1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TP_MET_1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FM_MET_2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VR_MET_2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TP_MET_2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FM_MET_3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VR_MET_3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TP_MET_3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FM_MET_4'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VR_MET_4'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TP_MET_4'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FM_MET_5'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VR_MET_5'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TP_MET_5'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FM_MET_6'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VR_MET_6'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TP_MET_6'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FM_MET_7'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VR_MET_7'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TP_MET_7'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FM_MET_8'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VR_MET_8'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TP_MET_8'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CD_SUP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PC_CMS_SUP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DS_OBS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SN_CLI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SN_PDT'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SN_PED'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SN_OCM'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SN_DIV_FIN'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Title.Caption = 'Ultima altera'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VER_ATU'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_CEP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NM_BAI'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NM_CID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NM_RUA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NO_CEP'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UF_CID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NO_EDR'
            Visible = False
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1010
      ExplicitHeight = 675
      inherited Panel2: TPanel
        Top = 627
        Width = 1010
        Height = 48
        ExplicitTop = 627
        ExplicitWidth = 1010
        ExplicitHeight = 48
        inherited btnCancelar: TSpeedButton
          Height = 46
          ExplicitHeight = 46
        end
        inherited btnGravar: TSpeedButton
          Height = 46
          ExplicitHeight = 46
        end
        inherited SpeedButton9: TSpeedButton
          Height = 48
          ExplicitHeight = 48
        end
        inherited SpeedButton1: TSpeedButton
          Height = 48
          ExplicitHeight = 48
        end
        object Button6: TButton
          Left = 472
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Button6'
          TabOrder = 0
          Visible = False
          OnClick = Button6Click
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1010
        Height = 47
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 15
          Top = 15
          Width = 119
          Height = 16
          Caption = 'C'#243'digo do vendedor:'
        end
        object Label2: TLabel
          Left = 352
          Top = 15
          Width = 56
          Height = 16
          Caption = 'Cadastro:'
        end
        object Label3: TLabel
          Left = 689
          Top = 15
          Width = 41
          Height = 16
          Caption = 'Status:'
        end
        object DBText_ID: TcxDBTextEdit
          Left = 139
          Top = 12
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
          Width = 48
        end
        object CBTP_VEN: TDBComboBox
          Left = 193
          Top = 12
          Width = 145
          Height = 24
          Style = csDropDownList
          DataField = 'TP_VEN'
          DataSource = DSpadrao
          Items.Strings = (
            'Interno'
            'Externo')
          TabOrder = 1
        end
        object DBedit_DT_CAD: TcxDBTextEdit
          Left = 411
          Top = 12
          DataBinding.DataField = 'DT_CAD'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          TabOrder = 2
          Width = 128
        end
        object DBComboBox2: TDBComboBox
          Left = 736
          Top = 12
          Width = 146
          Height = 24
          Style = csDropDownList
          DataField = 'ST_VEN'
          DataSource = DSpadrao
          Items.Strings = (
            'ATIVO'
            'DESATIVADO')
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 47
        Width = 1010
        Height = 120
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label4: TLabel
          Left = 39
          Top = 23
          Width = 95
          Height = 16
          Caption = 'Nome vendedor:'
        end
        object Label5: TLabel
          Left = 671
          Top = 23
          Width = 60
          Height = 16
          Caption = 'CNPJ/CPF:'
        end
        object Label6: TLabel
          Left = 19
          Top = 56
          Width = 115
          Height = 16
          Caption = 'Raz'#227'o do vendedor:'
        end
        object Label7: TLabel
          Left = 23
          Top = 89
          Width = 111
          Height = 16
          Caption = 'Receber Comiss'#227'o:'
        end
        object Label8: TLabel
          Left = 252
          Top = 89
          Width = 76
          Height = 16
          Caption = '% Comiss'#227'o:'
        end
        object Label9: TLabel
          Left = 662
          Top = 89
          Width = 69
          Height = 16
          Caption = 'Anivers'#225'rio:'
        end
        object Dbedit_NM_VEN: TcxDBTextEdit
          Left = 139
          Top = 20
          DataBinding.DataField = 'NM_VEN'
          DataBinding.DataSource = DSpadrao
          TabOrder = 0
          Width = 429
        end
        object DbEdit_NM_VEN_RAZ: TcxDBTextEdit
          Left = 139
          Top = 53
          DataBinding.DataField = 'NM_VEN_RAZ'
          DataBinding.DataSource = DSpadrao
          TabOrder = 1
          Width = 429
        end
        object DbEdit_PC_CMS: TcxDBTextEdit
          Left = 334
          Top = 86
          DataBinding.DataField = 'PC_CMS'
          DataBinding.DataSource = DSpadrao
          TabOrder = 4
          Width = 48
        end
        object CB_SN_CMS: TDBComboBox
          Left = 139
          Top = 86
          Width = 104
          Height = 24
          Style = csDropDownList
          DataField = 'SN_CMS'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'N'#194'O')
          TabOrder = 3
        end
        object DBEdit_NO_CNP_CPF: TcxDBTextEdit
          Left = 736
          Top = 20
          DataBinding.DataField = 'NO_CNP_CPF'
          DataBinding.DataSource = DSpadrao
          TabOrder = 2
          Width = 162
        end
        object Dbedit_DT_ANV: TcxDBDateEdit
          Left = 736
          Top = 86
          DataBinding.DataField = 'DT_ANV'
          DataBinding.DataSource = DSpadrao
          TabOrder = 5
          Width = 162
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 167
        Width = 1010
        Height = 47
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label10: TLabel
          Left = 25
          Top = 14
          Width = 109
          Height = 16
          Caption = 'C'#243'digo Supervisor:'
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 139
          Top = 11
          TabOrder = 0
          Width = 48
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 198
          Top = 11
          Enabled = False
          TabOrder = 1
          Width = 370
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 214
        Width = 1010
        Height = 412
        ActivePage = TabCadastro2
        Align = alTop
        TabOrder = 4
        object TabCadastro2: TTabSheet
          Caption = 'Cadastro'
          object GroupBox4: TGroupBox
            Left = 3
            Top = 3
            Width = 991
            Height = 198
            Caption = ' Endere'#231'o '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label11: TLabel
              Left = 100
              Top = 27
              Width = 27
              Height = 16
              Caption = 'Cep:'
            end
            object btn_cons_cep: TSpeedButton
              Left = 233
              Top = 22
              Width = 24
              Height = 27
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
            object Label12: TLabel
              Left = 69
              Top = 58
              Width = 58
              Height = 16
              Caption = 'Endere'#231'o:'
            end
            object Label13: TLabel
              Left = 88
              Top = 89
              Width = 39
              Height = 16
              Caption = 'Bairro:'
            end
            object Label14: TLabel
              Left = 83
              Top = 121
              Width = 44
              Height = 16
              Caption = 'Cidade:'
            end
            object Label17: TLabel
              Left = 704
              Top = 89
              Width = 20
              Height = 16
              Caption = 'UF:'
            end
            object Label15: TLabel
              Left = 676
              Top = 58
              Width = 50
              Height = 16
              Caption = 'N'#250'mero:'
            end
            object Label16: TLabel
              Left = 670
              Top = 121
              Width = 56
              Height = 16
              Caption = 'Inscri'#231#227'o:'
            end
            object Label29: TLabel
              Left = 102
              Top = 161
              Width = 25
              Height = 16
              Caption = 'Fax:'
            end
            object Label30: TLabel
              Left = 258
              Top = 161
              Width = 45
              Height = 16
              Caption = 'Celular:'
            end
            object DBEdit1: TDBEdit
              Left = 132
              Top = 24
              Width = 93
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'NO_CEP'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit_NM_RUA: TDBEdit
              Left = 132
              Top = 55
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
              Left = 729
              Top = 55
              Width = 96
              Height = 24
              DataField = 'NO_EDR'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit_NM_BAI: TDBEdit
              Left = 132
              Top = 86
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
            object DBEdit_NM_CID: TDBEdit
              Left = 132
              Top = 118
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'NM_CID'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit_UF_CID: TDBEdit
              Left = 729
              Top = 85
              Width = 60
              Height = 24
              CharCase = ecUpperCase
              Color = 16773077
              DataField = 'UF_CID'
              DataSource = DSpadrao
              Enabled = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBEditNO_INS_EST: TDBEdit
              Left = 729
              Top = 118
              Width = 162
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NO_INS_EST'
              DataSource = DSpadrao
              TabOrder = 6
            end
            object DBEdit_NO_FAX: TDBEdit
              Left = 132
              Top = 158
              Width = 96
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NO_FAX'
              DataSource = DSpadrao
              TabOrder = 7
            end
            object DBEdit_NO_CEL: TDBEdit
              Left = 312
              Top = 158
              Width = 104
              Height = 24
              CharCase = ecUpperCase
              DataField = 'NO_CEL'
              DataSource = DSpadrao
              TabOrder = 8
            end
          end
          object GroupBox5: TGroupBox
            Left = 3
            Top = 200
            Width = 991
            Height = 73
            Caption = ' Dados banc'#225'rios '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label18: TLabel
              Left = 7
              Top = 30
              Width = 120
              Height = 16
              Caption = 'C'#243'digo/Nome Banco:'
            end
            object Label19: TLabel
              Left = 390
              Top = 30
              Width = 50
              Height = 16
              Caption = 'Ag'#234'ncia:'
            end
            object Label20: TLabel
              Left = 634
              Top = 30
              Width = 90
              Height = 16
              Caption = 'Conta corrente:'
            end
            object Dbedit_NM_LOC_COB: TDBEdit
              Left = 193
              Top = 27
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
              Left = 448
              Top = 27
              Width = 114
              Height = 24
              CharCase = ecUpperCase
              DataField = 'CD_AGC'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit_NO_CTA_COR: TDBEdit
              Left = 730
              Top = 27
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
              Left = 132
              Top = 27
              Width = 48
              Height = 24
              MaxLength = 3
              TabOrder = 0
              OnExit = EdCodbancoExit
              OnKeyPress = EdCodbancoKeyPress
            end
          end
          object GroupBox6: TGroupBox
            Left = 3
            Top = 274
            Width = 991
            Height = 105
            Caption = ' Dados Internet '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Label21: TLabel
              Left = 57
              Top = 38
              Width = 70
              Height = 16
              Caption = 'Home page:'
            end
            object Label22: TLabel
              Left = 91
              Top = 71
              Width = 36
              Height = 16
              Caption = 'Email:'
            end
            object DBEdit_HOME_PAGE: TDBEdit
              Left = 133
              Top = 38
              Width = 429
              Height = 24
              CharCase = ecUpperCase
              DataField = 'HOME_PAGE'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_E_MAIL: TDBEdit
              Left = 133
              Top = 68
              Width = 429
              Height = 24
              DataField = 'E_MAIL'
              DataSource = DSpadrao
              TabOrder = 1
            end
          end
        end
        object TabAcesso: TTabSheet
          Caption = 'Acesso no mod'#250'lo de Or'#231'amento'
          ImageIndex = 1
          object GridPanel1: TGridPanel
            Left = 15
            Top = 56
            Width = 882
            Height = 241
            ColumnCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 250.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 125.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 125.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 125.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 125.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 125.000000000000000000
              end>
            ControlCollection = <
              item
                Column = 0
                Control = Label24
                Row = 0
              end
              item
                Column = 0
                Control = Label25
                Row = 1
              end
              item
                Column = 0
                Control = Label26
                Row = 2
              end
              item
                Column = 0
                Control = Label27
                Row = 3
              end
              item
                Column = 0
                Control = Label28
                Row = 4
              end
              item
                Column = 2
                Control = CK_SN_CLI_EDITAR
                Row = 0
              end
              item
                Column = 4
                Control = CK_SN_CLI_RELATORIOS
                Row = 0
              end
              item
                Column = 2
                Control = CK_SN_PDT_EDITAR
                Row = 1
              end
              item
                Column = 1
                Control = CK_SN_ORM_INCLUIR
                Row = 2
              end
              item
                Column = 2
                Control = CK_SN_ORM_EDITAR
                Row = 2
              end
              item
                Column = 3
                Control = CK_SN_ORM_EXCLUIR
                Row = 2
              end
              item
                Column = 4
                Control = CK_SN_ORM_RELATORIOS
                Row = 2
              end
              item
                Column = 5
                Control = CK_SN_ORM_ULTILITARIOS
                Row = 2
              end
              item
                Column = 1
                Control = CK_SN_PED_INCLUIR
                Row = 3
              end
              item
                Column = 2
                Control = CK_SN_PED_EDITAR
                Row = 3
              end
              item
                Column = 3
                Control = CK_SN_PED_EXCLUIR
                Row = 3
              end
              item
                Column = 4
                Control = CK_SN_PED_RELATORIOS
                Row = 3
              end
              item
                Column = 5
                Control = CK_SN_PED_ULTILITARIOS
                Row = 3
              end
              item
                Column = 2
                Control = SN_DIV_FIN_EDITAR
                Row = 4
              end
              item
                Column = 1
                Control = CK_SN_CLI_INCLUIR
                Row = 0
              end>
            RowCollection = <
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end
              item
                SizeStyle = ssAbsolute
                Value = 30.000000000000000000
              end>
            TabOrder = 0
            DesignSize = (
              882
              241)
            object Label24: TLabel
              Left = 68
              Top = 8
              Width = 115
              Height = 16
              Anchors = []
              Caption = 'Cadastro de cliente:'
              ExplicitLeft = 71
            end
            object Label25: TLabel
              Left = 98
              Top = 38
              Width = 55
              Height = 16
              Anchors = []
              Caption = 'Produtos:'
              ExplicitLeft = 101
            end
            object Label26: TLabel
              Left = 89
              Top = 68
              Width = 74
              Height = 16
              Anchors = []
              Caption = 'Or'#231'amentos:'
              ExplicitLeft = 92
            end
            object Label27: TLabel
              Left = 63
              Top = 98
              Width = 125
              Height = 16
              Anchors = []
              Caption = 'Pedidos para Faturar:'
              ExplicitLeft = 66
            end
            object Label28: TLabel
              Left = 65
              Top = 128
              Width = 122
              Height = 16
              Anchors = []
              Caption = 'Plano de pagamento:'
              ExplicitLeft = 68
            end
            object CK_SN_CLI_EDITAR: TCheckBox
              Left = 432
              Top = 7
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 0
            end
            object CK_SN_CLI_RELATORIOS: TCheckBox
              Left = 682
              Top = 7
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 1
            end
            object CK_SN_PDT_EDITAR: TCheckBox
              Left = 432
              Top = 37
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 2
            end
            object CK_SN_ORM_INCLUIR: TCheckBox
              Left = 307
              Top = 67
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 3
            end
            object CK_SN_ORM_EDITAR: TCheckBox
              Left = 432
              Top = 67
              Width = 13
              Height = 17
              Anchors = []
              Caption = 'CK_SN_ORM_EDITAR'
              TabOrder = 4
            end
            object CK_SN_ORM_EXCLUIR: TCheckBox
              Left = 557
              Top = 67
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 5
            end
            object CK_SN_ORM_RELATORIOS: TCheckBox
              Left = 682
              Top = 67
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 6
            end
            object CK_SN_ORM_ULTILITARIOS: TCheckBox
              Left = 807
              Top = 67
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 7
            end
            object CK_SN_PED_INCLUIR: TCheckBox
              Left = 307
              Top = 97
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 8
            end
            object CK_SN_PED_EDITAR: TCheckBox
              Left = 432
              Top = 97
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 9
            end
            object CK_SN_PED_EXCLUIR: TCheckBox
              Left = 557
              Top = 97
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 10
            end
            object CK_SN_PED_RELATORIOS: TCheckBox
              Left = 682
              Top = 97
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 11
            end
            object CK_SN_PED_ULTILITARIOS: TCheckBox
              Left = 807
              Top = 97
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 12
            end
            object SN_DIV_FIN_EDITAR: TCheckBox
              Left = 432
              Top = 127
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 13
            end
            object CK_SN_CLI_INCLUIR: TCheckBox
              Left = 307
              Top = 7
              Width = 13
              Height = 17
              Anchors = []
              TabOrder = 14
            end
          end
          object Button1: TButton
            Left = 265
            Top = 32
            Width = 127
            Height = 25
            Caption = 'Incluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Button2: TButton
            Left = 390
            Top = 32
            Width = 127
            Height = 25
            Caption = 'Editar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object Button3: TButton
            Left = 515
            Top = 32
            Width = 126
            Height = 25
            Caption = 'Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object Button4: TButton
            Left = 639
            Top = 32
            Width = 127
            Height = 25
            Caption = 'Relat'#243'rios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object Button5: TButton
            Left = 764
            Top = 32
            Width = 133
            Height = 25
            Caption = 'Ultilit'#225'rios'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
        end
        object TabObs: TTabSheet
          Caption = 'Observa'#231#227'o'
          ImageIndex = 2
          object Label23: TLabel
            Left = 3
            Top = 3
            Width = 130
            Height = 16
            Caption = 'Informe a observa'#231#227'o:'
          end
          object DBMemo1: TDBMemo
            Left = 3
            Top = 25
            Width = 988
            Height = 357
            DataSource = DSpadrao
            TabOrder = 0
          end
        end
        object TabMetas: TTabSheet
          Caption = 'Metas de Venda'
          ImageIndex = 3
          OnShow = TabMetasShow
          object gpMetas: TGroupBox
            Left = 15
            Top = 46
            Width = 954
            Height = 69
            TabOrder = 0
            object Label31: TLabel
              Left = 40
              Top = 9
              Width = 102
              Height = 16
              Caption = 'Grupo de Metas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label32: TLabel
              Left = 717
              Top = 9
              Width = 39
              Height = 16
              Caption = 'Indice'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 568
              Top = 9
              Width = 26
              Height = 16
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit3: TDBEdit
              Left = 717
              Top = 26
              Width = 113
              Height = 24
              DataField = 'INDICE'
              DataSource = DsVendedorMetas
              TabOrder = 0
            end
            object Btn_pesquisar: TcxButton
              Left = 6
              Top = 26
              Width = 29
              Height = 24
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000004A330C672C1F073D00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000009E6E1CD7BD892DFFBC8628FF281C0737000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000A06F1DD8BF8A2EFFBF8A2EFFBF8B2FFF422E0B5A000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000A1721FD7C18D32FFC18D31FFC18C31FF92681DC500000000000000000000
                00000000000000000000291D0831583E116C583E116C2B1E093400000000A073
                22D4C39035FFC29035FFC38F36FF946A1FC50000000000000000000000000000
                00001B140621AD7D28E0C59138FFC6943BFFC6943BFFC59138FFAF7F28E5C592
                36FFC69339FFC6943AFF976C20C5000000000000000000000000000000001A13
                061FC89336FFC8973FFFB7862FEA76551C9475541B91B6852FE9C8973EFFC896
                3DFFC89539FF946A22BE0000000000000000000000000000000000000000AE7F
                2DD9CB9A43FF866120A900000000000000000000000000000000835E1FA5CB9A
                42FFAA7D2CD800000000000000000000000000000000000000001C140722CD9B
                43FFC2913AF1000000000000000000000000000000000000000000000000C190
                38F0CD9B44FF221908270000000000000000000000000000000046341256D0A1
                4CFF886527A30000000000000000000000000000000000000000000000008764
                259FD0A14CFF523C165D0000000000000000000000000000000045331253D3A3
                50FF8E6B2BA80000000000000000000000000000000000000000000000008E6A
                29A5D3A350FF503B165A00000000000000000000000000000000140F0618D4A5
                4EFFD3A148FB000000000000000000000000000000000000000000000000D2A1
                48FAD4A54EFF1A14081D0000000000000000000000000000000000000000A880
                36C4D5AA5AFFA87F34C501010001000000000000000000000000A67D33C3D5AA
                5AFFAB8136C80000000000000000000000000000000000000000000000000E0B
                040FD7A54BFAD7AC5DFFD9A950FFA17B36B7A37C36B8DAA94FFFD7AC5DFFD5A2
                4AF80F0B05100000000000000000000000000000000000000000000000000000
                00000C09040DA47D36BCDCAC56FFDAAD5DFFDAAD5DFFDCAC56FFA57E36BE0D0A
                040E000000000000000000000000000000000000000000000000000000000000
                000000000000000000000C09040E3A2B12423B2D12440D0A040F000000000000
                0000000000000000000000000000000000000000000000000000}
              TabOrder = 1
              OnClick = Btn_pesquisarClick
            end
            object CbTipo: TComboBox
              Left = 568
              Top = 26
              Width = 125
              Height = 24
              Style = csDropDownList
              TabOrder = 2
              OnSelect = CbTipoSelect
              Items.Strings = (
                'KG'
                'R$'
                'Margem')
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 41
              Top = 26
              Width = 497
              Height = 24
              DataField = 'ID_GRU_PRO'
              DataSource = DsVendedorMetas
              Enabled = False
              KeyField = 'ID'
              ListField = 'NM_GRU_MET'
              ListSource = DsMetas
              ReadOnly = True
              TabOrder = 3
            end
          end
          object DBGrid2: TDBGrid
            Left = 15
            Top = 120
            Width = 954
            Height = 221
            DataSource = DsVendedorMetas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = DBGrid2CellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Grupo'
                Title.Caption = 'Grupo Metas'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 732
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Title.Caption = 'Tipo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'INDICE'
                Title.Caption = 'Indice'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 88
                Visible = True
              end>
          end
          object Btn_Incluir: TcxButton
            Left = 18
            Top = 16
            Width = 74
            Height = 24
            Hint = 'Insert'
            Caption = '&Insert'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000000000000000000000000000D09021150370D7052390D7252390D725138
              0D710C0902100000000000000000000000000000000000000000000000000000
              0000000000000000000000000000704E138FBE892DFFBE882BFFBE882BFFBE89
              2DFF755214990000000000000000000000000000000000000000000000000000
              0000000000000000000000000000714F148FBF8A2EFFBE892EFFBE892EFFBF8A
              2EFF7C5817A00000000000000000000000000000000000000000000000000000
              00000000000000000000000000007251168FC18D31FFC18D30FFC18D30FFC18D
              31FF7D5818A00000000000000000000000000000000000000000000000000000
              00000000000000000000000000006E4E168BC39036FFC29035FFC29035FFC390
              35FF7B571A9D00000000000000000000000000000000000000000D0A03107A57
              1B94805C1D9B7F5B1D9A79581B97A17325D2C69339FFC69339FFC69339FFC693
              39FFA67926D9755419937C591C97805C1D9B7A571B940D0A0310573E1370C897
              3FFFC8963DFFC8963DFFC8963DFFC8963DFFC7963DFFC7963DFFC7963DFFC796
              3DFFC8963DFFC8963EFFC8963DFFC8963DFFC8973FFF573F1371573F146ECB99
              42FFCB9840FFCB9840FFCB9840FFCB9840FFCB9840FFCB9840FFCB9840FFCB98
              40FFCB9840FFCB9840FFCB9840FFCB9840FFCB9942FF5A4115725B421771CC9D
              47FFCC9D46FFCC9D46FFCC9D46FFCC9D46FFCC9D46FFCC9D46FFCC9D46FFCC9D
              46FFCC9D46FFCC9D46FFCC9D46FFCC9D46FFCC9D47FF5C4317725B431870D0A1
              4DFFD0A04BFFD0A04BFFD0A04BFFD0A04BFFD0A04AFFD0A04AFFD0A04AFFD0A0
              4AFFD0A04BFFD0A04BFFD0A04BFFD0A04BFFD0A14DFF5C4418710E0A04107C5C
              238D7D5E248E7D5D248E7759228AAA8032CED3A34FFFD3A34EFFD3A34EFFD3A3
              4FFFB08435D57558228A7D5D248E7D5E248E7C5C238D0F0B0411000000000000
              00000000000000000000000000007A5B238BD4A653FFD5A652FFD5A652FFD4A6
              53FF8766299D0000000000000000000000000000000000000000000000000000
              00000000000000000000000000008362288FD6A958FFD7A956FFD7A956FFD6A9
              57FF8F6C2DA00000000000000000000000000000000000000000000000000000
              00000000000000000000000000008464298FD8AB5BFFD9AA59FFD9AA59FFD8AB
              5AFF906E2FA00000000000000000000000000000000000000000000000000000
              000000000000000000000000000085652A8FD8AD5FFFD9AE5EFFD9AE5EFFD9AD
              5FFF8D6B2E9A0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000100C0511624A1F70634C2072634C2072624A
              1F700F0B05100000000000000000000000000000000000000000}
            OptionsImage.ImageIndex = 4
            TabOrder = 2
            OnClick = Btn_IncluirClick
          end
          object Btn_excluir: TcxButton
            Left = 178
            Top = 16
            Width = 74
            Height = 24
            Caption = 'Excluir'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000003122084251380D714F360D6E50370D6F4F370D6E4F370D6E4F37
              0D6E4F370D6E51380D7131220842000000000000000000000000000000000000
              000000000000B98324F5BC8526FFBD882BFFBC8627FFBC8629FFBC8627FFBC86
              29FFBD8629FFBC8628FFB78125F5000000000000000000000000000000000000
              000000000000C28A27FF2F21084193681CC950380E6D7351169D5F4311826446
              12897F5A19AD422E0B5BBE8728FE000000000000000000000000000000000000
              000000000000C48C2BFF2F2109409C6F21D051390F6D795619A3654714886547
              1388865F1BB3422E0C59C18B2BFF000000000000000000000000000000000000
              000000000000C68E2EFF2C1F093BA17424D54F39106A7D591BA5684A168A6447
              14868D651FBA3F2C0C54C48E2EFF000000000000000000000000000000000000
              000000000000C69132FF281D0835A77928D94F391168815D1EA86C4D188C6447
              1683926A23BE3C2B0C4FC58F32FF000000000000000000000000000000000000
              000000000000C99436FF251B0830AF802DE04E381165856120AB6F501B8E6448
              1681996F27C438280C49C79436FF000000000000000000000000000000000000
              000004030106CC983AFF2118082AB58531E44E391263896423AD74551D926248
              187D9F752BC935270C44CA963AFF050401060000000000000000000000000000
              00000D09030FCD9A3DFF1F160726BB8C37E94D3813608D6826AF775721946248
              197AA67C30CE33250C40CD9A40FF0D0A030F0000000000000000000000000000
              000015100518D09E41FF1A130720C3923CEF4B37135C916C2AB27B5C23976248
              1A78AD8234D42F220C3AD09D44FF161006180000000000000000000000000000
              00001D160821D3A046FF0E0A0411CA9941F445331353926E2CB17B5C25955B44
              196EB28638D7241B0A2CD3A148FF1E1608210000000000000000000000000000
              000022190A26D6A247FFCF9B3BF7D6A346FFD19C3EF9D5A143FED4A141FDD29D
              3FFAD6A245FFCF9B3BF7D6A348FF221A0A260000000000000000000000000000
              00005E461C6C59421A68594219685841196759421A6858411967584119675841
              1967584119675942196859421A685C451B6C0000000000000000000000000000
              0000E1AB4DFFDBAB52FFDBAB51FFD9A952FFD9A954FFD9A951FFD9A951FFD9AA
              54FFD9A951FFDBAB51FFDBAB52FFDEA94CFF0000000000000000000000000000
              0000000000000000000000000000463415508A67299E31250F382E230E35BE8F
              38DA020101020000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000005E481D6C6B51217A6C52217B4534
              154E000000000000000000000000000000000000000000000000}
            TabOrder = 3
            OnClick = Btn_excluirClick
          end
          object btn_Editar: TcxButton
            Left = 98
            Top = 16
            Width = 74
            Height = 24
            Caption = 'Editar'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000000000000000000000000000000000000806010B3726
              094C000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000002F2107417350
              12A06445108B583C0E7500000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000006748
              128D000000006647108CBD8626FF4A340D630000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000006345
              11827F5917ABC08B2DFFC18D32FFC08C30FF9E6F1ED50C09020F000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C28C2EFFC38F34FFC28E33FFC38E34FFC39035FF533A106F0906020B0000
              0000000000000000000000000000000000000000000000000000000000000000
              00005B411375C59239FFC69339FFC6933BFFBC8A2DF6412E0D56C28D2DFF110C
              0415000000000000000000000000000000000000000000000000000000000000
              000000000000B3822CE6C8963FFFBF8C31F638280C4978561A9B835F1FAAC791
              31FF110C04150000000000000000000000000000000000000000000000000000
              000000000000120D041566491781261C0931A97C2BD5CB9B44FF906823B68560
              21A8CA9435FF110D041500000000000000000000000000000000000000000000
              00000000000000000000110D0414CD9735FF694D1983C19038F1CD9D49FF926A
              26B6876324A8CC9839FF120D0515000000000000000000000000000000000000
              0000000000000000000000000000140E0517D09A39FF6A4E1B82C5943CF1D0A1
              4DFF946D29B6896525A8D09B3DFF000000000000000000000000000000000000
              000000000000000000000000000000000000140F0517D39E3DFF694E1D80C697
              3FF1D3A451FF99732CB95E451971553F1767281E0B2D00000000000000000000
              00000000000000000000000000000000000000000000140F0617D7A140FF6C4F
              1E80CB9B44F2D4A652FF45331352D19F45F9D5A347FF0906030A000000000000
              0000000000000000000000000000000000000000000000000000140F0617D9A4
              43FF644A1C755F481C70A47C33C1D6A958FFD7A852FF281E0B2F000000000000
              0000000000000000000000000000000000000000000000000000000000000101
              00014C391658C09441E0D8AB5BFFD8AB5BFFA17A33BB00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000382B123DDBAB54FFDAAE5CFFA98036C30000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000161107193E2F1347000000000000000000000000}
            TabOrder = 4
            OnClick = btn_EditarClick
          end
          object GBControle: TGroupBox
            Left = 15
            Top = 344
            Width = 954
            Height = 36
            TabOrder = 5
            object Btn_Gravar: TcxButton
              Left = 5
              Top = 6
              Width = 74
              Height = 24
              Caption = 'Gravar'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000003223083E5E410F78000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000047310C5DBD8729FFBE882DFF6B4B12910000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000543B0F6DBF8A2CFFC08B2FFFBE8A2FFDBF892CFF271C
                0732000000000000000000000000000000000000000000000000000000000000
                0000000000006144127DC28D32FFC28E33FFC18E33FFC18E33FFC28E33FFB280
                26EE000000000000000000000000000000000000000000000000000000000000
                00006B4C1689C59136FFC59238FFC49138FEC59035FFC59135FFC59238FFC591
                38FF7B571A9F0000000000000000000000000000000000000000000000006448
                167CC8943BFFC8953CFFC8963CFFC79337FF31230B3F6B4D178AC8953DFFC895
                3CFFC7943AFF32240B3D00000000000000000000000000000000241A092DC998
                3EFFCB9941FFCB9942FFCA973BFF2E220B390000000000000000B1832FE0CB99
                42FFCB9941FFC18F36F5010100010000000000000000000000006248197BCE9D
                49FFCE9D48FFCE9A3FFF291E0A310000000000000000000000001B14071FCE9B
                40FFCE9D46FFCE9D48FF946C27B6000000000000000000000000130E0516C898
                3EF0B88B37DC1913071D00000000000000000000000000000000000000006349
                1A75D1A04CFFCFA04AFDD1A04BFF4F3B155D0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000AD8234CFD4A552FFD4A550FFD4A148FF110D051300000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000D0A040ED7A64CFFD5A855FFD5A856FFB48939D600000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000004B381653D8AA56FFD7AB58FFD8AA59FF49371655000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000926F2FA5D8AD5EFFDAAC58FF31250F38000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000664D206C392B123C00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              TabOrder = 0
              OnClick = Btn_GravarClick
            end
            object Btn_cancelar: TcxButton
              Left = 85
              Top = 6
              Width = 74
              Height = 24
              Caption = 'Cancelar'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                00001C130427110C031700000000000000000000000000000000000000000000
                000000000000000000000F0A02141E15052A0000000000000000000000007350
                129EBC8527FFBA8325FF3727094C000000000000000000000000000000000000
                0000000000002D20083EBB8325FFBC8627FF7D5615AC000000001B130425BE87
                29FFBF8A2EFFBF8A2FFFBC8727FF38270A4C0000000000000000000000000000
                00002F21083FBD8727FFBF8A2FFFBF8A2EFFBE8829FF2217062E0D090211BF89
                2AFFC18C32FFC18B31FFC18C32FFBE882AFF39280A4C00000000000000002F21
                093FBE882BFFC18C32FFC18B31FFC18C32FFBF892AFF110C0317000000002B1F
                0839C28C2EFFC38F35FFC28E33FFC38F34FFC28B2FFF36260A482C1F093AC28B
                2DFFC38F34FFC28E33FFC38F34FFC28C2EFF37270B4A00000000000000000000
                00002C200939C58F31FFC69339FFC69337FFC69338FFC58F32FFC38F30FFC693
                38FFC69337FFC69339FFC59032FF38280C4A0000000000000000000000000000
                0000000000002C1F0A38C79334FFC8963EFFC7963DFFC8963DFFC8963DFFC796
                3DFFC8963EFFC79336FF38290D49000000000000000000000000000000000000
                00000000000000000000281D0A33C79438FDCB9941FFCB9840FFCB9840FFCB99
                41FFCB973AFF36270D4400000000000000000000000000000000000000000000
                0000000000000000000030230C3BCD993EFFCC9D46FFCC9D46FFCC9D46FFCC9D
                46FFCC993EFF35270D4200000000000000000000000000000000000000000000
                00000000000034270E3FCF9C42FFD0A04BFFD0A049FFD0A04AFFD0A04AFFD0A0
                49FFD0A04BFFCF9C41FF3C2C1049000000000000000000000000000000000000
                000035270F3FD2A145FFD3A351FFD3A24FFFD3A351FFD3A146FFD2A044FED3A3
                51FFD3A24FFFD3A351FFD2A145FF3E2E114A0000000000000000000000003629
                0F3FD6A34AFFD4A755FFD5A753FFD4A755FFD6A44AFF3A2B11452C210C34D6A4
                49FFD4A755FFD5A753FFD4A755FFD6A34AFF4030134B00000000100C0513D7A5
                4BFFD6AA58FFD7AA55FFD6AA58FFD8A74DFF3E2E134900000000000000003125
                0F39D8A74BFFD6AA58FFD7AA56FFD6AA58FFD7A74CFF15100619221A0A28D9AA
                54FFD8AC5BFFD8AC5CFFDAA950FF3F3013490000000000000000000000000000
                000032261039DBA94EFFD8AC5BFFD8AC5CFFD9AA54FF261C0B2C000000008E6C
                2DA4DCAC57FFDCAB51FF3F301449000000000000000000000000000000000000
                00000000000032261039DCAB50FFDCAC56FF916E2EA700000000000000000000
                0000231A0B28130F061600000000000000000000000000000000000000000000
                000000000000000000000E0B041021190A260000000000000000}
              TabOrder = 1
              OnClick = Btn_cancelarClick
            end
          end
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 808
    Top = 192
  end
  inherited ActionList1: TActionList
    Left = 720
    Top = 192
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSVendedor
    Left = 640
    Top = 192
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
    StoredProcName = 'SP_GEN_DB_VENDEDOR_ID'
    Left = 599
    Top = 143
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 600
    Top = 32
  end
  object Dscobranca: TDataSource
    DataSet = DMcadastro.CDSLocalCobranca
    Left = 908
    Top = 187
  end
  object FrVendedor: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43035.703587233800000000
    ReportOptions.LastChange = 43038.352925162000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 944
    Top = 32
    Datasets = <
      item
        DataSet = frxDBDatasetVendedor
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
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Date: TfrxMemoView
          Left = 559.370440000000000000
          Top = 21.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 648.299630000000000000
          Top = 21.897650000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 689.653990000000000000
          Top = 0.220470000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 650.079160000000000000
          Top = 0.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Pag:')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 260.787570000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Rela'#231#227'o dos Vendedores')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 279.685220000000000000
          Top = 22.677180000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Solution - Sistema Integrado')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetVendedor
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDatasetVendedor
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1NM_VEN: TfrxMemoView
          Left = 68.031540000000000000
          Top = 0.779530000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'NM_VEN'
          DataSet = frxDBDatasetVendedor
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_VEN"]')
          ParentFont = False
        end
        object frxDBDataset1NM_RUA: TfrxMemoView
          Left = 253.228510000000000000
          Top = 0.779530000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          DataField = 'NM_RUA'
          DataSet = frxDBDatasetVendedor
          DataSetName = 'frxDBDataset1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_RUA"]')
          ParentFont = False
        end
        object frxDBDataset1NO_FON: TfrxMemoView
          Left = 434.645950000000000000
          Top = 0.779530000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          DataField = 'NO_FON'
          DataSet = frxDBDatasetVendedor
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_FON"]')
          ParentFont = False
        end
        object frxDBDataset1UF_CID: TfrxMemoView
          Left = 694.653990000000000000
          Top = 0.220470000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'UF_CID'
          DataSet = frxDBDatasetVendedor
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."UF_CID"]')
          ParentFont = False
        end
        object frxDBDataset1NM_CID: TfrxMemoView
          Left = 551.811380000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          DataField = 'NM_CID'
          DataSet = frxDBDatasetVendedor
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CID"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 68.031540000000000000
          Top = 2.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome Vendedor')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 434.645950000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 551.811380000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 695.315400000000000000
          Top = 3.779530000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetVendedor: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NM_VEN=NM_VEN'
      'ST_VEN=ST_VEN'
      'TP_VEN=TP_VEN'
      'DT_CAD=DT_CAD'
      'DT_ANV=DT_ANV'
      'NM_VEN_RAZ=NM_VEN_RAZ'
      'NO_FON=NO_FON'
      'NO_FAX=NO_FAX'
      'NO_CEL=NO_CEL'
      'CD_PAI=CD_PAI'
      'NO_CNP_CPF=NO_CNP_CPF'
      'NO_INS_EST=NO_INS_EST'
      'E_MAIL=E_MAIL'
      'HOME_PAGE=HOME_PAGE'
      'CD_BCO=CD_BCO'
      'NM_BCO=NM_BCO'
      'CD_AGC=CD_AGC'
      'NO_CTA_COR=NO_CTA_COR'
      'CD_CTB=CD_CTB'
      'CD_CTB_CRD=CD_CTB_CRD'
      'CD_CTB_DEB=CD_CTB_DEB'
      'SN_CMS=SN_CMS'
      'SN_RLT=SN_RLT'
      'PC_CMS=PC_CMS'
      'CD_FOR=CD_FOR'
      'DS_SNH=DS_SNH'
      'FM_MET_1=FM_MET_1'
      'VR_MET_1=VR_MET_1'
      'TP_MET_1=TP_MET_1'
      'FM_MET_2=FM_MET_2'
      'VR_MET_2=VR_MET_2'
      'TP_MET_2=TP_MET_2'
      'FM_MET_3=FM_MET_3'
      'VR_MET_3=VR_MET_3'
      'TP_MET_3=TP_MET_3'
      'FM_MET_4=FM_MET_4'
      'VR_MET_4=VR_MET_4'
      'TP_MET_4=TP_MET_4'
      'FM_MET_5=FM_MET_5'
      'VR_MET_5=VR_MET_5'
      'TP_MET_5=TP_MET_5'
      'FM_MET_6=FM_MET_6'
      'VR_MET_6=VR_MET_6'
      'TP_MET_6=TP_MET_6'
      'FM_MET_7=FM_MET_7'
      'VR_MET_7=VR_MET_7'
      'TP_MET_7=TP_MET_7'
      'FM_MET_8=FM_MET_8'
      'VR_MET_8=VR_MET_8'
      'TP_MET_8=TP_MET_8'
      'CD_SUP=CD_SUP'
      'PC_CMS_SUP=PC_CMS_SUP'
      'DS_OBS=DS_OBS'
      'SN_CLI=SN_CLI'
      'SN_PDT=SN_PDT'
      'SN_PED=SN_PED'
      'SN_OCM=SN_OCM'
      'SN_DIV_FIN=SN_DIV_FIN'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU'
      'ID_CEP=ID_CEP'
      'NM_BAI=NM_BAI'
      'NM_CID=NM_CID'
      'NM_RUA=NM_RUA'
      'NO_CEP=NO_CEP'
      'UF_CID=UF_CID'
      'NO_EDR=NO_EDR'
      'ID_BANCO=ID_BANCO')
    DataSet = DMcadastro.CDSVendedor
    BCDToCurrency = False
    Left = 932
    Top = 107
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 600
    Top = 88
  end
  object DsVendedorMetas: TDataSource
    DataSet = DMcadastro.CDSVendedor_Metas
    Left = 712
    Top = 264
  end
  object SP_GEN_Metas: TSQLStoredProc
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
    StoredProcName = 'SP_GEN_DB_VENDEDOR_META_ID'
    Left = 548
    Top = 251
  end
  object DsMetas: TDataSource
    DataSet = DMcadastro.CDSVendaMeta
    Left = 952
    Top = 264
  end
end
