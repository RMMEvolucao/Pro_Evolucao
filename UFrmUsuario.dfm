inherited FormUsuario: TFormUsuario
  Caption = 'Cadastro de Usu'#225'rios do Sistema'
  ClientHeight = 729
  ClientWidth = 1018
  ExplicitWidth = 1024
  ExplicitHeight = 758
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1018
    Height = 729
    ActivePage = TabCadastro
    ExplicitWidth = 1018
    ExplicitHeight = 729
    inherited TabConsulta: TTabSheet
      Caption = 'Consulta'
      OnShow = TabConsultaShow
      ExplicitWidth = 1010
      ExplicitHeight = 698
      inherited DBGrid1: TDBGrid
        Width = 1010
        Height = 585
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_USU'
            Width = 250
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_CAD'
            Title.Alignment = taCenter
            Title.Caption = 'Data Cadastro'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ST_USU'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_SET_TRB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FNC'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NV_ACS'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      inherited PanelConsulta: TPanel
        Width = 1010
        ExplicitWidth = 1010
        inherited cbConsulta: TComboBox
          Items.Strings = (
            'C'#243'digo'
            'Nome Usu'#225'rio')
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
          ExplicitLeft = 949
        end
        inherited btnImprimir: TSpeedButton
          PopupMenu = PopupMenu1
          OnClick = btnImprimirClick
        end
      end
    end
    inherited TabCadastro: TTabSheet
      Caption = 'Cadastro'
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1010
      ExplicitHeight = 698
      inherited Panel2: TPanel
        Top = 644
        Width = 1010
        TabOrder = 4
        ExplicitTop = 644
        ExplicitWidth = 1010
        inherited btnCancelar: TSpeedButton
          Left = 71
          ExplicitLeft = 71
        end
        inherited btnGravar: TSpeedButton
          Left = 1
          ExplicitLeft = -4
        end
        inherited SpeedButton9: TSpeedButton
          Left = 132
          ExplicitLeft = 132
        end
        inherited SpeedButton1: TSpeedButton
          Left = 62
          ExplicitLeft = 62
        end
      end
      object cxGroupBUsuario: TcxGroupBox
        Left = 354
        Top = 16
        Caption = 'Usu'#225'rios do Sistema'
        TabOrder = 1
        Height = 322
        Width = 641
        object cxLabel1: TcxLabel
          Left = 24
          Top = 61
          Caption = 'C'#243'digo:'
        end
        object cxLabel2: TcxLabel
          Left = 30
          Top = 109
          Caption = 'Nome:'
        end
        object cxLabel3: TcxLabel
          Left = 32
          Top = 161
          Caption = 'Setor:'
        end
        object cxLabel4: TcxLabel
          Left = 398
          Top = 61
          Caption = 'Data Cadastro:'
        end
        object cxLabel6: TcxLabel
          Left = 22
          Top = 214
          Caption = 'Fun'#231#227'o:'
        end
        object cxLabelID: TcxDBLabel
          Left = 75
          Top = 61
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = DSpadrao
          Height = 21
          Width = 54
        end
        object cxDBNM_USU: TcxDBTextEdit
          Left = 75
          Top = 108
          Hint = 'Informe o nome do Usu'#225'rio!!!!'
          DataBinding.DataField = 'NM_USU'
          DataBinding.DataSource = DSpadrao
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = True
          TabOrder = 7
          Width = 538
        end
        object cxDBNM_SET_TRB: TcxDBTextEdit
          Left = 75
          Top = 160
          DataBinding.DataField = 'NM_SET_TRB'
          DataBinding.DataSource = DSpadrao
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 538
        end
        object cxDBNM_FNC: TcxDBTextEdit
          Left = 75
          Top = 213
          DataBinding.DataField = 'NM_FNC'
          DataBinding.DataSource = DSpadrao
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 538
        end
        object cxDBDT_CAD: TcxDBDateEdit
          Left = 492
          Top = 61
          DataBinding.DataField = 'DT_CAD'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          Properties.DateButtons = [btnClear]
          Properties.SaveTime = False
          Properties.ShowTime = False
          Properties.WeekNumbers = True
          TabOrder = 6
          Width = 121
        end
        object cxLabel10: TcxLabel
          Left = 13
          Top = 267
          Caption = 'Empresa:'
        end
        object DBLookup_ID_EMPRESA: TDBLookupComboBox
          Left = 74
          Top = 268
          Width = 539
          Height = 24
          DataField = 'ID_EMPRESA'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_EMP'
          ListSource = DSEmpresa
          TabOrder = 11
        end
      end
      object cxGroupBStatus: TcxGroupBox
        Left = 14
        Top = 16
        Caption = 'Status/Nivel Acesso'
        TabOrder = 0
        Height = 142
        Width = 323
        object cxLabel5: TcxLabel
          Left = 120
          Top = 46
          Caption = 'Status:'
        end
        object cxLabel7: TcxLabel
          Left = 85
          Top = 90
          Caption = 'N'#237'vel Acesso:'
        end
        object DBCombo_ST_USU: TDBComboBox
          Left = 168
          Top = 45
          Width = 100
          Height = 24
          CharCase = ecUpperCase
          DataField = 'ST_USU'
          DataSource = DSpadrao
          Items.Strings = (
            'ATIVO'
            'DESATIVADO')
          TabOrder = 2
        end
        object DBCombo_NV_ACS: TDBComboBox
          Left = 168
          Top = 89
          Width = 65
          Height = 24
          Style = csDropDownList
          DataField = 'NV_ACS'
          DataSource = DSpadrao
          Items.Strings = (
            '3'
            '4'
            '5'
            '6'
            '7')
          TabOrder = 3
        end
      end
      object cxGroupBSenha: TcxGroupBox
        Left = 14
        Top = 163
        Caption = 'Defina sua Senha'
        TabOrder = 2
        Height = 174
        Width = 323
        object cxLabel9: TcxLabel
          Left = 53
          Top = 106
          Caption = 'Confirme a Senha:'
        end
        object cxLabel8: TcxLabel
          Left = 120
          Top = 58
          Caption = 'Senha:'
        end
        object DBEditDS_SNH: TDBEdit
          Left = 169
          Top = 57
          Width = 121
          Height = 24
          DataField = 'DS_SNH'
          DataSource = DSpadrao
          PasswordChar = '*'
          TabOrder = 2
        end
        object EditConfirmaSenha: TEdit
          Left = 168
          Top = 104
          Width = 121
          Height = 24
          PasswordChar = '*'
          TabOrder = 3
        end
      end
      object cxGroupBProc: TcxGroupBox
        Left = 14
        Top = 343
        Caption = 'Processamento'
        TabOrder = 3
        Height = 230
        Width = 981
        object CheckRemessa: TcxCheckBox
          Left = 38
          Top = 47
          Caption = 'Remessa e retorno de Remessa Banc'#225'ria'
          TabOrder = 0
          OnClick = CheckRemessaClick
        end
        object CheckCtrCheque: TcxCheckBox
          Left = 38
          Top = 96
          Caption = 'Controle de Cheque'
          TabOrder = 1
          OnClick = CheckCtrChequeClick
        end
        object checkSintegra: TcxCheckBox
          Left = 38
          Top = 145
          Caption = 'Sintegra'
          TabOrder = 2
          OnClick = checkSintegraClick
        end
        object CheckLivrosFiscais: TcxCheckBox
          Left = 365
          Top = 47
          Caption = 'Livros Fiscais'
          TabOrder = 3
          OnClick = CheckLivrosFiscaisClick
        end
        object CheckLoteOrcamento: TcxCheckBox
          Left = 365
          Top = 96
          Caption = 'Lotes de Or'#231'amentos'
          TabOrder = 4
          OnClick = CheckLoteOrcamentoClick
        end
        object CheckCMSVendedores: TcxCheckBox
          Left = 365
          Top = 145
          Caption = 'Comiss'#227'o de Vendedores'
          TabOrder = 5
          OnClick = CheckCMSVendedoresClick
        end
      end
    end
    object TabAcesso: TTabSheet
      Caption = 'Controle de Acesso'
      ImageIndex = 2
      object GridPanel1: TGridPanel
        AlignWithMargins = True
        Left = 3
        Top = 44
        Width = 1004
        Height = 557
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 35.306263595984900000
          end
          item
            Value = 13.205212877717190000
          end
          item
            Value = 11.997808241012760000
          end
          item
            Value = 12.566655129527600000
          end
          item
            Value = 13.797479477164660000
          end
          item
            Value = 13.126580678592880000
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
            Column = 0
            Control = Label29
            Row = 5
          end
          item
            Column = 0
            Control = Label30
            Row = 6
          end
          item
            Column = 0
            Control = Label31
            Row = 7
          end
          item
            Column = 0
            Control = Label32
            Row = 8
          end
          item
            Column = 0
            Control = Label33
            Row = 9
          end
          item
            Column = 0
            Control = Label34
            Row = 10
          end
          item
            Column = 0
            Control = Label35
            Row = 11
          end
          item
            Column = 0
            Control = Label36
            Row = 12
          end
          item
            Column = 0
            Control = Label37
            Row = 13
          end
          item
            Column = 0
            Control = Label38
            Row = 14
          end
          item
            Column = 0
            Control = Label39
            Row = 15
          end
          item
            Column = 0
            Control = Label40
            Row = 16
          end
          item
            Column = 0
            Control = Label41
            Row = 17
          end
          item
            Column = 0
            Control = Label42
            Row = 18
          end
          item
            Column = 0
            Control = Label43
            Row = 19
          end
          item
            Column = 0
            Control = Label44
            Row = 20
          end
          item
            Column = 0
            Control = Label45
            Row = 22
          end
          item
            Column = 0
            Control = Label1
            Row = 21
          end
          item
            Column = 1
            Control = CK_SN_CLI_INCLUIR
            Row = 0
          end
          item
            Column = 2
            Control = CK_SN_CLI_Editar
            Row = 0
          end
          item
            Column = 3
            Control = CK_SN_CLI_EXCLUIR
            Row = 0
          end
          item
            Column = 4
            Control = CK_SN_CLI_RELATORIOS
            Row = 0
          end
          item
            Column = 5
            Control = CK_SN_CLI_UTILITARIOS
            Row = 0
          end
          item
            Column = 1
            Control = CK_SN_FOR_INCLUIR
            Row = 1
          end
          item
            Column = 2
            Control = CK_SN_FOR_EDITAR
            Row = 1
          end
          item
            Column = 3
            Control = CK_SN_FOR_EXCLUIR
            Row = 1
          end
          item
            Column = 4
            Control = CK_SN_FOR_RELATORIOS
            Row = 1
          end
          item
            Column = 1
            Control = CK_SN_CTR_INCLUIR
            Row = 2
          end
          item
            Column = 2
            Control = CK_SN_CTR_EDITAR
            Row = 2
          end
          item
            Column = 3
            Control = CK_SN_CTR_EXCLUIR
            Row = 2
          end
          item
            Column = 4
            Control = CK_SN_CTR_RELATORIOS
            Row = 2
          end
          item
            Column = 5
            Control = CK_SN_CTR_UTILITARIOS
            Row = 2
          end
          item
            Column = 1
            Control = CK_SN_CHQ_PDT_INCLUIR
            Row = 3
          end
          item
            Column = 2
            Control = CK_SN_CHQ_PDT_EDITAR
            Row = 3
          end
          item
            Column = 3
            Control = CK_SN_CHQ_PDT_EXCLUIR
            Row = 3
          end
          item
            Column = 4
            Control = CK_SN_CHQ_PDT_RELATORIOS
            Row = 3
          end
          item
            Column = 5
            Control = CK_SN_CHQ_PDT_UTILITARIOS
            Row = 3
          end
          item
            Column = 2
            Control = CK_SN_CHQ_BXD_EDITAR
            Row = 4
          end
          item
            Column = 4
            Control = CK_SN_CHQ_BXD_Relatorios
            Row = 4
          end
          item
            Column = 5
            Control = CK_SN_CHQ_BXD_UTILITARIOS
            Row = 4
          end
          item
            Column = 2
            Control = CK_SN_CHQ_PDV_EDITAR
            Row = 5
          end
          item
            Column = 4
            Control = CK_SN_CHQ_PDV_RELATORIOS
            Row = 5
          end
          item
            Column = 5
            Control = CK_SN_CHQ_PDV_UTILITARIOS
            Row = 5
          end
          item
            Column = 2
            Control = CK_SN_CHQ_DVD_Editar
            Row = 6
          end
          item
            Column = 4
            Control = CK_SN_CHQ_DVD_Relatorios
            Row = 6
          end
          item
            Column = 5
            Control = CK_SN_CHQ_DVD_Utilitarios
            Row = 6
          end
          item
            Column = 2
            Control = CK_SN_CHQ_DVB_Editar
            Row = 7
          end
          item
            Column = 4
            Control = CK_SN_CHQ_DVB_Relatorios
            Row = 7
          end
          item
            Column = 5
            Control = CK_SN_CHQ_DVB_Utilitarios
            Row = 7
          end
          item
            Column = 1
            Control = CK_SN_CTP_Incluir
            Row = 8
          end
          item
            Column = 2
            Control = CK_SN_CTP_Editar
            Row = 8
          end
          item
            Column = 3
            Control = CK_SN_CTP_Excluir
            Row = 8
          end
          item
            Column = 4
            Control = CK_SN_CTP_Relatorios
            Row = 8
          end
          item
            Column = 5
            Control = CK_SN_CTP_Utilitarios
            Row = 8
          end
          item
            Column = 1
            Control = CK_SN_PDT_Incluir
            Row = 9
          end
          item
            Column = 2
            Control = CK_SN_PDT_Editar
            Row = 9
          end
          item
            Column = 3
            Control = CK_SN_PDT_Excluir
            Row = 9
          end
          item
            Column = 4
            Control = CK_SN_PDT_Relatorios
            Row = 9
          end
          item
            Column = 5
            Control = CK_SN_PDT_Utilitarios
            Row = 9
          end
          item
            Column = 1
            Control = CK_SN_ETQ_INCLUIR
            Row = 10
          end
          item
            Column = 4
            Control = CK_SN_ETQ_RELATORIOS
            Row = 10
          end
          item
            Column = 5
            Control = CK_SN_ETQ_UTILITARIOS
            Row = 10
          end
          item
            Column = 4
            Control = CK_SN_TAB_PRC_Relatorios
            Row = 11
          end
          item
            Column = 4
            Control = CK_SN_EST_Relatorios
            Row = 12
          end
          item
            Column = 1
            Control = CK_SN_DIV_FIN_INCLUIR
            Row = 13
          end
          item
            Column = 2
            Control = CK_SN_DIV_FIN_EDITAR
            Row = 13
          end
          item
            Column = 3
            Control = CK_SN_DIV_FIN_Excluir
            Row = 13
          end
          item
            Column = 4
            Control = CK_SN_DIV_FIN_Relatorios
            Row = 13
          end
          item
            Column = 5
            Control = CK_SN_DIV_FIN_Utilitarios
            Row = 13
          end
          item
            Column = 1
            Control = CK_SN_DIV_FIS_Incluir
            Row = 14
          end
          item
            Column = 2
            Control = CK_SN_DIV_FIS_Editar
            Row = 14
          end
          item
            Column = 3
            Control = CK_SN_DIV_FIS_Excluir
            Row = 14
          end
          item
            Column = 4
            Control = CK_SN_DIV_FIS_Relatorios
            Row = 14
          end
          item
            Column = 5
            Control = CK_SN_DIV_FIS_Utilitarios
            Row = 14
          end
          item
            Column = 1
            Control = CK_SN_FUN_Incluir
            Row = 15
          end
          item
            Column = 2
            Control = CK_SN_FUN_EDITAR
            Row = 15
          end
          item
            Column = 3
            Control = CK_SN_FUN_Excluir
            Row = 15
          end
          item
            Column = 4
            Control = CK_SN_FUN_Relatorios
            Row = 15
          end
          item
            Column = 5
            Control = CK_SN_FUN_Utilitarios
            Row = 15
          end
          item
            Column = 1
            Control = CK_SN_VEN_Incluir
            Row = 16
          end
          item
            Column = 2
            Control = CK_SN_VEN_Editar
            Row = 16
          end
          item
            Column = 3
            Control = CK_SN_VEN_Excluir
            Row = 16
          end
          item
            Column = 4
            Control = CK_SN_VEN_Relatorios
            Row = 16
          end
          item
            Column = 5
            Control = CK_SN_VEN_Utilitarios
            Row = 16
          end
          item
            Column = 1
            Control = CK_SN_REP_INCLUIR
            Row = 17
          end
          item
            Column = 2
            Control = CK_SN_REP_Editar
            Row = 17
          end
          item
            Column = 3
            Control = CK_SN_REP_Excluir
            Row = 17
          end
          item
            Column = 4
            Control = CK_SN_REP_Relatorios
            Row = 17
          end
          item
            Column = 5
            Control = CK_SN_REP_Utilitarios
            Row = 17
          end
          item
            Column = 1
            Control = CK_SN_TRN_Incluir
            Row = 18
          end
          item
            Column = 2
            Control = CK_SN_TRN_Editar
            Row = 18
          end
          item
            Column = 3
            Control = CK_SN_TRN_Excluir
            Row = 18
          end
          item
            Column = 4
            Control = CK_SN_TRN_Relatorios
            Row = 18
          end
          item
            Column = 1
            Control = CK_SN_NTF_RDZ_Incluir
            Row = 19
          end
          item
            Column = 2
            Control = CK_SN_NTF_RDZ_Editar
            Row = 19
          end
          item
            Column = 3
            Control = CK_SN_NTF_RDZ_Excluir
            Row = 19
          end
          item
            Column = 4
            Control = CK_SN_NTF_RDZ_Relatorios
            Row = 19
          end
          item
            Column = 5
            Control = CK_SN_NTF_RDZ_Utilitarios
            Row = 19
          end
          item
            Column = 1
            Control = CK_SN_NTE_Incluir
            Row = 20
          end
          item
            Column = 2
            Control = CK_SN_NTE_Editar
            Row = 20
          end
          item
            Column = 3
            Control = CK_SN_NTE_Excluir
            Row = 20
          end
          item
            Column = 4
            Control = CK_SN_NTE_Relatorios
            Row = 20
          end
          item
            Column = 5
            Control = CK_SN_NTE_Utilitarios
            Row = 20
          end
          item
            Column = 1
            Control = CK_SN_PED_OCM_Incluir
            Row = 21
          end
          item
            Column = 2
            Control = CK_SN_PED_OCM_Editar
            Row = 21
          end
          item
            Column = 3
            Control = CK_SN_PED_OCM_Excluir
            Row = 21
          end
          item
            Column = 4
            Control = CK_SN_PED_OCM_Relatorios
            Row = 21
          end
          item
            Column = 5
            Control = CK_SN_FOR_UTILITARIOS
            Row = 1
          end
          item
            Column = 1
            Control = CK_SN_RQS_Incluir
            Row = 22
          end
          item
            Column = 2
            Control = CK_SN_RQS_Editar
            Row = 22
          end
          item
            Column = 3
            Control = CK_SN_RQS_Excluir
            Row = 22
          end
          item
            Column = 4
            Control = CK_SN_RQS_Relatorios
            Row = 22
          end
          item
            Column = 5
            Control = CK_SN_PED_OCM_Utilitarios
            Row = 21
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Padding.Left = 2
        Padding.Top = 2
        Padding.Right = 2
        Padding.Bottom = 5
        ParentFont = False
        RowCollection = <
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
            Value = 10.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        DesignSize = (
          1004
          557)
        object Label24: TLabel
          Left = 117
          Top = 5
          Width = 123
          Height = 16
          Anchors = []
          Caption = 'Cadastro de Clientes:'
          ExplicitLeft = 110
          ExplicitTop = 4
        end
        object Label25: TLabel
          Left = 101
          Top = 29
          Width = 156
          Height = 16
          Anchors = []
          Caption = 'Cadastro de Fornecedores:'
          ExplicitLeft = 107
          ExplicitTop = 28
        end
        object Label26: TLabel
          Left = 92
          Top = 53
          Width = 173
          Height = 16
          Anchors = []
          Caption = 'Contas a Receber (Duplicatas)'
          ExplicitLeft = 99
          ExplicitTop = 48
        end
        object Label27: TLabel
          Left = 117
          Top = 77
          Width = 123
          Height = 16
          Anchors = []
          Caption = 'Cheques Pr'#233'-Datados'
          ExplicitLeft = 124
          ExplicitTop = 68
        end
        object Label28: TLabel
          Left = 127
          Top = 101
          Width = 103
          Height = 16
          Anchors = []
          Caption = 'Cheques Baixados'
          ExplicitLeft = 134
          ExplicitTop = 88
        end
        object Label29: TLabel
          Left = 111
          Top = 125
          Width = 136
          Height = 16
          Anchors = []
          Caption = 'Cheques Pr'#233' Devolvidos'
          ExplicitLeft = 117
          ExplicitTop = 108
        end
        object Label30: TLabel
          Left = 122
          Top = 149
          Width = 113
          Height = 16
          Anchors = []
          Caption = 'Cheques Devolvidos'
          ExplicitLeft = 129
          ExplicitTop = 128
        end
        object Label31: TLabel
          Left = 95
          Top = 173
          Width = 167
          Height = 16
          Anchors = []
          Caption = 'Cheques Devolvidos Baixados'
          ExplicitLeft = 102
          ExplicitTop = 148
        end
        object Label32: TLabel
          Left = 135
          Top = 197
          Width = 87
          Height = 16
          Anchors = []
          Caption = 'Contas a Pagar'
          ExplicitLeft = 142
          ExplicitTop = 168
        end
        object Label33: TLabel
          Left = 154
          Top = 221
          Width = 50
          Height = 16
          Anchors = []
          Caption = 'Produtos'
          ExplicitLeft = 160
          ExplicitTop = 188
        end
        object Label34: TLabel
          Left = 50
          Top = 245
          Width = 258
          Height = 16
          Anchors = []
          Caption = 'Estoque (Saldo Inicial/Fechar e Reprocessar)'
          ExplicitLeft = 56
          ExplicitTop = 208
        end
        object Label35: TLabel
          Left = 132
          Top = 269
          Width = 93
          Height = 16
          Anchors = []
          Caption = 'Tabela de Pre'#231'o'
          ExplicitLeft = 139
          ExplicitTop = 228
        end
        object Label36: TLabel
          Left = 147
          Top = 293
          Width = 63
          Height = 16
          Anchors = []
          Caption = 'Estatisticas'
          ExplicitLeft = 154
          ExplicitTop = 248
        end
        object Label37: TLabel
          Left = 120
          Top = 317
          Width = 117
          Height = 16
          Anchors = []
          Caption = 'Diversos Financeiros'
          ExplicitLeft = 127
          ExplicitTop = 268
        end
        object Label38: TLabel
          Left = 137
          Top = 341
          Width = 84
          Height = 16
          Anchors = []
          Caption = 'Diversos Fiscal'
          ExplicitLeft = 143
          ExplicitTop = 288
        end
        object Label39: TLabel
          Left = 143
          Top = 365
          Width = 72
          Height = 16
          Anchors = []
          Caption = 'Funcionarios'
          ExplicitLeft = 149
          ExplicitTop = 308
        end
        object Label40: TLabel
          Left = 115
          Top = 389
          Width = 127
          Height = 16
          Anchors = []
          Caption = 'Vendedor da Empresa'
          ExplicitLeft = 122
          ExplicitTop = 328
        end
        object Label41: TLabel
          Left = 94
          Top = 413
          Width = 170
          Height = 16
          Anchors = []
          Caption = 'Representante de Fornecedor'
          ExplicitLeft = 100
          ExplicitTop = 348
        end
        object Label42: TLabel
          Left = 131
          Top = 437
          Width = 95
          Height = 16
          Anchors = []
          Caption = 'Transportadores'
          ExplicitLeft = 138
          ExplicitTop = 368
        end
        object Label43: TLabel
          Left = 102
          Top = 461
          Width = 154
          Height = 16
          Anchors = []
          Caption = 'Nota Faturada / Redu'#231#227'o Z'
          ExplicitLeft = 108
          ExplicitTop = 388
        end
        object Label44: TLabel
          Left = 133
          Top = 485
          Width = 92
          Height = 16
          Anchors = []
          Caption = 'Nota de Entrada'
          ExplicitLeft = 139
          ExplicitTop = 408
        end
        object Label45: TLabel
          Left = 145
          Top = 533
          Width = 67
          Height = 16
          Anchors = []
          Caption = 'Requisi'#231#245'es'
          ExplicitLeft = 155
        end
        object Label1: TLabel
          Left = 78
          Top = 509
          Width = 202
          Height = 16
          Anchors = []
          Caption = 'Pedidos para Faturar / Or'#231'amentos'
          ExplicitLeft = 88
        end
        object CK_SN_CLI_INCLUIR: TCheckBox
          Left = 372
          Top = 5
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 0
          OnClick = CK_SN_CLI_INCLUIRClick
        end
        object CK_SN_CLI_Editar: TCheckBox
          Left = 497
          Top = 5
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 1
          OnClick = CK_SN_CLI_EditarClick
        end
        object CK_SN_CLI_EXCLUIR: TCheckBox
          Left = 619
          Top = 5
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 2
          OnClick = CK_SN_CLI_EXCLUIRClick
        end
        object CK_SN_CLI_RELATORIOS: TCheckBox
          Left = 750
          Top = 5
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 3
          OnClick = CK_SN_CLI_RELATORIOSClick
        end
        object CK_SN_CLI_UTILITARIOS: TCheckBox
          Left = 885
          Top = 5
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 4
          OnClick = CK_SN_CLI_UTILITARIOSClick
        end
        object CK_SN_FOR_INCLUIR: TCheckBox
          Left = 372
          Top = 29
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 5
          OnClick = CK_SN_FOR_INCLUIRClick
        end
        object CK_SN_FOR_EDITAR: TCheckBox
          Left = 497
          Top = 29
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 6
          OnClick = CK_SN_FOR_EDITARClick
        end
        object CK_SN_FOR_EXCLUIR: TCheckBox
          Left = 619
          Top = 29
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 7
          OnClick = CK_SN_FOR_EXCLUIRClick
        end
        object CK_SN_FOR_RELATORIOS: TCheckBox
          Left = 750
          Top = 29
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 8
          OnClick = CK_SN_FOR_RELATORIOSClick
        end
        object CK_SN_CTR_INCLUIR: TCheckBox
          Left = 372
          Top = 53
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 9
          OnClick = CK_SN_CTR_INCLUIRClick
        end
        object CK_SN_CTR_EDITAR: TCheckBox
          Left = 497
          Top = 53
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 10
          OnClick = CK_SN_CTR_EDITARClick
        end
        object CK_SN_CTR_EXCLUIR: TCheckBox
          Left = 619
          Top = 53
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 11
          OnClick = CK_SN_CTR_EXCLUIRClick
        end
        object CK_SN_CTR_RELATORIOS: TCheckBox
          Left = 750
          Top = 53
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 12
          OnClick = CK_SN_CTR_RELATORIOSClick
        end
        object CK_SN_CTR_UTILITARIOS: TCheckBox
          Left = 885
          Top = 53
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 13
          OnClick = CK_SN_CTR_UTILITARIOSClick
        end
        object CK_SN_CHQ_PDT_INCLUIR: TCheckBox
          Left = 372
          Top = 77
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 14
          OnClick = CK_SN_CHQ_PDT_INCLUIRClick
        end
        object CK_SN_CHQ_PDT_EDITAR: TCheckBox
          Left = 497
          Top = 77
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 15
          OnClick = CK_SN_CHQ_PDT_EDITARClick
        end
        object CK_SN_CHQ_PDT_EXCLUIR: TCheckBox
          Left = 619
          Top = 77
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 16
          OnClick = CK_SN_CHQ_PDT_EXCLUIRClick
        end
        object CK_SN_CHQ_PDT_RELATORIOS: TCheckBox
          Left = 750
          Top = 77
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 17
          OnClick = CK_SN_CHQ_PDT_RELATORIOSClick
        end
        object CK_SN_CHQ_PDT_UTILITARIOS: TCheckBox
          Left = 885
          Top = 77
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 18
          OnClick = CK_SN_CHQ_PDT_UTILITARIOSClick
        end
        object CK_SN_CHQ_BXD_EDITAR: TCheckBox
          Left = 497
          Top = 101
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 19
          OnClick = CK_SN_CHQ_BXD_EDITARClick
        end
        object CK_SN_CHQ_BXD_Relatorios: TCheckBox
          Left = 750
          Top = 101
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 20
          OnClick = CK_SN_CHQ_BXD_RelatoriosClick
        end
        object CK_SN_CHQ_BXD_UTILITARIOS: TCheckBox
          Left = 885
          Top = 101
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 21
          OnClick = CK_SN_CHQ_BXD_UTILITARIOSClick
        end
        object CK_SN_CHQ_PDV_EDITAR: TCheckBox
          Left = 497
          Top = 125
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 22
          OnClick = CK_SN_CHQ_PDV_EDITARClick
        end
        object CK_SN_CHQ_PDV_RELATORIOS: TCheckBox
          Left = 750
          Top = 125
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 23
          OnClick = CK_SN_CHQ_PDV_RELATORIOSClick
        end
        object CK_SN_CHQ_PDV_UTILITARIOS: TCheckBox
          Left = 885
          Top = 125
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 24
          OnClick = CK_SN_CHQ_PDV_UTILITARIOSClick
        end
        object CK_SN_CHQ_DVD_Editar: TCheckBox
          Left = 497
          Top = 149
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 25
          OnClick = CK_SN_CHQ_DVD_EditarClick
        end
        object CK_SN_CHQ_DVD_Relatorios: TCheckBox
          Left = 750
          Top = 149
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 26
          OnClick = CK_SN_CHQ_DVD_RelatoriosClick
        end
        object CK_SN_CHQ_DVD_Utilitarios: TCheckBox
          Left = 885
          Top = 149
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 27
          OnClick = CK_SN_CHQ_DVD_UtilitariosClick
        end
        object CK_SN_CHQ_DVB_Editar: TCheckBox
          Left = 497
          Top = 173
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 28
          OnClick = CK_SN_CHQ_DVB_EditarClick
        end
        object CK_SN_CHQ_DVB_Relatorios: TCheckBox
          Left = 750
          Top = 173
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 29
          OnClick = CK_SN_CHQ_DVB_RelatoriosClick
        end
        object CK_SN_CHQ_DVB_Utilitarios: TCheckBox
          Left = 885
          Top = 173
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 30
          OnClick = CK_SN_CHQ_DVB_UtilitariosClick
        end
        object CK_SN_CTP_Incluir: TCheckBox
          Left = 372
          Top = 197
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 31
          OnClick = CK_SN_CTP_IncluirClick
        end
        object CK_SN_CTP_Editar: TCheckBox
          Left = 497
          Top = 197
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 32
          OnClick = CK_SN_CTP_EditarClick
        end
        object CK_SN_CTP_Excluir: TCheckBox
          Left = 619
          Top = 197
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 33
          OnClick = CK_SN_CTP_ExcluirClick
        end
        object CK_SN_CTP_Relatorios: TCheckBox
          Left = 750
          Top = 197
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 34
          OnClick = CK_SN_CTP_RelatoriosClick
        end
        object CK_SN_CTP_Utilitarios: TCheckBox
          Left = 885
          Top = 197
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 35
          OnClick = CK_SN_CTP_UtilitariosClick
        end
        object CK_SN_PDT_Incluir: TCheckBox
          Left = 372
          Top = 221
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 36
          OnClick = CK_SN_PDT_IncluirClick
        end
        object CK_SN_PDT_Editar: TCheckBox
          Left = 497
          Top = 221
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 37
          OnClick = CK_SN_PDT_EditarClick
        end
        object CK_SN_PDT_Excluir: TCheckBox
          Left = 619
          Top = 221
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 38
          OnClick = CK_SN_PDT_ExcluirClick
        end
        object CK_SN_PDT_Relatorios: TCheckBox
          Left = 750
          Top = 221
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 39
          OnClick = CK_SN_PDT_RelatoriosClick
        end
        object CK_SN_PDT_Utilitarios: TCheckBox
          Left = 885
          Top = 221
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 40
          OnClick = CK_SN_PDT_UtilitariosClick
        end
        object CK_SN_ETQ_INCLUIR: TCheckBox
          Left = 372
          Top = 245
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 41
          OnClick = CK_SN_ETQ_INCLUIRClick
        end
        object CK_SN_ETQ_RELATORIOS: TCheckBox
          Left = 750
          Top = 245
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 42
          OnClick = CK_SN_ETQ_RELATORIOSClick
        end
        object CK_SN_ETQ_UTILITARIOS: TCheckBox
          Left = 885
          Top = 245
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 43
          OnClick = CK_SN_ETQ_UTILITARIOSClick
        end
        object CK_SN_TAB_PRC_Relatorios: TCheckBox
          Left = 750
          Top = 269
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 44
          OnClick = CK_SN_TAB_PRC_RelatoriosClick
        end
        object CK_SN_EST_Relatorios: TCheckBox
          Left = 750
          Top = 293
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 45
          OnClick = CK_SN_EST_RelatoriosClick
        end
        object CK_SN_DIV_FIN_INCLUIR: TCheckBox
          Left = 372
          Top = 317
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 46
          OnClick = CK_SN_DIV_FIN_INCLUIRClick
        end
        object CK_SN_DIV_FIN_EDITAR: TCheckBox
          Left = 497
          Top = 317
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 47
          OnClick = CK_SN_DIV_FIN_EDITARClick
        end
        object CK_SN_DIV_FIN_Excluir: TCheckBox
          Left = 619
          Top = 317
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 48
          OnClick = CK_SN_DIV_FIN_ExcluirClick
        end
        object CK_SN_DIV_FIN_Relatorios: TCheckBox
          Left = 750
          Top = 317
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 49
          OnClick = CK_SN_DIV_FIN_RelatoriosClick
        end
        object CK_SN_DIV_FIN_Utilitarios: TCheckBox
          Left = 885
          Top = 317
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 50
          OnClick = CK_SN_DIV_FIN_UtilitariosClick
        end
        object CK_SN_DIV_FIS_Incluir: TCheckBox
          Left = 372
          Top = 341
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 51
          OnClick = CK_SN_DIV_FIS_IncluirClick
        end
        object CK_SN_DIV_FIS_Editar: TCheckBox
          Left = 497
          Top = 341
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 52
          OnClick = CK_SN_DIV_FIS_EditarClick
        end
        object CK_SN_DIV_FIS_Excluir: TCheckBox
          Left = 619
          Top = 341
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 53
          OnClick = CK_SN_DIV_FIS_ExcluirClick
        end
        object CK_SN_DIV_FIS_Relatorios: TCheckBox
          Left = 750
          Top = 341
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 54
          OnClick = CK_SN_DIV_FIS_RelatoriosClick
        end
        object CK_SN_DIV_FIS_Utilitarios: TCheckBox
          Left = 885
          Top = 341
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 55
          OnClick = CK_SN_DIV_FIS_UtilitariosClick
        end
        object CK_SN_FUN_Incluir: TCheckBox
          Left = 372
          Top = 365
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 56
          OnClick = CK_SN_FUN_IncluirClick
        end
        object CK_SN_FUN_EDITAR: TCheckBox
          Left = 497
          Top = 365
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 57
          OnClick = CK_SN_FUN_EDITARClick
        end
        object CK_SN_FUN_Excluir: TCheckBox
          Left = 619
          Top = 365
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 58
          OnClick = CK_SN_FUN_ExcluirClick
        end
        object CK_SN_FUN_Relatorios: TCheckBox
          Left = 750
          Top = 365
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 59
          OnClick = CK_SN_FUN_RelatoriosClick
        end
        object CK_SN_FUN_Utilitarios: TCheckBox
          Left = 885
          Top = 365
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 60
          OnClick = CK_SN_FUN_UtilitariosClick
        end
        object CK_SN_VEN_Incluir: TCheckBox
          Left = 372
          Top = 389
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 61
          OnClick = CK_SN_VEN_IncluirClick
        end
        object CK_SN_VEN_Editar: TCheckBox
          Left = 497
          Top = 389
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 62
          OnClick = CK_SN_VEN_EditarClick
        end
        object CK_SN_VEN_Excluir: TCheckBox
          Left = 619
          Top = 389
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 63
          OnClick = CK_SN_VEN_ExcluirClick
        end
        object CK_SN_VEN_Relatorios: TCheckBox
          Left = 750
          Top = 389
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 64
          OnClick = CK_SN_VEN_RelatoriosClick
        end
        object CK_SN_VEN_Utilitarios: TCheckBox
          Left = 885
          Top = 389
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 65
          OnClick = CK_SN_VEN_UtilitariosClick
        end
        object CK_SN_REP_INCLUIR: TCheckBox
          Left = 372
          Top = 413
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 66
          OnClick = CK_SN_REP_INCLUIRClick
        end
        object CK_SN_REP_Editar: TCheckBox
          Left = 497
          Top = 413
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 67
          OnClick = CK_SN_REP_EditarClick
        end
        object CK_SN_REP_Excluir: TCheckBox
          Left = 619
          Top = 413
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 68
          OnClick = CK_SN_REP_ExcluirClick
        end
        object CK_SN_REP_Relatorios: TCheckBox
          Left = 750
          Top = 413
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 69
          OnClick = CK_SN_REP_RelatoriosClick
        end
        object CK_SN_REP_Utilitarios: TCheckBox
          Left = 885
          Top = 413
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 70
          OnClick = CK_SN_REP_UtilitariosClick
        end
        object CK_SN_TRN_Incluir: TCheckBox
          Left = 372
          Top = 437
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 71
          OnClick = CK_SN_TRN_IncluirClick
        end
        object CK_SN_TRN_Editar: TCheckBox
          Left = 497
          Top = 437
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 72
          OnClick = CK_SN_TRN_EditarClick
        end
        object CK_SN_TRN_Excluir: TCheckBox
          Left = 619
          Top = 437
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 73
          OnClick = CK_SN_TRN_ExcluirClick
        end
        object CK_SN_TRN_Relatorios: TCheckBox
          Left = 750
          Top = 437
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 74
          OnClick = CK_SN_TRN_RelatoriosClick
        end
        object CK_SN_NTF_RDZ_Incluir: TCheckBox
          Left = 372
          Top = 461
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 75
          OnClick = CK_SN_NTF_RDZ_IncluirClick
        end
        object CK_SN_NTF_RDZ_Editar: TCheckBox
          Left = 497
          Top = 461
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 76
          OnClick = CK_SN_NTF_RDZ_EditarClick
        end
        object CK_SN_NTF_RDZ_Excluir: TCheckBox
          Left = 619
          Top = 461
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 77
          OnClick = CK_SN_NTF_RDZ_ExcluirClick
        end
        object CK_SN_NTF_RDZ_Relatorios: TCheckBox
          Left = 750
          Top = 461
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 78
          OnClick = CK_SN_NTF_RDZ_RelatoriosClick
        end
        object CK_SN_NTF_RDZ_Utilitarios: TCheckBox
          Left = 885
          Top = 461
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 79
          OnClick = CK_SN_NTF_RDZ_UtilitariosClick
        end
        object CK_SN_NTE_Incluir: TCheckBox
          Left = 372
          Top = 485
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 80
          OnClick = CK_SN_NTE_IncluirClick
        end
        object CK_SN_NTE_Editar: TCheckBox
          Left = 497
          Top = 485
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 81
          OnClick = CK_SN_NTE_EditarClick
        end
        object CK_SN_NTE_Excluir: TCheckBox
          Left = 619
          Top = 485
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 82
          OnClick = CK_SN_NTE_ExcluirClick
        end
        object CK_SN_NTE_Relatorios: TCheckBox
          Left = 750
          Top = 485
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 83
          OnClick = CK_SN_NTE_RelatoriosClick
        end
        object CK_SN_NTE_Utilitarios: TCheckBox
          Left = 885
          Top = 485
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 84
          OnClick = CK_SN_NTE_UtilitariosClick
        end
        object CK_SN_PED_OCM_Incluir: TCheckBox
          Left = 372
          Top = 509
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 85
          OnClick = CK_SN_PED_OCM_IncluirClick
        end
        object CK_SN_PED_OCM_Editar: TCheckBox
          Left = 497
          Top = 509
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 86
          OnClick = CK_SN_PED_OCM_EditarClick
        end
        object CK_SN_PED_OCM_Excluir: TCheckBox
          Left = 619
          Top = 509
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 87
          OnClick = CK_SN_PED_OCM_ExcluirClick
        end
        object CK_SN_PED_OCM_Relatorios: TCheckBox
          Left = 750
          Top = 509
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 88
          OnClick = CK_SN_PED_OCM_RelatoriosClick
        end
        object CK_SN_FOR_UTILITARIOS: TCheckBox
          Left = 885
          Top = 29
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 89
          OnClick = CK_SN_FOR_UTILITARIOSClick
        end
        object CK_SN_RQS_Incluir: TCheckBox
          Left = 372
          Top = 533
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 90
          OnClick = CK_SN_RQS_IncluirClick
        end
        object CK_SN_RQS_Editar: TCheckBox
          Left = 497
          Top = 533
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 91
          OnClick = CK_SN_RQS_EditarClick
        end
        object CK_SN_RQS_Excluir: TCheckBox
          Left = 619
          Top = 533
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 92
          OnClick = CK_SN_RQS_ExcluirClick
        end
        object CK_SN_RQS_Relatorios: TCheckBox
          Left = 750
          Top = 533
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 93
          OnClick = CK_SN_RQS_RelatoriosClick
        end
        object CK_SN_PED_OCM_Utilitarios: TCheckBox
          Left = 885
          Top = 509
          Width = 97
          Height = 17
          Anchors = []
          TabOrder = 94
          OnClick = CK_SN_PED_OCM_UtilitariosClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1010
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object BtIncluir: TButton
          Left = 324
          Top = 10
          Width = 100
          Height = 25
          Caption = 'Incluir'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button2: TButton
          Left = 451
          Top = 10
          Width = 100
          Height = 25
          Caption = 'Editar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button4: TButton
          Left = 576
          Top = 10
          Width = 100
          Height = 25
          Caption = 'Excluir'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Button3: TButton
          Left = 706
          Top = 10
          Width = 100
          Height = 25
          Caption = 'Relat'#243'rios'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Button5: TButton
          Left = 840
          Top = 10
          Width = 100
          Height = 25
          Caption = 'Utilit'#225'rios'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 644
        Width = 1010
        Height = 54
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object SpeedButton5: TSpeedButton
          AlignWithMargins = True
          Left = 71
          Top = 1
          Width = 60
          Height = 52
          Cursor = crHandPoint
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Action = AcCancelar
          Align = alLeft
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFFFFFFFFFFFFFFFFFFFFFFFFFF9900FFFFFFFFFFFFFF
            FFFFFF9900FFFFFFFFFFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6BFFFFF9900FFFF99
            00FFFFE6BFFFFFFFFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9900FFFF99
            00FFFFFFFFFFFFFFFFFFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFFFFFFFFFFFFFFFFFFFFFFFFFF9900FFFFFFFFFFFFFF
            FFFFFF9900FFFFFFFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9900FFFFFF
            FFFFFFFFFFFFFFCC80FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9900FFFFEF
            D6FFFFAC30FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF}
          Layout = blGlyphTop
          ExplicitLeft = 9
        end
        object bnt_gravar2: TSpeedButton
          AlignWithMargins = True
          Left = 1
          Top = 1
          Width = 60
          Height = 52
          Cursor = crHandPoint
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Action = AcGravar
          Align = alLeft
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFB84FFFFFECCFFFFFDEAEFFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFFBF60FFFFF9EFFFFFFFFFFFFFFFFFFFFFCC80FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFDEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9
            77FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFFD99FFFFFFFFFFFFFFFFFFFFFD99FFFFFECCFFFFFFFFFFFFFFF
            FFFFFFAC30FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFFD99FFFFFDEAEFFFF9900FFFFB341FFFFF9EFFFFFFF
            FFFFFFF9EFFFFFB84FFFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFB340FFFFFF
            FFFFFFFFFFFFFFECCFFFFF9F10FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFCE
            85FFFFFFFFFFFFFFFFFFFFECCFFFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
            00FFFFD99FFFFFF2DFFFFFBF60FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA8
            26FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFFA826FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF99
            00FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FFFF9900FF}
          Layout = blGlyphTop
          OnClick = bnt_gravar2Click
          ExplicitLeft = -4
        end
        object SpeedButton7: TSpeedButton
          Left = 132
          Top = 0
          Width = 8
          Height = 54
          Align = alLeft
          Enabled = False
          Flat = True
          ExplicitLeft = 84
          ExplicitTop = -2
          ExplicitHeight = 72
        end
        object SpeedButton8: TSpeedButton
          Left = 62
          Top = 0
          Width = 8
          Height = 54
          Align = alLeft
          Enabled = False
          Flat = True
          ExplicitLeft = 0
          ExplicitTop = -2
          ExplicitHeight = 72
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 312
    Top = 136
  end
  inherited ActionList1: TActionList
    Left = 312
    Top = 72
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSUsuarios
    Left = 200
    Top = 624
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
    StoredProcName = 'SP_GEN_DB_USUARIO_ID'
    Left = 100
    Top = 622
  end
  object DSEmpresa: TDataSource
    DataSet = DMcadastro.CDSEmpresa
    Left = 313
    Top = 200
  end
  object FReport_Usuarios: TfrxReport
    Version = '5.6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43027.661412175900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FReport_UsuariosGetValue
    Left = 320
    Top = 640
    Datasets = <
      item
        DataSet = frxDBDataset1
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
      object Memo2: TfrxMemoView
        Left = 253.787570000000000000
        Width = 283.464750000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          '(RELATORIO DE USUARIOS)')
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
        Left = 0.779529999999999900
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
      object TotalPages: TfrxMemoView
        Left = 610.181510000000000000
        Top = -2.000000000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DisplayFormat.FormatStr = '00'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '[TotalPages#]')
        ParentFont = False
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Top = 10.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'd.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 42.929190000000000000
          Top = 10.000000000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Nome Usu'#225'rio')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 214.992270000000000000
          Top = 10.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Dt. Cadastro')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 300.039580000000000000
          Top = 10.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Sit.')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 387.630180000000000000
          Top = 10.000000000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Setor Trabalho')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 549.811380000000000000
          Top = 10.000000000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Cargo')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxMemoView
          Top = 1.133858269999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_USU: TfrxMemoView
          Left = 42.929190000000000000
          Top = 1.133858269999990000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'NM_USU'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NM_USU"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1DT_CAD: TfrxMemoView
          Left = 213.433210000000000000
          Top = 1.133858269999990000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'DT_CAD'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."DT_CAD"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1ST_USU: TfrxMemoView
          Left = 300.039580000000000000
          Top = 1.133858269999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'ST_USU'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."ST_USU"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_SET_TRB: TfrxMemoView
          Left = 387.630180000000000000
          Top = 1.133858269999990000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'NM_SET_TRB'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NM_SET_TRB"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_FNC: TfrxMemoView
          Left = 549.811380000000000000
          Top = 1.133858269999990000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'NM_FNC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FNC"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 7.000000000000000000
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
          Top = 7.000012199999986000
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
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NM_USU=NM_USU'
      'DT_CAD=DT_CAD'
      'ST_USU=ST_USU'
      'NM_SET_TRB=NM_SET_TRB'
      'NM_FNC=NM_FNC'
      'NV_ACS=NV_ACS'
      '-ID_EMPRESA=ID_EMPRESA'
      '-TP_IMP=TP_IMP'
      '-DS_SNH=DS_SNH'
      '-CD_FAM_PDT=CD_FAM_PDT'
      '-TP_ACS_CLI=TP_ACS_CLI'
      '-TP_ACS_FOR=TP_ACS_FOR'
      '-SN_CTL=SN_CTL'
      '-SN_PRC=SN_PRC'
      '-SN_CLI=SN_CLI'
      '-SN_FOR=SN_FOR'
      '-SN_CTR=SN_CTR'
      '-SN_CHQ_PDT=SN_CHQ_PDT'
      '-SN_CHQ_BXD=SN_CHQ_BXD'
      '-SN_CHQ_PDV=SN_CHQ_PDV'
      '-SN_CHQ_DVD=SN_CHQ_DVD'
      '-SN_CHQ_DVB=SN_CHQ_DVB'
      '-SN_CTP=SN_CTP'
      '-SN_PDT=SN_PDT'
      '-SN_ETQ=SN_ETQ'
      '-SN_TAB_PRC=SN_TAB_PRC'
      '-SN_EST=SN_EST'
      '-SN_DIV_FIN=SN_DIV_FIN'
      '-SN_DIV_FIS=SN_DIV_FIS'
      '-SN_FUN=SN_FUN'
      '-SN_VEN=SN_VEN'
      '-SN_REP=SN_REP'
      '-SN_TRN=SN_TRN'
      '-SN_NTF_RDZ=SN_NTF_RDZ'
      '-SN_NTE=SN_NTE'
      '-SN_PED_OCM=SN_PED_OCM'
      '-SN_RQS=SN_RQS'
      '-CD_USU=CD_USU'
      '-ID_VER_ATU=ID_VER_ATU'
      '-SN_PRC_FAT_EMS_NOTA=SN_PRC_FAT_EMS_NOTA'
      '-SN_PRC_RMS_RET_BANCARIA=SN_PRC_RMS_RET_BANCARIA'
      '-SN_PRC_CONTROLE_CHQ=SN_PRC_CONTROLE_CHQ'
      '-SN_PRC_SINTEGRA=SN_PRC_SINTEGRA'
      '-SN_PRC_LIVROSFISCAIS=SN_PRC_LIVROSFISCAIS'
      '-SN_PRC_LOTE_ORCAMENTOS=SN_PRC_LOTE_ORCAMENTOS'
      '-SN_PRC_CMS_VEND=SN_PRC_CMS_VEND'
      '-CD_USU_INC=CD_USU_INC')
    DataSet = DMcadastro.CDSUsuarios
    BCDToCurrency = False
    Left = 431
    Top = 647
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
    Left = 652
    Top = 667
  end
  object PopupMenu1: TPopupMenu
    Left = 700
    Top = 499
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
  object frxXLSExport1: TfrxXLSExport
    ShowDialog = False
    ExportNotPrintable = True
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = False
    ExportStyles = False
    ExportPictures = False
    OpenExcelAfterExport = True
    AsText = True
    Background = False
    FastExport = True
    PageBreaks = False
    EmptyLines = False
    SuppressPageHeadersFooters = False
    GridLines = False
    Left = 751
    Top = 671
  end
  object FR_Usuario_Matricial: TfrxReport
    Version = '5.6.7'
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
    OnGetValue = FR_Usuario_MatricialGetValue
    Left = 829
    Top = 431
    Datasets = <
      item
        DataSet = frxDBDataset1
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
      PaperHeight = 292.364394514661800000
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
          FontStyle = [fsxCondensed, fsx15cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO DE FORNECEDORES')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 153.000000000000000000
        Width = 940.800000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID: TfrxDMPMemoView
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          DataField = 'ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_USU: TfrxDMPMemoView
          Left = 76.800000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_USU'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_USU"]')
          TruncOutboundText = False
        end
        object frxDBDataset1ST_USU: TfrxDMPMemoView
          Left = 297.600000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          DataField = 'ST_USU'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."ST_USU"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_SET_TRB: TfrxDMPMemoView
          Left = 374.400000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_SET_TRB'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_SET_TRB"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_FNC: TfrxDMPMemoView
          Left = 652.800000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_FNC'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_FNC"]')
          TruncOutboundText = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 85.000000000000000000
        Width = 940.800000000000000000
        object DMPMemo5: TfrxDMPMemoView
          Top = 17.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CODIGO')
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 76.800000000000000000
          Top = 17.000000000000000000
          Width = 220.800000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME USUARIO')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 374.400000000000000000
          Top = 17.000000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'SETOR TRABALHO')
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 652.800000000000000000
          Top = 17.000000000000000000
          Width = 288.000000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'FUNCAO')
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Left = 297.600000000000000000
          Top = 17.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'STATUS')
          TruncOutboundText = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 204.000000000000000000
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
    Left = 829
    Top = 495
  end
end
