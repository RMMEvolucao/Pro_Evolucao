inherited FormChqPdt: TFormChqPdt
  Left = 177
  Top = 108
  Caption = 'Cadastro de Cheques Pr'#233'-datados Abertos'
  ClientHeight = 701
  ClientWidth = 988
  ExplicitWidth = 994
  ExplicitHeight = 730
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 988
    Height = 701
    ActivePage = TabCadastro
    ExplicitWidth = 988
    ExplicitHeight = 701
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 980
      ExplicitHeight = 670
      inherited PanelConsulta: TPanel
        Width = 980
        Height = 110
        ExplicitWidth = 980
        ExplicitHeight = 110
        inherited LbFiltro: TLabel
          Top = 61
          Visible = False
          ExplicitTop = 61
        end
        inherited lbConsulta: TLabel
          Top = 61
          Visible = False
          ExplicitTop = 61
        end
        inherited BtConsultar: TButton [2]
          Top = 78
          TabOrder = 1
          Visible = False
          ExplicitTop = 78
        end
        inherited Edconsulta: TMaskEdit [3]
          Left = 207
          Top = 78
          TabOrder = 0
          Visible = False
          ExplicitLeft = 207
          ExplicitTop = 78
        end
        object GroupBox10: TGroupBox [4]
          Left = 0
          Top = 0
          Width = 980
          Height = 110
          Align = alClient
          TabOrder = 2
          DesignSize = (
            980
            110)
          object LB_FILTRO: TLabel
            Left = 16
            Top = 51
            Width = 87
            Height = 16
            Caption = 'Filtro Consulta:'
          end
          object GroupBox11: TGroupBox
            Left = 1
            Top = 4
            Width = 976
            Height = 44
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            object Label36: TLabel
              Left = 134
              Top = 14
              Width = 68
              Height = 16
              Caption = 'Data Inicial:'
            end
            object Label37: TLabel
              Left = 316
              Top = 14
              Width = 62
              Height = 16
              Caption = 'Data Final:'
            end
            object CB_TipoData: TComboBox
              Left = 15
              Top = 11
              Width = 108
              Height = 24
              Style = csDropDownList
              ItemIndex = 0
              TabOrder = 0
              Text = 'Vencimento'
              Items.Strings = (
                'Vencimento'
                'Inclus'#227'o'
                'Devolu'#231#227'o')
            end
            object DT_INI: TcxDateEdit
              Left = 208
              Top = 11
              Properties.ShowTime = False
              TabOrder = 1
              Width = 100
            end
            object DT_FIM: TcxDateEdit
              Left = 383
              Top = 11
              Properties.ShowTime = False
              TabOrder = 2
              Width = 100
            end
          end
        end
        inherited cbConsulta: TComboBox [5]
          Left = 16
          Top = 72
          Width = 242
          ItemIndex = 0
          TabOrder = 3
          Text = 'Nome Emitente'
          OnSelect = cbConsultaSelect
          Items.Strings = (
            'Nome Emitente'
            'Banco|Ag'#234'ncia|Conta|N'#176' Cheque'
            'Banda do Cheque'
            'Banco|Cheque'
            'Cliente')
          ExplicitLeft = 16
          ExplicitTop = 72
          ExplicitWidth = 242
        end
      end
      inherited Panel1: TPanel
        Width = 980
        ExplicitWidth = 980
        inherited SpeedButton2: TSpeedButton
          Left = 488
          ExplicitLeft = 388
        end
        inherited SpeedButton4: TSpeedButton
          Left = 480
          ExplicitLeft = 380
        end
        inherited SpeedButton3: TSpeedButton
          Left = 472
          ExplicitLeft = 472
        end
        object bBtnCheques: TSpeedButton
          AlignWithMargins = True
          Left = 411
          Top = 1
          Width = 60
          Height = 48
          Cursor = crHandPoint
          Margins.Left = 15
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alLeft
          Caption = '&Transferir'
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFFFFFFFFFFFFFFFFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFFFFFFFFFFFFFFFFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFFFFFFFFFF4E26FFFF2F00FFFFFFFFFFFFFFFFFFFF4E
            26FFFF2F00FFFFFFFFFFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF2F
            00FFFF2F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF4E
            26FFFF2F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFFFFFFFFFF2F00FFFF2F00FFFFFFFFFFFFFFFFFFFF2F
            00FFFF2F00FFFFFFFFFFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFFFFFFFFFFFFFFFFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFFFFFFFFFFFFFFFFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E
            26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF4E26FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F
            00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FFFF2F00FF}
          Layout = blGlyphTop
          Transparent = False
          ExplicitLeft = 319
          ExplicitTop = 2
        end
      end
      inherited DBGrid1: TDBGrid
        Top = 201
        Width = 980
        Height = 469
        DataSource = DSpadrao
        Columns = <
          item
            Expanded = False
            FieldName = 'NM_EMT'
            Title.Caption = 'Nome do Emitente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_CHQ'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_BCO'
            Title.Caption = 'Banco'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_LOC_COB'
            Title.Caption = 'Local'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_CHQ'
            Title.Caption = 'Valor'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_EMS'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VCT'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Title.Caption = 'Ultimo Registro'
            Visible = True
          end>
      end
      inherited ToolBar1: TToolBar
        Width = 980
        ButtonWidth = 64
        ExplicitWidth = 980
        inherited btnFechar: TToolButton
          ExplicitWidth = 64
        end
        inherited ToolButton6: TToolButton
          Left = 64
          ExplicitLeft = 64
        end
        inherited btnIncluir: TToolButton
          Left = 84
          ExplicitLeft = 84
          ExplicitWidth = 64
        end
        inherited ToolButton7: TToolButton
          Left = 148
          ExplicitLeft = 148
        end
        inherited btnModificar: TToolButton
          Left = 156
          ExplicitLeft = 156
          ExplicitWidth = 64
        end
        inherited ToolButton8: TToolButton
          Left = 220
          ExplicitLeft = 220
        end
        inherited btnExcluir: TToolButton
          Left = 228
          ExplicitLeft = 228
          ExplicitWidth = 64
        end
        inherited ToolButton12: TToolButton
          Left = 292
          ExplicitLeft = 292
        end
        inherited btnConsultar: TToolButton
          Left = 300
          ExplicitLeft = 300
          ExplicitWidth = 64
        end
        inherited ToolButton9: TToolButton
          Left = 364
          ExplicitLeft = 364
        end
        inherited btnImprimir: TToolButton
          Left = 372
          ExplicitLeft = 372
          ExplicitWidth = 64
        end
        inherited ToolButton10: TToolButton
          Left = 436
          ExplicitLeft = 436
        end
        object BtnCheques: TToolButton
          Left = 444
          Top = 0
          Caption = '&Transferir'
          ImageIndex = 5
          OnClick = BtnChequesClick
        end
        object ToolButton1: TToolButton
          Left = 508
          Top = 0
          Width = 8
          Caption = 'ToolButton1'
          ImageIndex = 6
          Style = tbsSeparator
        end
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 980
      ExplicitHeight = 670
      inherited Panel2: TPanel
        Top = 616
        Width = 980
        ExplicitTop = 616
        ExplicitWidth = 980
      end
      object GroupBoxGeral: TGroupBox
        Left = 0
        Top = 0
        Width = 980
        Height = 616
        Align = alClient
        Caption = ' Dados do Cheque '
        TabOrder = 1
        object GroupBox2: TGroupBox
          Left = 2
          Top = 18
          Width = 976
          Height = 38
          Align = alTop
          TabOrder = 0
          object Label1: TLabel
            Left = 107
            Top = 11
            Width = 45
            Height = 16
            Caption = 'Banda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LbDeposito: TLabel
            Left = 678
            Top = 11
            Width = 103
            Height = 16
            Caption = 'Local/Dep'#243'sito:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit_DS_BDA: TDBEdit
            Left = 156
            Top = 8
            Width = 514
            Height = 24
            DataField = 'DS_BDA'
            DataSource = DSpadrao
            TabOrder = 0
            OnExit = DBEdit_DS_BDAExit
            OnKeyPress = DBEdit_DS_BDAKeyPress
          end
          object DBEdit_DT_DPS: TDBEdit
            Left = 786
            Top = 8
            Width = 107
            Height = 24
            DataField = 'DT_DPS'
            DataSource = DSpadrao
            TabOrder = 1
          end
        end
        object GroupBox1: TGroupBox
          Left = 2
          Top = 56
          Width = 976
          Height = 62
          Align = alTop
          TabOrder = 1
          object Label2: TLabel
            Left = 104
            Top = 9
            Width = 117
            Height = 16
            Caption = 'N'#250'mero do Banco:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 362
            Top = 9
            Width = 45
            Height = 16
            Caption = 'Ag'#234'ncia'
          end
          object Label4: TLabel
            Left = 454
            Top = 9
            Width = 74
            Height = 16
            Caption = 'No. da Conta'
          end
          object Label5: TLabel
            Left = 560
            Top = 9
            Width = 101
            Height = 16
            Caption = 'N'#250'mero Cheque'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 691
            Top = 9
            Width = 86
            Height = 16
            Caption = 'Valor Cheque'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 843
            Top = 9
            Width = 77
            Height = 16
            Caption = 'Data Emiss'#227'o'
          end
          object DBEdit_NO_AGC: TDBEdit
            Left = 361
            Top = 31
            Width = 74
            Height = 24
            DataField = 'NO_AGC'
            DataSource = DSpadrao
            TabOrder = 2
          end
          object DBEdit_NO_CTA: TDBEdit
            Left = 454
            Top = 31
            Width = 100
            Height = 24
            DataField = 'NO_CTA'
            DataSource = DSpadrao
            TabOrder = 3
            OnEnter = DBEdit_NO_CTAEnter
            OnExit = DBEdit_NO_CTAExit
            OnKeyPress = DBEdit_NO_CTAKeyPress
          end
          object DBEdit_NO_CHQ: TDBEdit
            Left = 560
            Top = 31
            Width = 110
            Height = 24
            DataField = 'NO_CHQ'
            DataSource = DSpadrao
            TabOrder = 4
            OnKeyPress = DBEdit_NO_CHQKeyPress
          end
          object cxDBEdit_DT_EMS: TcxDBDateEdit
            Left = 843
            Top = 31
            DataBinding.DataField = 'DT_EMS'
            DataBinding.DataSource = DSpadrao
            TabOrder = 6
            Width = 121
          end
          object EdCodbanco: TEdit
            Left = 104
            Top = 31
            Width = 48
            Height = 24
            Color = clInfoBk
            Enabled = False
            MaxLength = 3
            TabOrder = 0
            OnExit = EdCodbancoExit
            OnKeyPress = EdCodbancoKeyPress
          end
          object Dbedit_NM_LOC_COB: TDBEdit
            Left = 159
            Top = 31
            Width = 191
            Height = 24
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'NM_LOC_COB'
            DataSource = dsCobranca
            Enabled = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit_VR_CHQ: TDBEdit
            Left = 691
            Top = 31
            Width = 121
            Height = 24
            DataField = 'VR_CHQ'
            DataSource = DSpadrao
            TabOrder = 5
          end
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 118
          Width = 976
          Height = 140
          Align = alTop
          TabOrder = 3
          object Label17: TLabel
            Left = 31
            Top = 46
            Width = 121
            Height = 16
            Caption = 'Nome do Emitente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 88
            Top = 80
            Width = 64
            Height = 16
            Caption = 'Cidade/UF:'
          end
          object Label19: TLabel
            Left = 92
            Top = 112
            Width = 60
            Height = 16
            Caption = 'CNPJ/CPF:'
          end
          object Label23: TLabel
            Left = 28
            Top = 14
            Width = 124
            Height = 16
            Caption = 'Cheque de Terceiros:'
          end
          object Label35: TLabel
            Left = 668
            Top = 18
            Width = 113
            Height = 16
            Caption = 'Situa'#231#227'o Cheque:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BtnConsultaEmitente: TSpeedButton
            Left = 231
            Top = 11
            Width = 25
            Height = 24
            OnClick = BtnConsultaEmitenteClick
          end
          object DBCombo_SN_TCR: TDBComboBox
            Left = 158
            Top = 11
            Width = 65
            Height = 24
            DataField = 'SN_TCR'
            DataSource = DSpadrao
            Items.Strings = (
              'NAO'
              'SIM')
            TabOrder = 0
            OnExit = DBCombo_SN_TCRExit
          end
          object DBEdit_NM_EMT: TDBEdit
            Left = 158
            Top = 43
            Width = 475
            Height = 24
            CharCase = ecUpperCase
            DataField = 'NM_EMT'
            DataSource = DSpadrao
            TabOrder = 1
          end
          object DBEdit_NM_CID_EMT: TDBEdit
            Left = 158
            Top = 76
            Width = 415
            Height = 24
            CharCase = ecUpperCase
            DataField = 'NM_CID_EMT'
            DataSource = DSpadrao
            TabOrder = 2
          end
          object DBEdit_UF_CID_EMT: TDBEdit
            Left = 588
            Top = 76
            Width = 45
            Height = 24
            CharCase = ecUpperCase
            DataField = 'UF_CID_EMT'
            DataSource = DSpadrao
            TabOrder = 3
          end
          object DBEdit_NO_CNP_CPF_Emitente: TDBEdit
            Left = 158
            Top = 109
            Width = 156
            Height = 24
            DataField = 'NO_CNP_CPF'
            DataSource = DSpadrao
            TabOrder = 4
            OnKeyPress = DBEdit_NO_CNP_CPF_EmitenteKeyPress
          end
          object CB_ST_CHQ: TComboBox
            Left = 786
            Top = 15
            Width = 162
            Height = 24
            Enabled = False
            TabOrder = 5
            OnSelect = CB_ST_CHQSelect
            Items.Strings = (
              'Pr'#233' Datado'
              'Baixado'
              'Pr'#233' Devolvido'
              'Devolvido'
              'Devolvido / Baixado')
          end
        end
        object GroupBox4: TGroupBox
          Left = 2
          Top = 420
          Width = 976
          Height = 46
          Align = alTop
          TabOrder = 4
          object Label8: TLabel
            Left = 36
            Top = 14
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
          object Label9: TLabel
            Left = 334
            Top = 14
            Width = 62
            Height = 16
            Caption = 'Anterior 1:'
          end
          object Label10: TLabel
            Left = 552
            Top = 14
            Width = 62
            Height = 16
            Caption = 'Anterior 2:'
          end
          object Label11: TLabel
            Left = 773
            Top = 14
            Width = 62
            Height = 16
            Caption = 'Anterior 3:'
          end
          object cxDBDateEdit_DT_VCT: TcxDBDateEdit
            Left = 158
            Top = 11
            DataBinding.DataField = 'DT_VCT'
            DataBinding.DataSource = DSpadrao
            TabOrder = 0
            Width = 121
          end
          object cxDBDateEdit_DT_VCT_1: TcxDBDateEdit
            Left = 399
            Top = 11
            DataBinding.DataField = 'DT_VCT_1'
            DataBinding.DataSource = DSpadrao
            Enabled = False
            TabOrder = 1
            Width = 121
          end
          object cxDBDateEdit_DT_VCT_2: TcxDBDateEdit
            Left = 618
            Top = 11
            DataBinding.DataField = 'DT_VCT_2'
            DataBinding.DataSource = DSpadrao
            Enabled = False
            TabOrder = 2
            Width = 121
          end
          object cxDBDateEdit_DT_VCT_3: TcxDBDateEdit
            Left = 838
            Top = 11
            DataBinding.DataField = 'DT_VCT_3'
            DataBinding.DataSource = DSpadrao
            Enabled = False
            TabOrder = 3
            Width = 121
          end
        end
        object GroupBox5: TGroupBox
          Left = 2
          Top = 258
          Width = 976
          Height = 162
          Align = alTop
          TabOrder = 2
          object Label12: TLabel
            Left = 67
            Top = 43
            Width = 88
            Height = 16
            Caption = 'Nome Cliente:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 90
            Top = 73
            Width = 64
            Height = 16
            Caption = 'Cidade/UF:'
          end
          object Label14: TLabel
            Left = 94
            Top = 102
            Width = 60
            Height = 16
            Caption = 'CNPJ/CPF:'
          end
          object Label15: TLabel
            Left = 98
            Top = 132
            Width = 55
            Height = 16
            Caption = 'Telefone:'
          end
          object Label16: TLabel
            Left = 293
            Top = 132
            Width = 45
            Height = 16
            Caption = 'Celular:'
          end
          object Label20: TLabel
            Left = 49
            Top = 14
            Width = 105
            Height = 16
            Caption = 'C'#243'digo do Cliente:'
          end
          object DBEdit_NM_CLI: TDBEdit
            Left = 158
            Top = 40
            Width = 475
            Height = 24
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'NM_CLI'
            DataSource = DSpadrao
            Enabled = False
            TabOrder = 1
          end
          object DBEdit_NM_CID: TDBEdit
            Left = 158
            Top = 70
            Width = 415
            Height = 24
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'NM_CID'
            DataSource = DSpadrao
            Enabled = False
            TabOrder = 2
          end
          object DBEdit_UF_CID: TDBEdit
            Left = 587
            Top = 70
            Width = 46
            Height = 24
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'UF_CID'
            DataSource = DSpadrao
            Enabled = False
            TabOrder = 3
          end
          object DBEdit_NO_CNP_CPF_CLI: TDBEdit
            Left = 158
            Top = 99
            Width = 180
            Height = 24
            CharCase = ecUpperCase
            Color = clInfoBk
            DataField = 'NO_CNP_CPF_1'
            DataSource = DSpadrao
            Enabled = False
            TabOrder = 4
          end
          object DBEdit_NO_FON: TDBEdit
            Left = 158
            Top = 129
            Width = 121
            Height = 24
            Color = clInfoBk
            DataField = 'NO_FON'
            DataSource = DSpadrao
            Enabled = False
            TabOrder = 5
          end
          object DBEdit_NO_CEL: TDBEdit
            Left = 344
            Top = 129
            Width = 121
            Height = 24
            Color = clInfoBk
            DataField = 'NO_CEL'
            DataSource = DSpadrao
            Enabled = False
            TabOrder = 6
          end
          object DBEdit_ID: TDBEdit
            Left = 158
            Top = 11
            Width = 88
            Height = 24
            DataField = 'ID_CLIENTE'
            DataSource = DSpadrao
            TabOrder = 0
            OnEnter = DBEdit_IDEnter
            OnExit = DBEdit_IDExit
          end
        end
        object PageTpCheques: TPageControl
          Left = 2
          Top = 468
          Width = 976
          Height = 146
          ActivePage = TabPreDevolvidos
          Align = alBottom
          TabOrder = 5
          object TabPreDatado: TTabSheet
            Caption = 'Pr'#233' Datado/baixado'
            object GroupBox6: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 962
              Height = 40
              Align = alTop
              TabOrder = 0
              object Label21: TLabel
                Left = 77
                Top = 11
                Width = 72
                Height = 16
                Caption = 'Observa'#231#227'o:'
              end
              object Label22: TLabel
                Left = 726
                Top = 11
                Width = 94
                Height = 16
                Caption = 'Data Inclus'#227'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit_DS_OBS_AUX: TDBEdit
                Left = 155
                Top = 8
                Width = 560
                Height = 24
                CharCase = ecUpperCase
                DataField = 'DS_OBS_AUX'
                DataSource = DSpadrao
                TabOrder = 0
              end
              object cxDBDateEdit_DT_INC: TcxDBDateEdit
                Left = 826
                Top = 8
                DataBinding.DataField = 'DT_INC'
                DataBinding.DataSource = DSpadrao
                Enabled = False
                TabOrder = 1
                Width = 121
              end
            end
          end
          object TabPreDevolvidos: TTabSheet
            Caption = 'Pr'#233' Devolvidos'
            ImageIndex = 1
            object PageControl2: TPageControl
              Left = 8
              Top = 3
              Width = 968
              Height = 110
              ActivePage = TabSheet2
              TabOrder = 0
              object TabSheet2: TTabSheet
                Caption = 'Devolu'#231#227'o/SPC'
                object GroupBox7: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 960
                  Height = 78
                  Align = alTop
                  TabOrder = 0
                  object Label24: TLabel
                    Left = 20
                    Top = 16
                    Width = 181
                    Height = 16
                    Caption = 'Data devoluca'#231#227'o/Alinea 1:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label25: TLabel
                    Left = 244
                    Top = 16
                    Width = 181
                    Height = 16
                    Caption = 'Data devoluca'#231#227'o/Alinea 2:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label26: TLabel
                    Left = 472
                    Top = 16
                    Width = 58
                    Height = 16
                    Caption = 'Carteira:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label27: TLabel
                    Left = 708
                    Top = 16
                    Width = 165
                    Height = 16
                    Caption = 'Enviado para SPC/Serasa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit_DT_DVL_1: TDBEdit
                    Left = 20
                    Top = 38
                    Width = 93
                    Height = 24
                    Color = clInfoBk
                    DataField = 'DT_DVL_1'
                    DataSource = DSpadrao
                    Enabled = False
                    TabOrder = 0
                  end
                  object DBEdit_DT_DVL_2: TDBEdit
                    Left = 244
                    Top = 38
                    Width = 93
                    Height = 24
                    Color = clInfoBk
                    DataField = 'DT_DVL_2'
                    DataSource = DSpadrao
                    Enabled = False
                    TabOrder = 1
                  end
                  object DBEdit_CD_ALI_2: TDBEdit
                    Left = 369
                    Top = 38
                    Width = 48
                    Height = 24
                    Color = clInfoBk
                    DataField = 'CD_ALI_2'
                    DataSource = DSpadrao
                    Enabled = False
                    TabOrder = 2
                  end
                  object CB_carteira: TDBComboBox
                    Left = 472
                    Top = 38
                    Width = 145
                    Height = 24
                    DataField = 'ST_CTR'
                    DataSource = DSpadrao
                    Enabled = False
                    Items.Strings = (
                      'Devolvido'
                      'Advogado'
                      'Perdido'
                      'Matriz')
                    TabOrder = 3
                  end
                  object CB_serasa: TDBComboBox
                    Left = 708
                    Top = 38
                    Width = 145
                    Height = 24
                    DataField = 'SN_SPC'
                    DataSource = DSpadrao
                    Enabled = False
                    Items.Strings = (
                      'Devolvido'
                      'Advogado'
                      'Perdido'
                      'Matriz')
                    TabOrder = 4
                  end
                  object DBEdit_CD_ALI_1: TDBEdit
                    Left = 143
                    Top = 38
                    Width = 48
                    Height = 24
                    Color = clInfoBk
                    DataField = 'CD_ALI_1'
                    DataSource = DSpadrao
                    Enabled = False
                    TabOrder = 5
                  end
                end
              end
              object TabSheet3: TTabSheet
                Caption = 'Vencimento'
                ImageIndex = 1
                object GroupBox8: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 960
                  Height = 78
                  Align = alTop
                  TabOrder = 0
                  object Label28: TLabel
                    Left = 20
                    Top = 16
                    Width = 115
                    Height = 16
                    Caption = 'Data vencimento:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label29: TLabel
                    Left = 244
                    Top = 16
                    Width = 67
                    Height = 16
                    Caption = 'Anterior 1'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label30: TLabel
                    Left = 404
                    Top = 16
                    Width = 67
                    Height = 16
                    Caption = 'Anterior 2'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label31: TLabel
                    Left = 560
                    Top = 16
                    Width = 67
                    Height = 16
                    Caption = 'Anterior 3'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit_DT_VCT: TDBEdit
                    Left = 20
                    Top = 38
                    Width = 93
                    Height = 24
                    DataField = 'DT_VCT'
                    DataSource = DSpadrao
                    Enabled = False
                    TabOrder = 0
                  end
                  object DBEdit_DT_VCT_1: TDBEdit
                    Left = 244
                    Top = 38
                    Width = 93
                    Height = 24
                    Color = clInfoBk
                    DataField = 'DT_VCT_1'
                    DataSource = DSpadrao
                    Enabled = False
                    TabOrder = 1
                  end
                  object DBEdit_DT_VCT_2: TDBEdit
                    Left = 404
                    Top = 38
                    Width = 93
                    Height = 24
                    Color = clInfoBk
                    DataField = 'DT_VCT_2'
                    DataSource = DSpadrao
                    Enabled = False
                    TabOrder = 2
                  end
                  object DBEdit_DT_VCT_3: TDBEdit
                    Left = 560
                    Top = 38
                    Width = 93
                    Height = 24
                    Color = clInfoBk
                    DataField = 'DT_VCT_3'
                    DataSource = DSpadrao
                    Enabled = False
                    TabOrder = 3
                  end
                end
              end
              object TabSheet4: TTabSheet
                Caption = 'Obs/Inclus'#227'o/Vendedor'
                ImageIndex = 2
                object GroupBox9: TGroupBox
                  Left = 0
                  Top = 0
                  Width = 960
                  Height = 78
                  Align = alTop
                  TabOrder = 0
                  object Label32: TLabel
                    Left = 23
                    Top = 16
                    Width = 82
                    Height = 16
                    Caption = 'Observa'#231#227'o:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label33: TLabel
                    Left = 37
                    Top = 49
                    Width = 68
                    Height = 16
                    Caption = 'Vendedor:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label34: TLabel
                    Left = 692
                    Top = 16
                    Width = 94
                    Height = 16
                    Caption = 'Data Inclus'#227'o:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBEdit_DS_OBS_AUXV: TDBEdit
                    Left = 110
                    Top = 13
                    Width = 515
                    Height = 24
                    DataField = 'DS_OBS_AUX'
                    DataSource = DSpadrao
                    TabOrder = 0
                  end
                  object DBEdit10: TDBEdit
                    Left = 110
                    Top = 46
                    Width = 44
                    Height = 24
                    DataField = 'ID_VENDEDOR'
                    DataSource = DSpadrao
                    TabOrder = 1
                  end
                  object DBEdit11: TDBEdit
                    Left = 164
                    Top = 46
                    Width = 461
                    Height = 24
                    Color = clInfoBk
                    DataField = 'NM_VEN'
                    DataSource = DSpadrao
                    TabOrder = 2
                  end
                  object DBEdit_DT_INCV: TDBEdit
                    Left = 791
                    Top = 13
                    Width = 84
                    Height = 24
                    Color = clInfoBk
                    DataField = 'DT_INC'
                    DataSource = DSpadrao
                    TabOrder = 3
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 720
    Top = 232
    Bitmap = {
      494C010107000800440010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
    Left = 792
    Top = 232
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSChqPdt
    Left = 856
    Top = 232
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
    StoredProcName = 'SP_GEN_DB_CHQPDT_ID'
    Left = 860
  end
  object dsCobranca: TDataSource
    DataSet = DMcadastro.CDSLocalCobranca
    Left = 924
    Top = 163
  end
  object dscliente: TDataSource
    DataSet = DMcadastro.CDSClientes
    Left = 924
    Top = 227
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 926
    Top = 278
  end
  object FR_ChqPdt: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43080.486432094900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 792
    Top = 168
    Datasets = <
      item
        DataSet = frxDBChqPdt
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
        Left = 217.133998500000000000
        Top = -2.000000000000000000
        Width = 306.141930000000000000
        Height = 15.118120000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'courier new'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELATORIO CHEQUES PRE-DATADOS)')
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
          Top = 10.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'VENCTO.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 64.251970940000000000
          Top = 10.000000000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'VR. CHEQUE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 147.503880870000000000
          Top = 10.000000000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'BCO./AGC')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 335.614410000000000000
          Top = 10.000000000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'EMITENTE CHEQUE')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 501.047327090000000000
          Top = 10.000000000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CLIENTE RESPONSAVEL')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 650.858690000000000000
          Top = 10.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'INCLUSAO T')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 740.409927000000000000
        DataSet = frxDBChqPdt
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1DT_VCT: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VCT'
          DataSet = frxDBChqPdt
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DT_VCT"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1VR_CHQ: TfrxMemoView
          Left = 55.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'VR_CHQ'
          DataSet = frxDBChqPdt
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VR_CHQ"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NO_AGC: TfrxMemoView
          Left = 207.874150000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'NO_AGC'
          DataSet = frxDBChqPdt
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NO_AGC"]')
          ParentFont = False
        end
        object frxDBDataset1CD_LOC_COB: TfrxMemoView
          Left = 143.622140000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'CD_LOC_COB'
          DataSet = frxDBChqPdt
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CD_LOC_COB"]')
          ParentFont = False
        end
        object frxDBDataset1NM_EMT: TfrxMemoView
          Left = 332.598640000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'NM_EMT'
          DataSet = frxDBChqPdt
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_EMT"]')
          ParentFont = False
        end
        object frxDBDataset1NM_CLI: TfrxMemoView
          Left = 498.897960000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CLI'
          DataSet = frxDBChqPdt
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CLI"]')
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
      object Memo11: TfrxMemoView
        Left = 241.889920000000000000
        Top = 17.118120000000000000
        Width = 313.700990000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Memo.UTF8W = (
          'Relacao Cheque Pre-datados no Per'#237'odo:')
        ParentFont = False
      end
    end
  end
  object frxDBChqPdt: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_BANCO=ID_BANCO'
      'ID_CLIENTE=ID_CLIENTE'
      'NO_AGC=NO_AGC'
      'NO_CTA=NO_CTA'
      'NO_CHQ=NO_CHQ'
      'SN_TCR=SN_TCR'
      'NM_EMT=NM_EMT'
      'NM_CID_EMT=NM_CID_EMT'
      'UF_CID_EMT=UF_CID_EMT'
      'DT_EMS=DT_EMS'
      'DT_VCT=DT_VCT'
      'DT_VCT_1=DT_VCT_1'
      'DT_VCT_2=DT_VCT_2'
      'DT_VCT_3=DT_VCT_3'
      'VR_CHQ=VR_CHQ'
      'CD_LOC_COB=CD_LOC_COB'
      'DS_BDA=DS_BDA'
      'CD_VEN=CD_VEN'
      'DT_INC=DT_INC'
      'DS_OBS_AUX=DS_OBS_AUX'
      'CD_CLI_OLD=CD_CLI_OLD'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU'
      'NM_CLI=NM_CLI'
      'ID_CLIENTE_1=ID_CLIENTE_1'
      'NO_CNP_CPF=NO_CNP_CPF'
      'NO_CEL=NO_CEL'
      'NM_CID=NM_CID'
      'UF_CID=UF_CID'
      'NO_FON=NO_FON')
    DataSet = DMcadastro.CDSChqPdt
    BCDToCurrency = False
    Left = 727
    Top = 167
  end
  object pop: TPopupMenu
    Left = 664
    Top = 184
    object ChequeBaixado1: TMenuItem
      Caption = 'Cheque Baixado'
      OnClick = ChequeBaixado1Click
    end
    object ransferirparaaberto1: TMenuItem
      Caption = 'Transferir para aberto'
      OnClick = ransferirparaaberto1Click
    end
    object ransferirparachequedevolvido1: TMenuItem
      Caption = 'Transferir para cheque devolvido'
      OnClick = ransferirparachequedevolvido1Click
    end
    object ransferirparachequeprdevolvido1: TMenuItem
      Caption = 'Transferir para cheque pr'#233' devolvido'
      OnClick = ransferirparachequeprdevolvido1Click
    end
    object ransferirparadevoldidobaixado1: TMenuItem
      Caption = 'Transferir para devolvido baixado'
      OnClick = ransferirparadevoldidobaixado1Click
    end
    object importarchquedevolvidobaixado1: TMenuItem
      Caption = 'Importar cheque devolvido baixado'
    end
  end
end
