inherited FormCadProduto: TFormCadProduto
  Caption = 'Cadastro de produto'
  ClientHeight = 708
  ClientWidth = 856
  ExplicitWidth = 862
  ExplicitHeight = 737
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 856
    Height = 708
    ExplicitWidth = 856
    ExplicitHeight = 708
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 848
      ExplicitHeight = 677
      inherited PanelConsulta: TPanel
        Width = 848
        ExplicitWidth = 848
      end
      inherited Panel1: TPanel
        Width = 848
        ExplicitWidth = 848
      end
      inherited DBGrid1: TDBGrid
        Width = 848
        Height = 523
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
            FieldName = 'NM_PDT'
            Title.Caption = 'Nome do produto'
            Width = 201
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNI'
            Title.Caption = 'UN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_FAT_CVS'
            Title.Caption = 'Fator'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_LUC'
            Title.Caption = 'Margem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PR_PRZ_VRJ'
            Title.Caption = 'Pre'#231'o pre'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PR_PRZ_ATA'
            Title.Caption = 'Pre'#231'o Atacado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_SLD_ATU'
            Title.Caption = 'Saldo atual'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_SLD_PED'
            Title.Caption = 'Saldo pedido'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_CUS_MED'
            Title.Caption = 'Custo M'#233'dio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_SLD_ATU'
            Title.Caption = 'Estoque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SN_TAB_PRC'
            Title.Caption = 'Tabela'
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'CST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_RDC'
            Title.Caption = '% Rdc'
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = #218'tl.venda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Title.Caption = #218'ltimo registro'
            Visible = True
          end>
      end
      inherited ToolBar1: TToolBar
        Width = 848
        ExplicitWidth = 848
        inherited btnImprimir: TToolButton
          OnClick = btnImprimirClick
        end
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 848
      ExplicitHeight = 677
      inherited ToolBar2: TToolBar
        Top = 638
        Width = 848
        ExplicitTop = 638
        ExplicitWidth = 848
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 848
        Height = 41
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 14
          Top = 12
          Width = 125
          Height = 13
          Caption = 'ID/C'#243'digo do Produto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 584
          Top = 10
          Width = 97
          Height = 16
          Caption = 'C'#243'digo de barra:'
        end
        object DBEdit_ID: TDBEdit
          Left = 144
          Top = 7
          Width = 63
          Height = 24
          DataField = 'ID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
        end
        object DBEdit_DT_CAD: TDBEdit
          Left = 279
          Top = 7
          Width = 95
          Height = 24
          DataField = 'DT_CAD'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 2
        end
        object CB_ST_PDT: TDBComboBox
          Left = 378
          Top = 7
          Width = 115
          Height = 24
          Style = csDropDownList
          DataField = 'ST_PDT'
          DataSource = DSpadrao
          Items.Strings = (
            'Ativado'
            'Desativado')
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 689
          Top = 7
          Width = 75
          Height = 24
          DataField = 'CD_BAR'
          DataSource = DSpadrao
          TabOrder = 4
        end
        object DBEdit_CD_PDT: TDBEdit
          Left = 210
          Top = 7
          Width = 63
          Height = 24
          DataField = 'CD_PDT'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 1
          OnExit = DBEdit_CD_PDTExit
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 41
        Width = 848
        Height = 112
        Align = alTop
        TabOrder = 2
        object Label3: TLabel
          Left = 35
          Top = 15
          Width = 104
          Height = 16
          Caption = 'Nome do produto:'
        end
        object Label4: TLabel
          Left = 20
          Top = 45
          Width = 119
          Height = 16
          Caption = 'Exigir Complemento:'
        end
        object Label5: TLabel
          Left = 13
          Top = 80
          Width = 126
          Height = 13
          Caption = 'Largura/altura/espessura:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label61: TLabel
          Left = 558
          Top = 15
          Width = 123
          Height = 16
          Caption = 'Controlar estoque:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label62: TLabel
          Left = 583
          Top = 45
          Width = 98
          Height = 16
          Caption = 'Tabela de pre'#231'o:'
        end
        object Label63: TLabel
          Left = 593
          Top = 80
          Width = 88
          Height = 16
          Caption = 'Industrializado:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit_NM_PDT: TDBEdit
          Left = 144
          Top = 12
          Width = 349
          Height = 24
          DataField = 'NM_PDT'
          DataSource = DSpadrao
          TabOrder = 0
        end
        object CB_SN_CPL: TDBComboBox
          Left = 144
          Top = 42
          Width = 145
          Height = 24
          Style = csDropDownList
          DataField = 'SN_CPL'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 1
        end
        object DBEdit_VR_LAG: TDBEdit
          Left = 144
          Top = 75
          Width = 63
          Height = 24
          DataField = 'VR_LAG'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object DBEdit_VR_ALT: TDBEdit
          Left = 215
          Top = 75
          Width = 63
          Height = 24
          DataField = 'VR_ALT'
          DataSource = DSpadrao
          TabOrder = 3
        end
        object DBEdit_VR_ESP: TDBEdit
          Left = 286
          Top = 75
          Width = 63
          Height = 24
          DataField = 'VR_ESP'
          DataSource = DSpadrao
          TabOrder = 4
        end
        object CB_SN_CTL_ETQ: TDBComboBox
          Left = 688
          Top = 12
          Width = 86
          Height = 24
          Style = csDropDownList
          DataField = 'SN_CTL_ETQ'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 5
        end
        object CB_SN_TAB_PRC: TDBComboBox
          Left = 688
          Top = 42
          Width = 86
          Height = 24
          Style = csDropDownList
          DataField = 'SN_TAB_PRC'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 6
        end
        object CB_SN_IND: TDBComboBox
          Left = 688
          Top = 72
          Width = 86
          Height = 24
          Style = csDropDownList
          DataField = 'SN_IND'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 7
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 153
        Width = 848
        Height = 136
        Align = alTop
        TabOrder = 3
        object Label6: TLabel
          Left = 27
          Top = 15
          Width = 112
          Height = 16
          Caption = 'F'#225'milia de produto:'
        end
        object Label7: TLabel
          Left = 34
          Top = 48
          Width = 105
          Height = 16
          Caption = 'Grupo de produto:'
        end
        object Label8: TLabel
          Left = 22
          Top = 77
          Width = 117
          Height = 16
          Caption = 'Unidade do produto:'
        end
        object Label9: TLabel
          Left = 23
          Top = 106
          Width = 116
          Height = 16
          Caption = 'Unidade de compra:'
        end
        object Label10: TLabel
          Left = 560
          Top = 15
          Width = 121
          Height = 16
          Caption = 'Data de remarca'#231#227'o:'
        end
        object Label11: TLabel
          Left = 583
          Top = 48
          Width = 98
          Height = 16
          Caption = 'Peso do produto:'
        end
        object Label12: TLabel
          Left = 549
          Top = 77
          Width = 132
          Height = 16
          Caption = 'Fator de Convers'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 568
          Top = 106
          Width = 113
          Height = 16
          Caption = 'Baixar com Fator:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LK_FAM_PDT: TDBLookupComboBox
          Left = 144
          Top = 11
          Width = 349
          Height = 24
          DataField = 'ID_FAM_PDT'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_FAM_PDT'
          ListSource = DsFamPro
          TabOrder = 0
        end
        object LK_GRU_PDT: TDBLookupComboBox
          Left = 144
          Top = 43
          Width = 349
          Height = 24
          DataField = 'ID_GRU_PDT'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_GRU_PDT'
          ListSource = DsGruPro
          TabOrder = 1
        end
        object LK_UNI_PDT: TDBLookupComboBox
          Left = 144
          Top = 73
          Width = 349
          Height = 24
          DataField = 'ID_UNI_PDT'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_UNI_PDT'
          ListSource = DsUniPro
          TabOrder = 2
        end
        object LK_UNI_CMP: TDBLookupComboBox
          Left = 144
          Top = 103
          Width = 349
          Height = 24
          DataField = 'ID_UNI_CMP'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_UNI_PDT'
          ListSource = DsUniPro
          TabOrder = 3
        end
        object DBEdit_DT_RMC: TDBEdit
          Left = 689
          Top = 12
          Width = 145
          Height = 24
          DataField = 'DT_RMC'
          DataSource = DSpadrao
          TabOrder = 4
        end
        object DBEdit_PS_PDT: TDBEdit
          Left = 689
          Top = 45
          Width = 145
          Height = 24
          DataField = 'PS_PDT'
          DataSource = DSpadrao
          TabOrder = 5
        end
        object DBEdit_VR_FAT_CVS: TDBEdit
          Left = 689
          Top = 74
          Width = 145
          Height = 24
          DataField = 'VR_FAT_CVS'
          DataSource = DSpadrao
          TabOrder = 6
        end
        object CB_SN_FAT_CVS: TDBComboBox
          Left = 689
          Top = 103
          Width = 86
          Height = 24
          Style = csDropDownList
          DataField = 'SN_FAT_CVS'
          DataSource = DSpadrao
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 7
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 289
        Width = 848
        Height = 331
        ActivePage = TabSheet4
        Align = alTop
        TabOrder = 4
        object TabSheet1: TTabSheet
          Caption = 'Estoque'
          object GroupBox4: TGroupBox
            Left = 3
            Top = 3
            Width = 446
            Height = 30
            TabOrder = 0
            object Label14: TLabel
              Left = 5
              Top = 4
              Width = 132
              Height = 16
              Caption = 'Estoque da empresa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object GroupBox5: TGroupBox
            Left = 3
            Top = 27
            Width = 446
            Height = 70
            TabOrder = 1
            object Label15: TLabel
              Left = 13
              Top = 12
              Width = 97
              Height = 16
              Caption = 'Saldo invent'#225'rio:'
            end
            object Label16: TLabel
              Left = 33
              Top = 41
              Width = 77
              Height = 16
              Caption = 'Saldo atual:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit12: TDBEdit
              Left = 116
              Top = 9
              Width = 94
              Height = 24
              Color = clInfoBk
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 0
            end
            object DBEdit_QT_SLD_ATU: TDBEdit
              Left = 116
              Top = 38
              Width = 94
              Height = 24
              Color = clInfoBk
              DataField = 'QT_SLD_ATU'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 1
            end
            object DBEdit18: TDBEdit
              Left = 244
              Top = 9
              Width = 77
              Height = 24
              Color = clInfoBk
              Enabled = False
              TabOrder = 2
            end
          end
          object GroupBox6: TGroupBox
            Left = 3
            Top = 95
            Width = 446
            Height = 151
            TabOrder = 2
            object Label17: TLabel
              Left = 9
              Top = 20
              Width = 101
              Height = 16
              Caption = 'Saldo em Pedido:'
            end
            object Label18: TLabel
              Left = 12
              Top = 49
              Width = 98
              Height = 16
              Caption = 'Saldo reservado:'
            end
            object Label19: TLabel
              Left = 14
              Top = 79
              Width = 96
              Height = 16
              Caption = 'Estoque m'#237'nimo:'
            end
            object Label20: TLabel
              Left = 12
              Top = 108
              Width = 98
              Height = 16
              Caption = 'Estoque Maximo:'
            end
            object DBEdit_QT_SLD_PED: TDBEdit
              Left = 116
              Top = 17
              Width = 94
              Height = 24
              Color = clInfoBk
              DataField = 'QT_SLD_PED'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 0
            end
            object DBEdit15: TDBEdit
              Left = 116
              Top = 46
              Width = 94
              Height = 24
              Color = clInfoBk
              DataField = 'QT_SLD_PED'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 1
            end
            object DBEdit_QT_SLD_MIN: TDBEdit
              Left = 116
              Top = 76
              Width = 94
              Height = 24
              DataField = 'QT_SLD_MIN'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit_QT_SLD_MAX: TDBEdit
              Left = 116
              Top = 105
              Width = 94
              Height = 24
              DataField = 'QT_SLD_MAX'
              DataSource = DSpadrao
              TabOrder = 3
            end
          end
          object BitBtn1: TBitBtn
            Left = 512
            Top = 104
            Width = 318
            Height = 25
            Caption = 'Foto do produto'
            TabOrder = 3
          end
          object BitBtn2: TBitBtn
            Left = 512
            Top = 135
            Width = 318
            Height = 25
            Caption = #218'ltimas Entradas do Produto'
            TabOrder = 4
          end
          object BitBtn3: TBitBtn
            Left = 512
            Top = 166
            Width = 318
            Height = 25
            Caption = #218'ltimas Sa'#237'das do produto'
            TabOrder = 5
          end
          object GroupBox18: TGroupBox
            Left = 448
            Top = 3
            Width = 389
            Height = 30
            TabOrder = 6
            object Label64: TLabel
              Left = 3
              Top = 3
              Width = 135
              Height = 16
              Caption = 'Estoque de terceiros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label65: TLabel
              Left = 244
              Top = 4
              Width = 143
              Height = 16
              Caption = 'Em poder de terceiros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object GroupBox19: TGroupBox
            Left = 448
            Top = 27
            Width = 389
            Height = 70
            TabOrder = 7
            object DBEdit2: TDBEdit
              Left = 4
              Top = 9
              Width = 113
              Height = 24
              Color = clInfoBk
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 0
            end
            object DBEdit4: TDBEdit
              Left = 4
              Top = 38
              Width = 113
              Height = 24
              Color = clInfoBk
              DataField = 'QT_SLD_ATU'
              DataSource = DSpadrao
              Enabled = False
              TabOrder = 1
            end
            object DBEdit5: TDBEdit
              Left = 272
              Top = 9
              Width = 113
              Height = 24
              Color = clInfoBk
              Enabled = False
              TabOrder = 2
            end
            object DBEdit6: TDBEdit
              Left = 272
              Top = 39
              Width = 113
              Height = 24
              Color = clInfoBk
              Enabled = False
              TabOrder = 3
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Custos'
          ImageIndex = 1
          object GroupBox7: TGroupBox
            Left = 3
            Top = 3
            Width = 486
            Height = 105
            TabOrder = 0
            object Label21: TLabel
              Left = 38
              Top = 16
              Width = 94
              Height = 16
              Caption = #217'ltimas compra:'
            end
            object Label22: TLabel
              Left = 48
              Top = 45
              Width = 84
              Height = 16
              Caption = #217'ltimo custo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 56
              Top = 75
              Width = 76
              Height = 16
              Caption = 'Custo m'#233'dio:'
            end
            object DBEdit_PR_ULT_CMP: TDBEdit
              Left = 138
              Top = 13
              Width = 119
              Height = 24
              DataField = 'PR_ULT_CMP'
              DataSource = DSpadrao
              TabOrder = 0
              OnEnter = DBEdit_PR_ULT_CMPEnter
            end
            object DBEdit_VR_ULT_CUS: TDBEdit
              Left = 138
              Top = 42
              Width = 119
              Height = 24
              DataField = 'VR_ULT_CUS'
              DataSource = DSpadrao
              TabOrder = 1
              OnEnter = DBEdit_VR_ULT_CUSEnter
            end
            object DBEdit_VR_CUS_MED: TDBEdit
              Left = 138
              Top = 72
              Width = 119
              Height = 24
              DataField = 'VR_CUS_MED'
              DataSource = DSpadrao
              TabOrder = 2
              OnEnter = DBEdit_VR_CUS_MEDEnter
            end
            object DBEdit_DT_ULT_CMP: TDBEdit
              Left = 298
              Top = 13
              Width = 119
              Height = 24
              DataField = 'DT_ULT_CMP'
              DataSource = DSpadrao
              TabOrder = 3
            end
          end
          object GroupBox8: TGroupBox
            Left = 3
            Top = 114
            Width = 486
            Height = 71
            TabOrder = 1
            object Label24: TLabel
              Left = 14
              Top = 27
              Width = 118
              Height = 16
              Caption = '% Margem de lucro:'
            end
            object Label25: TLabel
              Left = 267
              Top = 27
              Width = 210
              Height = 16
              Caption = 'Sobre o '#249'ltimo custo mercadoria'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit_PC_LUC: TDBEdit
              Left = 138
              Top = 24
              Width = 119
              Height = 24
              DataField = 'PC_LUC'
              DataSource = DSpadrao
              TabOrder = 0
            end
          end
          object Button1: TButton
            Left = 511
            Top = 102
            Width = 306
            Height = 37
            Caption = #217'ltimas Entradas do produto'
            TabOrder = 2
          end
          object Button2: TButton
            Left = 511
            Top = 145
            Width = 306
            Height = 37
            Caption = #217'ltimas Sa'#237'das do produto'
            TabOrder = 3
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Pre'#231'o'
          ImageIndex = 2
          object GroupBox9: TGroupBox
            Left = 13
            Top = 16
            Width = 388
            Height = 97
            TabOrder = 0
            object Label26: TLabel
              Left = 10
              Top = 3
              Width = 198
              Height = 16
              Caption = 'Pre'#231'o de venda para o varejo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit_PR_PRZ_VRJ: TDBEdit
              Left = 104
              Top = 25
              Width = 104
              Height = 24
              DataField = 'PR_PRZ_VRJ'
              DataSource = DSpadrao
              TabOrder = 0
            end
          end
          object GroupBox10: TGroupBox
            Left = 400
            Top = 16
            Width = 388
            Height = 97
            TabOrder = 1
            object Label27: TLabel
              Left = 18
              Top = 3
              Width = 209
              Height = 16
              Caption = 'Pre'#231'o de venda para o atacado:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit_PR_PRZ_ATA: TDBEdit
              Left = 123
              Top = 25
              Width = 104
              Height = 24
              DataField = 'PR_PRZ_ATA'
              DataSource = DSpadrao
              TabOrder = 0
            end
          end
          object GroupBox11: TGroupBox
            Left = 13
            Top = 111
            Width = 388
            Height = 58
            TabOrder = 2
            object Label28: TLabel
              Left = 125
              Top = 8
              Width = 83
              Height = 16
              Caption = '% Comiss'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit_PC_CMS_VRJ: TDBEdit
              Left = 126
              Top = 26
              Width = 82
              Height = 24
              DataField = 'PC_CMS_VRJ'
              DataSource = DSpadrao
              TabOrder = 0
            end
          end
          object GroupBox12: TGroupBox
            Left = 400
            Top = 111
            Width = 388
            Height = 58
            TabOrder = 3
            object Label29: TLabel
              Left = 149
              Top = 8
              Width = 83
              Height = 16
              Caption = '% Comiss'#227'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit_PC_CMS_ATA: TDBEdit
              Left = 149
              Top = 26
              Width = 82
              Height = 24
              DataField = 'PC_CMS_ATA'
              DataSource = DSpadrao
              TabOrder = 0
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Markup'
          ImageIndex = 3
          object Label30: TLabel
            Left = 120
            Top = 6
            Width = 53
            Height = 16
            Caption = 'Markup:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 70
            Top = 33
            Width = 103
            Height = 16
            Caption = 'Al'#237'quota de ICMS:'
          end
          object Label32: TLabel
            Left = 137
            Top = 60
            Width = 36
            Height = 16
            Caption = '%PIS:'
          end
          object Label33: TLabel
            Left = 124
            Top = 88
            Width = 49
            Height = 16
            Caption = 'COFINS:'
          end
          object Label34: TLabel
            Left = 23
            Top = 115
            Width = 150
            Height = 16
            Caption = 'Despesas Administrativas:'
          end
          object Label35: TLabel
            Left = 45
            Top = 142
            Width = 128
            Height = 16
            Caption = 'Despesas Financeiras:'
          end
          object Label36: TLabel
            Left = 48
            Top = 170
            Width = 125
            Height = 16
            Caption = 'Despesas de Entrega:'
          end
          object Label37: TLabel
            Left = 54
            Top = 197
            Width = 119
            Height = 16
            Caption = 'Comiss'#227'o Vendedor:'
          end
          object Label38: TLabel
            Left = 68
            Top = 225
            Width = 105
            Height = 16
            Caption = 'Margem de Lucro:'
          end
          object Label39: TLabel
            Left = 607
            Top = 6
            Width = 70
            Height = 16
            Caption = 'Al'#237'quota IPI:'
          end
          object DBEdit28: TDBEdit
            Left = 180
            Top = 3
            Width = 76
            Height = 24
            DataSource = DSpadrao
            TabOrder = 0
          end
          object DBEdit29: TDBEdit
            Left = 180
            Top = 30
            Width = 76
            Height = 24
            DataField = 'AL_ICM_MKP'
            DataSource = DSpadrao
            TabOrder = 1
          end
          object DBEdit30: TDBEdit
            Left = 180
            Top = 57
            Width = 76
            Height = 24
            DataField = 'AL_PIS_MKP'
            DataSource = DSpadrao
            TabOrder = 2
          end
          object DBEdit31: TDBEdit
            Left = 180
            Top = 85
            Width = 76
            Height = 24
            DataField = 'AL_COF_MKP'
            DataSource = DSpadrao
            TabOrder = 3
          end
          object DBEdit32: TDBEdit
            Left = 180
            Top = 112
            Width = 76
            Height = 24
            DataField = 'PC_DPA_MKP'
            DataSource = DSpadrao
            TabOrder = 4
          end
          object DBEdit33: TDBEdit
            Left = 180
            Top = 139
            Width = 76
            Height = 24
            DataField = 'PC_DPF_MKP'
            DataSource = DSpadrao
            TabOrder = 5
          end
          object DBEdit34: TDBEdit
            Left = 180
            Top = 167
            Width = 76
            Height = 24
            DataField = 'PC_DPE_MKP'
            DataSource = DSpadrao
            TabOrder = 6
          end
          object DBEdit35: TDBEdit
            Left = 180
            Top = 194
            Width = 76
            Height = 24
            DataField = 'PC_CMS_MKP'
            DataSource = DSpadrao
            TabOrder = 7
          end
          object DBEdit36: TDBEdit
            Left = 180
            Top = 222
            Width = 76
            Height = 24
            DataField = 'PC_MLC_MKC'
            DataSource = DSpadrao
            TabOrder = 8
          end
          object DBEdit37: TDBEdit
            Left = 685
            Top = 3
            Width = 76
            Height = 24
            TabOrder = 9
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Fiscal vendas'
          ImageIndex = 4
          object Label47: TLabel
            Left = 48
            Top = 229
            Width = 101
            Height = 16
            Caption = 'Al'#237'quota de IPI:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label48: TLabel
            Left = 0
            Top = 256
            Width = 149
            Height = 16
            Caption = 'Situa'#231#227'o tribut'#225'ria IPI:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox13: TGroupBox
            Left = 13
            Top = 1
            Width = 817
            Height = 149
            TabOrder = 0
            object Label40: TLabel
              Left = 104
              Top = 23
              Width = 32
              Height = 16
              Caption = 'NCM:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label41: TLabel
              Left = 63
              Top = 53
              Width = 73
              Height = 16
              Caption = 'CST Venda:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label42: TLabel
              Left = 30
              Top = 88
              Width = 4
              Height = 16
            end
            object Label43: TLabel
              Left = 35
              Top = 118
              Width = 101
              Height = 16
              Caption = '% Redu'#231#227'o base:'
            end
            object Label44: TLabel
              Left = 599
              Top = 118
              Width = 132
              Height = 16
              Caption = #192'liquota Icms p/venda:'
            end
            object DBEdit_CD_NCM: TDBEdit
              Left = 140
              Top = 20
              Width = 77
              Height = 24
              DataField = 'CD_NCM'
              DataSource = DSpadrao
              TabOrder = 0
            end
            object DBEdit_PC_RDC: TDBEdit
              Left = 140
              Top = 115
              Width = 77
              Height = 24
              DataField = 'PC_RDC'
              DataSource = DSpadrao
              TabOrder = 3
            end
            object DBEdit_AL_ICM_VND: TDBEdit
              Left = 732
              Top = 115
              Width = 76
              Height = 24
              DataField = 'AL_ICM_VND'
              DataSource = DSpadrao
              TabOrder = 4
            end
            object CB_CST_CPM: TComboBox
              Left = 140
              Top = 80
              Width = 668
              Height = 24
              Style = csDropDownList
              TabOrder = 2
              OnExit = CB_CST_CPMExit
            end
            object CB_CD_CST: TComboBox
              Left = 140
              Top = 50
              Width = 668
              Height = 24
              Style = csDropDownList
              TabOrder = 1
              Items.Strings = (
                '0 - Nacional, exceto as indicadas nos c'#243'digos 3 a 5'
                '1 - Estrangeira - Importa'#231#227'o direta'
                '2 - Estrangeira - Adquirida no mercado interno'
                
                  '3 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
                  'ior a 40%'
                
                  '4 - Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
                  ' os processos produtivos b'#225'sicos'
                
                  '5 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
                  'ior ou igual a 40%'
                '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional'
                
                  '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
                  'onal')
            end
          end
          object GroupBox14: TGroupBox
            Left = 13
            Top = 151
            Width = 817
            Height = 69
            TabOrder = 1
            object Label45: TLabel
              Left = 59
              Top = 11
              Width = 77
              Height = 16
              Caption = 'Tipo de item:'
            end
            object Label46: TLabel
              Left = 30
              Top = 40
              Width = 106
              Height = 16
              Caption = 'C'#243'digo do g'#234'nero:'
            end
            object CB_TP_ITE: TDBComboBox
              Left = 140
              Top = 10
              Width = 668
              Height = 24
              Style = csDropDownList
              DataField = 'TP_ITE'
              DataSource = DSpadrao
              Items.Strings = (
                '00: Mercadoria para Revenda'
                '01: Mat'#233'ria-Prima'
                '02: Embalagem'
                '03: Produto em Processo'
                '04: Produto Acabado'
                '05: Subproduto'
                '06: Produto Intermedi'#225'rio'
                '07: Material de Uso e Consumo'
                '08: Ativo Imobilizado'
                '09: Servi'#231'os'
                '10: Outros insumos'
                '99: Outras')
              TabOrder = 0
            end
            object CB_CD_GEN_ITE: TDBComboBox
              Left = 140
              Top = 38
              Width = 668
              Height = 24
              Style = csDropDownList
              DataField = 'CD_GEN_ITE'
              DataSource = DSpadrao
              Items.Strings = (
                '00 Servi'#231'o'
                '01 Animais vivos'
                '02 Carnes e miudezas, comest'#237'veis'
                
                  '03 Peixes e crust'#225'ceos, moluscos e os outros invertebrados aqu'#225't' +
                  'icos'
                
                  '04 Leite e latic'#237'nios; ovos de aves; mel natural; produtos comes' +
                  't'#237'veis de origem animal, n'#227'o especificados nem compreendidos em ' +
                  'outros Cap'#237'tulos da TIPI'
                
                  '05 Outros produtos de origem animal, n'#227'o especificados nem compr' +
                  'eendidos em outros Cap'#237'tulos da TIPI'
                '06 Plantas vivas e produtos de floricultura'
                
                  '07 Produtos hort'#237'colas, plantas, ra'#237'zes e tub'#233'rculos, comest'#237'vei' +
                  's'
                '08 Frutas; cascas de c'#237'tricos e de mel'#245'es'
                '09 Caf'#233', ch'#225', mate e especiarias'
                '10 Cereais'
                
                  '11 Produtos da ind'#250'stria de moagem; malte; amidos e f'#233'culas; inu' +
                  'lina; gl'#250'ten de trigo'
                
                  '12 Sementes e frutos oleaginosos; gr'#227'os, sementes e frutos diver' +
                  'sos; plantas industriais ou medicinais; palha e forragem'
                '13 Gomas, resinas e outros sucos e extratos vegetais'
                
                  '14 Mat'#233'rias para entran'#231'ar e outros produtos de origem vegetal, ' +
                  'n'#227'o especificadas nem compreendidas em outros Cap'#237'tulos da NCM'
                
                  '15 Gorduras e '#243'leos animais ou vegetais; produtos da sua dissoci' +
                  'a'#231#227'o; gorduras alimentares elaboradas; ceras de origem animal ou' +
                  ' vegetal '
                
                  '16 Prepara'#231#245'es de carne, de peixes ou de crust'#225'ceos, de moluscos' +
                  ' ou de outros invertebrados aqu'#225'ticos'
                '17 A'#231#250'cares e produtos de confeitaria'
                '18 Cacau e suas prepara'#231#245'es'
                
                  '19 Prepara'#231#245'es '#224' base de cereais, farinhas, amidos, f'#233'culas ou d' +
                  'e leite; produtos de pastelaria'
                
                  '20 Prepara'#231#245'es de produtos hort'#237'colas, de frutas ou de outras pa' +
                  'rtes de plantas'
                '21 Prepara'#231#245'es aliment'#237'cias diversas'
                '22 Bebidas, l'#237'quidos alco'#243'licos e vinagres'
                
                  '23 Res'#237'duos e desperd'#237'cios das ind'#250'strias alimentares; alimentos' +
                  ' preparados para animais'
                '24 Fumo (tabaco) e seus suced'#226'neos, manufaturados'
                '25 Sal; enxofre; terras e pedras; gesso, cal e cimento'
                '26 Min'#233'rios, esc'#243'rias e cinzas'
                
                  '27 Combust'#237'veis minerais, '#243'leos minerais e produtos de sua desti' +
                  'la'#231#227'o; mat'#233'rias betuminosas; ceras minerais'
                
                  '28 Produtos qu'#237'micos inorg'#226'nicos; compostos inorg'#226'nicos ou org'#226'n' +
                  'icos de metais preciosos,de elementos radioativos, de metais das' +
                  ' terras raras ou de is'#243'topos'
                '29 Produtos qu'#237'micos org'#226'nicos'
                '30 Produtos farmac'#234'uticos'
                '31 Adubos ou fertilizantes'
                
                  '32 Extratos tanantes e tintoriais; taninos e seus derivados; pig' +
                  'mentos e outras mat'#233'rias corantes, tintas e vernizes, m'#225'stiques;' +
                  ' tintas de escrever'
                
                  '33 '#211'leos essenciais e resin'#243'ides; produtos de perfumaria ou de t' +
                  'oucador preparados e prepara'#231#245'es cosm'#233'ticas'
                
                  '35 Mat'#233'rias albumin'#243'ides; produtos '#224' base de amidos ou de f'#233'cula' +
                  's modificados; colas;enzimas'
                
                  '36 P'#243'lvoras e explosivos; artigos de pirotecnia; f'#243'sforos; ligas' +
                  ' pirof'#243'ricas; mat'#233'rias inflam'#225'veis'
                '37 Produtos para fotografia e cinematografia'
                '38 Produtos diversos das ind'#250'strias qu'#237'micas'
                '39 Pl'#225'sticos e suas obras'
                '40 Borracha e suas obras'
                '41 Peles, exceto a peleteria (peles com p'#234'lo*), e couros'
                
                  '42 Obras de couro; artigos de correeiro ou de seleiro; artigos d' +
                  'e viagem, bolsas e artefatos semelhantes; obras de tripa'
                
                  '43 Peleteria (peles com p'#234'lo*) e suas obras; peleteria (peles co' +
                  'm p'#234'lo*) artificial'
                '44 Madeira, carv'#227'o vegetal e obras de madeira'
                '45 Corti'#231'a e suas obras'
                '46 Obras de espartaria ou de cestaria'
                
                  '47 Pastas de madeira ou de outras mat'#233'rias fibrosas celul'#243'sicas;' +
                  ' papel ou cart'#227'o de reciclar (desperd'#237'cios e aparas)'
                
                  '48 Papel e cart'#227'o; obras de pasta de celulose, de papel ou de ca' +
                  'rt'#227'o'
                
                  '49 Livros, jornais, gravuras e outros produtos das ind'#250'strias gr' +
                  #225'ficas; textos manuscritos ou datilografados, planos e plantas'
                '50 Seda'
                '51 L'#227' e p'#234'los finos ou grosseiros; fios e tecidos de crina'
                '52 Algod'#227'o'
                
                  '53 Outras fibras t'#234'xteis vegetais; fios de papel e tecido de fio' +
                  's de papel'
                '54 Filamentos sint'#233'ticos ou artificiais'
                '55 Fibras sint'#233'ticas ou artificiais, descont'#237'nuas'
                
                  '56 Pastas ('#8220'ouates'#8221'), feltros e falsos tecidos; fios especiais; ' +
                  'cord'#233'is, cordas e cabos; artigos de cordoaria'
                
                  '57 Tapetes e outros revestimentos para pavimentos, de mat'#233'rias t' +
                  #234'xteis'
                
                  '58 Tecidos especiais; tecidos tufados; rendas; tape'#231'arias; passa' +
                  'manarias; bordados'
                
                  '59 Tecidos impregnados, revestidos, recobertos ou estratificados' +
                  '; artigos para usos t'#233'cnicos de mat'#233'rias t'#234'xteis'
                '60 Tecidos de malha'
                '61 Vestu'#225'rio e seus acess'#243'rios, de malha'
                '62 Vestu'#225'rio e seus acess'#243'rios, exceto de malha'
                
                  '63 Outros artefatos t'#234'xteis confeccionados; sortidos; artefatos ' +
                  'de mat'#233'rias t'#234'xteis, cal'#231'ados,chap'#233'us e artefatos de uso semelha' +
                  'nte, usados; trapos'
                '64 Cal'#231'ados, polainas e artefatos semelhantes, e suas partes'
                '65 Chap'#233'us e artefatos de uso semelhante, e suas partes'
                
                  '66 Guarda-chuvas, sombrinhas, guarda-s'#243'is, bengalas, bengalas-as' +
                  'sentos, chicotes, e suas partes'
                
                  '67 Penas e penugem preparadas, e suas obras; flores artificiais;' +
                  ' obras de cabelo'
                
                  '68 Obras de pedra, gesso, cimento, amianto, mica ou de mat'#233'rias ' +
                  'semelhantes'
                '69 Produtos cer'#226'micos'
                '70 Vidro e suas obras'
                
                  '71 P'#233'rolas naturais ou cultivadas, pedras preciosas ou semipreci' +
                  'osas e semelhantes, metais preciosos, metais folheados ou chapea' +
                  'dos de metais preciosos, e suas obras; bijuterias;moedas'
                '72 Ferro fundido, ferro e a'#231'o'
                '73 Obras de ferro fundido, ferro ou a'#231'o'
                '74 Cobre e suas obras'
                '75 N'#237'quel e suas obras'
                '76 Alum'#237'nio e suas obras'
                '77 (Reservado para uma eventual utiliza'#231#227'o futura no SH)'
                '78 Chumbo e suas obras'
                '79 Zinco e suas obras'
                '80 Estanho e suas obras'
                
                  '81 Outros metais comuns; ceramais ('#8220'cermets'#8221'); obras dessas mat'#233 +
                  'rias'
                
                  '82 Ferramentas, artefatos de cutelaria e talheres, e suas partes' +
                  ', de metais comuns'
                '83 Obras diversas de metais comuns'
                
                  '84 Reatores nucleares, caldeiras, m'#225'quinas, aparelhos e instrume' +
                  'ntos mec'#226'nicos, e suas partes'
                
                  '85M'#225'quinas, aparelhos e materiais el'#233'tricos, e suas partes; apar' +
                  'elhos de grava'#231#227'o ou de reprodu'#231#227'o de som, aparelhos de grava'#231#227'o' +
                  ' ou de reprodu'#231#227'o de imagens e de som em televis'#227'o, e suas parte' +
                  's e acess'#243'rios'
                
                  '86 Ve'#237'culos e material para vias f'#233'rreas ou semelhantes, e suas ' +
                  'partes; aparelhos mec'#226'nicos(inclu'#237'dos os eletromec'#226'nicos) de sin' +
                  'aliza'#231#227'o para vias de comunica'#231#227'o'
                
                  '87 Ve'#237'culos autom'#243'veis, tratores, ciclos e outros ve'#237'culos terre' +
                  'stres, suas partes e acess'#243'rios'
                '88 Aeronaves e aparelhos espaciais, e suas partes'
                '89 Embarca'#231#245'es e estruturas flutuantes'
                
                  '90 Instrumentos e aparelhos de '#243'ptica, fotografia ou cinematogra' +
                  'fia, medida, controle ou de precis'#227'o; instrumentos e aparelhos m' +
                  #233'dico-cir'#250'rgicos; suas partes e acess'#243'rios'
                '91 Aparelhos de relojoaria e suas partes'
                '92 Instrumentos musicais, suas partes e acess'#243'rios'
                '93 Armas e muni'#231#245'es; suas partes e acess'#243'rios'
                
                  '94 M'#243'veis, mobili'#225'rio m'#233'dico-cir'#250'rgico; colch'#245'es; ilumina'#231#227'o e c' +
                  'onstru'#231#227'o pr'#233'-fabricadas'
                
                  '95 Brinquedos, jogos, artigos para divertimento ou para esporte;' +
                  ' suas partes e acess'#243'rios'
                '96 Obras diversas'
                '97 Objetos de arte, de cole'#231#227'o e antiguidades'
                '98 (Reservado para usos especiais pelas Partes Contratantes)'
                
                  '99 Opera'#231#245'es especiais (utilizado exclusivamente pelo Brasil par' +
                  'a classificar opera'#231#245'es especiais na exporta'#231#227'o)')
              TabOrder = 1
            end
          end
          object DBEdit_AL_IPI: TDBEdit
            Left = 153
            Top = 226
            Width = 77
            Height = 24
            DataField = 'AL_IPI'
            DataSource = DSpadrao
            TabOrder = 2
          end
          object CB_CD_CST_IPS: TDBComboBox
            Left = 153
            Top = 253
            Width = 668
            Height = 24
            Style = csDropDownList
            DataField = 'CD_CST_IPS'
            DataSource = DSpadrao
            Items.Strings = (
              '50 '#8211' Sa'#237'da Tributada'
              '51 '#8211' Sa'#237'da Tribut'#225'vel com Al'#237'quota Zero'
              '52 '#8211' Sa'#237'da Isenta'
              '53 '#8211' Sa'#237'da N'#227'o Tributada'
              '54 '#8211' Sa'#237'da Imune'
              '55 '#8211' Sa'#237'da com Suspens'#227'o'
              '99 '#8211' Outras Sa'#237'das')
            TabOrder = 3
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Fiscal compras'
          ImageIndex = 5
          object Label53: TLabel
            Left = 52
            Top = 168
            Width = 81
            Height = 16
            Caption = 'Al'#237'quota IPI:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label54: TLabel
            Left = 4
            Top = 200
            Width = 129
            Height = 13
            Caption = 'Situa'#231#227'o tribut'#225'ria IPI:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox15: TGroupBox
            Left = 1
            Top = 3
            Width = 837
            Height = 141
            TabOrder = 0
            object Label49: TLabel
              Left = 58
              Top = 16
              Width = 76
              Height = 16
              Caption = 'CST compra:'
            end
            object Label50: TLabel
              Left = 33
              Top = 80
              Width = 101
              Height = 16
              Caption = '% Redu'#231#227'o base:'
            end
            object Label51: TLabel
              Left = 565
              Top = 80
              Width = 147
              Height = 16
              Caption = 'Al'#237'quota Subst. tribut'#225'ria:'
            end
            object Label52: TLabel
              Left = 546
              Top = 108
              Width = 166
              Height = 16
              Caption = 'Al'#237'quota icms p/Substitui'#231#227'o:'
            end
            object DBEdit_PC_RDC_CMP: TDBEdit
              Left = 139
              Top = 77
              Width = 63
              Height = 24
              DataField = 'PC_RDC_CMP'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit_AL_ICM_M12: TDBEdit
              Left = 714
              Top = 77
              Width = 56
              Height = 24
              DataField = 'AL_ICR_CMP'
              DataSource = DSpadrao
              TabOrder = 3
            end
            object DBEdit_AL_ICM_ICR: TDBEdit
              Left = 714
              Top = 105
              Width = 56
              Height = 24
              DataField = 'AL_ICM_ICR'
              DataSource = DSpadrao
              TabOrder = 4
            end
            object CB_CD_CST_CMP1: TComboBox
              Left = 138
              Top = 13
              Width = 632
              Height = 24
              Style = csDropDownList
              TabOrder = 0
              Items.Strings = (
                '0 - Nacional, exceto as indicadas nos c'#243'digos 3 a 5'
                '1 - Estrangeira - Importa'#231#227'o direta'
                '2 - Estrangeira - Adquirida no mercado interno'
                
                  '3 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
                  'ior a 40%'
                
                  '4 - Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
                  ' os processos produtivos b'#225'sicos'
                
                  '5 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
                  'ior ou igual a 40%'
                '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional'
                
                  '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
                  'onal')
            end
            object CB_CD_CST_CMP2: TComboBox
              Left = 138
              Top = 44
              Width = 632
              Height = 24
              Style = csDropDownList
              TabOrder = 1
              Items.Strings = (
                '')
            end
          end
          object CB_CD_CST_IPE: TDBComboBox
            Left = 139
            Top = 195
            Width = 324
            Height = 24
            Style = csDropDownList
            DataField = 'CD_CST_IPE'
            DataSource = DSpadrao
            Items.Strings = (
              '00 '#8211' Entrada com Recupera'#231#227'o de Cr'#233'dito'
              '01 '#8211' Entrada Tributada com Al'#237'quota Zero'
              '02 '#8211' Entrada Isenta'
              '03 '#8211' Entrada N'#227'o Tributada'
              '04 '#8211' Entrada Imune'
              '05 '#8211' Entrada com Suspens'#227'o'
              '49 '#8211' Outras Entradas')
            TabOrder = 2
          end
          object DBEdit_AL_IPI_CMP: TDBEdit
            Left = 139
            Top = 165
            Width = 63
            Height = 24
            DataField = 'AL_IPI_CMP'
            DataSource = DSpadrao
            TabOrder = 1
          end
        end
        object TabSheet7: TTabSheet
          Caption = 'Tributa'#231#227'o no Estado'
          ImageIndex = 6
          OnShow = TabSheet7Show
          object DBGrid2: TDBGrid
            Left = 3
            Top = 3
            Width = 622
            Height = 227
            DataSource = DSPDTTBT
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'UF_ORG'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_PDT'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'AL_ICM'
                Title.Caption = 'Al'#237'quota ICMS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AL_FECOP'
                Title.Caption = 'Al'#237'quota FECOP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CD_USU'
                Visible = False
              end>
          end
          object Btn_incluir: TButton
            Left = 651
            Top = 3
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 1
            OnClick = Btn_incluirClick
          end
          object Btn_Deletar: TButton
            Left = 745
            Top = 3
            Width = 75
            Height = 25
            Caption = 'Deletar'
            TabOrder = 2
            OnClick = Btn_DeletarClick
          end
          object Panel_PDTTBT: TPanel
            Left = 3
            Top = 238
            Width = 834
            Height = 58
            BevelOuter = bvNone
            TabOrder = 3
            Visible = False
            object Btn_Gravar: TButton
              Left = 648
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Gravar'
              TabOrder = 3
              OnClick = Btn_GravarClick
            end
            object Btn_cancelar: TButton
              Left = 742
              Top = 16
              Width = 75
              Height = 25
              Caption = 'Cancelar'
              TabOrder = 4
              OnClick = Btn_cancelarClick
            end
            object DBEdit_AL_ICM: TDBEdit
              Left = 477
              Top = 16
              Width = 65
              Height = 24
              DataField = 'AL_ICM'
              DataSource = DSPDTTBT
              TabOrder = 1
            end
            object DBEdit_AL_FECOP: TDBEdit
              Left = 557
              Top = 16
              Width = 65
              Height = 24
              DataField = 'AL_FECOP'
              DataSource = DSPDTTBT
              TabOrder = 2
            end
            object CB_UF_ORG: TDBComboBox
              Left = 0
              Top = 16
              Width = 457
              Height = 24
              DataField = 'UF_ORG'
              DataSource = DSPDTTBT
              Items.Strings = (
                'AC ACRE'
                'AL ALAGOAS'
                'AP AMAPA'
                'AM AMAZONAS'
                'BA BAHIA'
                'CE CEARA'
                'DF DISTRITO FEDERAL'
                'ES ESPIRITO SANTO'
                'EX EXTERIOR'
                'GO GOIAS'
                'MA MARANHAO'
                'MT MATO GROSSO'
                'MS MATO GROSSO DO SUL'
                'MG MINAS GERAIS'
                'PA PARA'
                'PB PARAIBA'
                'PR PARANA'
                'PE PERNAMBUCO'
                'PI  PIAUI'
                'RJ RIO DE JANEIRO'
                'RN RIO GRANDE DO NORTE'
                'RS RIO GRANDE DO SUL'
                'RO RONDONIA'
                'RR RORAIMA'
                'SC SANTA CATARINA'
                'SP SAO PAULO'
                'SE SERGIPE'
                'TO TOCANTINS')
              TabOrder = 0
            end
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Ind'#250'stria'
          ImageIndex = 7
          OnShow = TabSheet8Show
          object Label55: TLabel
            Left = 67
            Top = 48
            Width = 87
            Height = 16
            Caption = 'Especifica'#231#245'es:'
          end
          object Label56: TLabel
            Left = 30
            Top = 88
            Width = 124
            Height = 16
            Caption = 'Mat'#233'ria-prima usada:'
          end
          object Label57: TLabel
            Left = 50
            Top = 128
            Width = 104
            Height = 16
            Caption = 'ST para Revenda:'
          end
          object Label58: TLabel
            Left = 496
            Top = 128
            Width = 81
            Height = 16
            Caption = 'Al'#237'quota MVA:'
          end
          object CB_TP_EPF_PDT: TDBComboBox
            Left = 160
            Top = 45
            Width = 257
            Height = 24
            Style = csDropDownList
            DataField = 'TP_EPF_PDT'
            DataSource = DSpadrao
            Items.Strings = (
              'Mat'#233'ria-prima'
              'Derivado'
              'Regime especial - Mat'#233'ria-prima'
              'Outros'
              'Insumo')
            TabOrder = 0
          end
          object CB_ST_RVD: TDBComboBox
            Left = 160
            Top = 125
            Width = 69
            Height = 24
            Style = csDropDownList
            DataField = 'ST_RVD'
            DataSource = DSpadrao
            Items.Strings = (
              'SIM'
              'N'#195'O')
            TabOrder = 3
          end
          object DBEdit_CD_MAT_PRI: TDBEdit
            Left = 160
            Top = 85
            Width = 69
            Height = 24
            DataField = 'CD_MAT_PRI'
            DataSource = DSpadrao
            TabOrder = 1
            OnExit = DBEdit_CD_MAT_PRIExit
            OnKeyPress = DBEdit_CD_MAT_PRIKeyPress
          end
          object DBEdit_AL_MVA_RVD: TDBEdit
            Left = 580
            Top = 125
            Width = 69
            Height = 24
            DataField = 'AL_MVA_RVD'
            DataSource = DSpadrao
            TabOrder = 4
          end
          object Edit_MAT_PRI: TEdit
            Left = 235
            Top = 85
            Width = 414
            Height = 24
            Enabled = False
            TabOrder = 2
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Obs de Venda'
          ImageIndex = 8
          OnShow = TabSheet9Show
          object GroupBox16: TGroupBox
            Left = 3
            Top = 3
            Width = 409
            Height = 230
            TabOrder = 0
            object Label59: TLabel
              Left = 10
              Top = 3
              Width = 343
              Height = 16
              Caption = 'C'#243'digo de observa'#231#227'o para venda dentro do estado:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit_CD_OBS_DUF: TDBEdit
              Left = 12
              Top = 25
              Width = 63
              Height = 24
              DataField = 'CD_OBS_DUF'
              DataSource = DSpadrao
              TabOrder = 0
              OnExit = DBEdit_CD_OBS_DUFExit
            end
            object Memo_CD_OBS_DUF: TMemo
              Left = 12
              Top = 55
              Width = 385
              Height = 168
              Lines.Strings = (
                '')
              ReadOnly = True
              TabOrder = 1
            end
          end
          object GroupBox17: TGroupBox
            Left = 424
            Top = 3
            Width = 410
            Height = 230
            TabOrder = 1
            object Label60: TLabel
              Left = 10
              Top = 3
              Width = 326
              Height = 16
              Caption = 'C'#243'digo de observa'#231#227'o para venda fora do estado:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit_CD_OBS_FUF: TDBEdit
              Left = 12
              Top = 25
              Width = 63
              Height = 24
              DataField = 'CD_OBS_FUF'
              DataSource = DSpadrao
              TabOrder = 0
              OnExit = DBEdit_CD_OBS_FUFExit
            end
            object Memo_CD_OBS_FUF: TMemo
              Left = 12
              Top = 54
              Width = 385
              Height = 168
              ReadOnly = True
              TabOrder = 1
            end
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Observa'#231#227'o geral'
          ImageIndex = 9
          object DBMemo3: TDBMemo
            Left = 7
            Top = 16
            Width = 823
            Height = 273
            DataField = 'DS_OBS'
            DataSource = DSpadrao
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 332
    Top = 655
    Bitmap = {
      494C010108006000380010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
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
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFAF9FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFFBB
      AEFFFFFFFFFFFFBBAEFFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFFF
      FFFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFFF
      FFFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF6A4EFFFFD7CFFFFFBBAEFFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFFAF9FFFFFFFFFFFFFBCAFFFFFE4DFFFFFFFFFFFFFFFFFFFFFE4DFFFFF6C
      4FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFFFFFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFFFFFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF785FFFFFF2EFFFFFFFFFFFFFFFFFFFFF9580FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFFC6BBFFFFFFFFFFFFC6BBFFFF5F3FFFFF6A4EFFFFBCAFFFFFFF
      FFFFFF6C4FFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFBB
      AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E76FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFFE4DFFFFFBCAFFFFF2900FFFF2900FFFF2900FFFF2900FFFFBC
      AFFFFFE4DFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29
      00FFFFFFFFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFAF
      9FFFFFFFFFFFFFFFFFFFFFAF9FFFFFD7CFFFFFFFFFFFFFFFFFFFFF512FFFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF360FFFFFFFFFFFFF512FFFFF4925FFFF2900FFFF4925FFFF2900FFFF76
      5BFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFFAF9FFFFFBBAEFFFF2900FFFF5F40FFFFF2EFFFFFFFFFFFFFF2EFFFFF6A
      4EFFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF360FFFFFFFFFFFFF5F3FFFFF2900FFFF2900FFFF2900FFFF2900FFFF5F
      3FFFFFFFFFFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF5F3FFFFFFFFFFFFFFFFFFFFFD7
      CFFFFF360FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFFE8E4FFFFBCAFFFFF4925FFFF2900FFFF4925FFFF2900FFFFC6
      BBFFFFE4DFFFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF9985FFFFFFFFFFFFFF
      FFFFFFD7CFFFFF4925FFFF2900FFFF4925FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF6C4FFFFFFFFFFFFFBCAFFFFF5F3FFFFF5F3FFFFFBCAFFFFFFF
      FFFFFF6C4FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFFAF9FFFFFE4
      DFFFFF785FFFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF6C4FFFFFE8E4FFFFFFFFFFFFFFFFFFFFE4DFFFFF82
      69FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2900FFFF49
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
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF29
      00FFFF2900FFFF2900FFFF2900FFFF2900FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
      25FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF4925FFFF2900FFFF49
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
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    Left = 400
    Top = 655
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSProdut
    Left = 520
    Top = 72
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
    StoredProcName = 'SP_GEN_DB_PRODUT_ID'
    Left = 500
    Top = 655
  end
  inherited cxImagePadrao: TcxImageList
    FormatVersion = 1
  end
  object DsFamPro: TDataSource
    DataSet = DMcadastro.CDSFamProduto
    Left = 376
    Top = 132
  end
  object DsGruPro: TDataSource
    DataSet = DMcadastro.CDSGruProduto
    Left = 645
    Top = 36
  end
  object DsUniPro: TDataSource
    DataSet = DMcadastro.CDSUnidadePDT
    Left = 586
    Top = 36
  end
  object DsUniCMP: TDataSource
    Left = 520
    Top = 28
  end
  object DSPDTTBT: TDataSource
    DataSet = DMcadastro.CDSPDTTBT
    Left = 416
    Top = 400
  end
  object SP_GEN_PDT: TSQLStoredProc
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
    StoredProcName = 'SP_GEN_DB_PDTTBT_ID'
    Left = 412
    Top = 455
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 352
    object RelaodeProdutos1: TMenuItem
      Caption = 'Rela'#231#227'o de Produtos'
    end
    object RelaodeSaldoatual1: TMenuItem
      Caption = 'Rela'#231#227'o de Saldo atual'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object RelatriodosProdutoscomtrminodeSTnaMV1: TMenuItem
      Caption = 'Relat'#243'rio dos Produtos com t'#233'rmino de ST na MV'
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object RelaodeprodutosporSituaofiscal1: TMenuItem
      Caption = 'Rela'#231#227'o de produtos por Situa'#231#227'o fiscal'
    end
    object RelaodeprodutosporTIPIReiceitaFederal1: TMenuItem
      Caption = 'Rela'#231#227'o de produtos por TIPI(Reiceita Federal)'
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object RelaadeprodutosporNBMSituaofiscal1: TMenuItem
      Caption = 'Rela'#231'a'#245' de produtos por NBM/Situa'#231#227'o fiscal'
    end
    object RelaodeprodutosporNBMparaverificaodoCEST1: TMenuItem
      Caption = 'Rela'#231#227'o de produtos por NBM para verifica'#231#227'o do CEST'
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object EtiquetadeProdutos1: TMenuItem
      Caption = 'Etiqueta de Produtos'
    end
    object EtiquetadeProdutosVolumes1: TMenuItem
      Caption = 'Etiqueta de Produtos(Volumes)'
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object ProdutosproduzidocomrespectivaMatriaPrima1: TMenuItem
      Caption = 'Produtos produzido com respectiva Mat'#233'ria-Prima'
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Contagemparainvetrio1: TMenuItem
      Caption = 'Contagem para invet'#225'rio'
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = 'Tabela de pre'#231'os'
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object Estatsticas1: TMenuItem
      Caption = 'Estat'#237'sticas'
      object curvaABCprodutos1: TMenuItem
        Caption = 'curva ABC produtos'
      end
      object Produtosvendidosnumperodo1: TMenuItem
        Caption = 'Produtos vendidos num per'#237'odo'
      end
      object fichadeSadadeInsumos1: TMenuItem
        Caption = 'Ficha de Sa'#237'da de Insumos'
      end
      object FichadeRemententedeInsumos1: TMenuItem
        Caption = 'Ficha de Rementente de Insumos'
      end
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Estoque1: TMenuItem
      Caption = 'Estoque'
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object Livrosfiscais1: TMenuItem
      Caption = 'Livros fiscais'
    end
  end
end
