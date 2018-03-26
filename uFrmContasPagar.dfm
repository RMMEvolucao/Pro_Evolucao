inherited FormContasPagar: TFormContasPagar
  Caption = 'Cadastro de Contas a Pagar'
  ClientHeight = 616
  ClientWidth = 885
  ExplicitWidth = 891
  ExplicitHeight = 645
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 885
    Height = 616
    ExplicitWidth = 885
    ExplicitHeight = 616
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 877
      ExplicitHeight = 585
      inherited PanelConsulta: TPanel
        Width = 877
        ExplicitWidth = 877
        inherited LbFiltro: TLabel
          Top = 14
          ExplicitTop = 14
        end
        inherited lbConsulta: TLabel
          Left = 197
          Top = 34
          Width = 4
          Caption = ''
          ExplicitLeft = 197
          ExplicitTop = 34
          ExplicitWidth = 4
        end
        object lblConsulta2: TLabel [2]
          Left = 136
          Top = 4
          Width = 65
          Height = 16
          Caption = 'Fonecedor:'
          Visible = False
        end
        inherited cbConsulta: TComboBox
          Top = 31
          Width = 187
          ItemIndex = 2
          TabOrder = 1
          Text = 'N'#250'mero Documento'
          OnChange = cbConsultaChange
          Items.Strings = (
            'Fornecedor/No. Documento'
            'Fornecedor/Doc. Origem'
            'N'#250'mero Documento'
            'Documento Origem'
            'Pagamento'
            'Local / T'#237'tulo no Local')
          ExplicitTop = 31
          ExplicitWidth = 187
        end
        inherited BtConsultar: TButton
          Top = 31
          ExplicitTop = 31
        end
        inherited Edconsulta: TMaskEdit
          Left = 207
          Top = 31
          Width = 500
          TabOrder = 0
          ExplicitLeft = 207
          ExplicitTop = 31
          ExplicitWidth = 500
        end
        object ComboConsultaLocal: TComboBox
          Left = 520
          Top = 1
          Width = 184
          Height = 24
          TabOrder = 3
          Visible = False
        end
        object EdConsulta2: TcxMaskEdit
          Left = 207
          Top = 1
          TabOrder = 4
          Visible = False
          Width = 282
        end
        object ConsultaData: TcxDateEdit
          Left = 730
          Top = 1
          TabOrder = 5
          Visible = False
          Width = 121
        end
      end
      inherited Panel1: TPanel
        Width = 877
        ExplicitWidth = 877
        inherited btnFechar: TSpeedButton
          Left = 816
          ExplicitLeft = 799
        end
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 877
        Height = 472
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NO_DOC'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_FOR'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_DOC'
            Title.Alignment = taRightJustify
            Title.Caption = 'Vr.Documento'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_DEB_DOC'
            Title.Alignment = taRightJustify
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_EMS'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_VCT'
            Title.Alignment = taCenter
            Title.Caption = 'Vencimento'
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_PGT'
            Title.Alignment = taCenter
            Title.Caption = 'Pagamento'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_RCB'
            Title.Alignment = taRightJustify
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_JUR'
            Title.Alignment = taRightJustify
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CD_USU'
            Title.Alignment = taCenter
            Title.Caption = #218'ltimo Registro'
            Width = 250
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitWidth = 877
      ExplicitHeight = 585
      inherited Panel2: TPanel
        Top = 531
        Width = 877
        ExplicitTop = 531
        ExplicitWidth = 877
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 877
        Height = 143
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 35
          Top = 19
          Width = 102
          Height = 16
          Caption = 'Nome Fonecedor:'
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
        object DBEdit_NM_FOR: TDBEdit
          Left = 140
          Top = 15
          Width = 341
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_FOR'
          DataSource = DSpadrao
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
          OnExit = DBEdit_NM_FORExit
          OnKeyDown = DBEdit_NM_FORKeyDown
        end
        object DBEdit_ID_FOR: TDBEdit
          Left = 561
          Top = 15
          Width = 72
          Height = 24
          Color = 16773077
          DataField = 'ID_FOR'
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
      object GroupBox2: TGroupBox
        Left = 0
        Top = 143
        Width = 877
        Height = 48
        Align = alTop
        TabOrder = 2
        object Label4: TLabel
          Left = 43
          Top = 15
          Width = 94
          Height = 16
          Caption = 'C'#243'digo Cont'#225'bil:'
        end
        object DBEdit_CD_CTB: TDBEdit
          Left = 140
          Top = 12
          Width = 117
          Height = 24
          DataField = 'CD_CTB'
          DataSource = DSpadrao
          TabOrder = 0
        end
        object DBEdit5: TDBEdit
          Left = 265
          Top = 12
          Width = 456
          Height = 24
          Color = 16773077
          Enabled = False
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 730
          Top = 12
          Width = 116
          Height = 24
          Color = 16773077
          Enabled = False
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 191
        Width = 877
        Height = 112
        Align = alTop
        TabOrder = 3
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
        object Label7: TLabel
          Left = 65
          Top = 75
          Width = 72
          Height = 16
          Caption = 'Observa'#231#227'o:'
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
        object DBEdit_NO_DOC: TDBEdit
          Left = 140
          Top = 12
          Width = 140
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NO_DOC'
          DataSource = DSpadrao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit_NO_DOC_ORI: TDBEdit
          Left = 140
          Top = 42
          Width = 140
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NO_DOC_ORI'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit_DS_OBS: TDBEdit
          Left = 140
          Top = 72
          Width = 705
          Height = 24
          CharCase = ecUpperCase
          DataField = 'DS_OBS'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object cxDBDateEdit_DT_CAD: TcxDBDateEdit
          Left = 724
          Top = 12
          DataBinding.DataField = 'DT_CAD'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          TabOrder = 4
          Width = 121
        end
        object DBComboBox1: TDBComboBox
          Left = 724
          Top = 42
          Width = 121
          Height = 24
          Style = csDropDownList
          DataField = 'ST_DOC'
          DataSource = DSpadrao
          Items.Strings = (
            'NORMAL'
            'PARCIAL')
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 303
        Width = 877
        Height = 56
        Align = alTop
        TabOrder = 4
        object Label8: TLabel
          Left = 45
          Top = 18
          Width = 92
          Height = 16
          Caption = 'Local Cobran'#231'a:'
        end
        object Label10: TLabel
          Left = 359
          Top = 18
          Width = 87
          Height = 16
          Caption = 'Data Remessa:'
        end
        object Label15: TLabel
          Left = 579
          Top = 18
          Width = 93
          Height = 16
          Caption = 'No. T'#237'tulo Local:'
        end
        object cxDBDateEdit_DT_RMS_COB: TcxDBDateEdit
          Left = 448
          Top = 15
          DataBinding.DataField = 'DT_RMS_COB'
          DataBinding.DataSource = DSpadrao
          TabOrder = 1
          Width = 121
        end
        object DBEdit_CD_TIT_LOC: TDBEdit
          Left = 672
          Top = 15
          Width = 174
          Height = 24
          DataField = 'CD_TIT_LOC'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object DBLookup_ID_LOCAL: TDBLookupComboBox
          Left = 140
          Top = 15
          Width = 213
          Height = 24
          DataField = 'ID_LOCAL'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_LOC_COB'
          ListSource = DSLocal
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 362
        Width = 326
        Height = 166
        Align = alLeft
        TabOrder = 5
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
        Top = 362
        Width = 198
        Height = 166
        Align = alLeft
        TabOrder = 6
        object Label23: TLabel
          Left = 20
          Top = 48
          Width = 35
          Height = 16
          Caption = 'Juros:'
        end
        object Label24: TLabel
          Left = 22
          Top = 102
          Width = 33
          Height = 16
          Caption = 'Taxa:'
        end
        object DBComboBox_TP_JUR: TDBComboBox
          Left = 61
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
          Left = 61
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
        Left = 539
        Top = 362
        Width = 335
        Height = 166
        Align = alRight
        TabOrder = 7
        object Label25: TLabel
          Left = 69
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
          Left = 115
          Top = 48
          Width = 67
          Height = 16
          Caption = 'Valor Pago:'
        end
        object Label27: TLabel
          Left = 115
          Top = 78
          Width = 67
          Height = 16
          Caption = 'Juros Pago:'
        end
        object Label28: TLabel
          Left = 55
          Top = 108
          Width = 127
          Height = 16
          Caption = 'Abatimento/Desconto:'
        end
        object Label29: TLabel
          Left = 111
          Top = 138
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
        object cxDBDateEdit_DT_PGT: TcxDBDateEdit
          Left = 189
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
          Left = 189
          Top = 45
          Width = 121
          Height = 24
          DataField = 'VR_RCB'
          DataSource = DSpadrao
          TabOrder = 1
          OnExit = DBEdit_VR_RCBExit
        end
        object DBEdit_VR_JUR: TDBEdit
          Left = 189
          Top = 75
          Width = 121
          Height = 24
          DataField = 'VR_JUR'
          DataSource = DSpadrao
          TabOrder = 2
          OnExit = DBEdit_VR_JURExit
        end
        object DBEdit_VR_ABA_DCT: TDBEdit
          Left = 189
          Top = 105
          Width = 121
          Height = 24
          DataField = 'VR_ABA_DCT'
          DataSource = DSpadrao
          TabOrder = 3
          OnExit = DBEdit_VR_ABA_DCTExit
        end
        object EditValorFinal: TEdit
          Left = 189
          Top = 135
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
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 808
    Top = 568
  end
  inherited ActionList1: TActionList
    Left = 720
    Top = 560
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSContasPagar
    Left = 440
    Top = 564
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
    StoredProcName = 'SP_GEN_DB_CTAPAGAR_ID'
    Left = 596
    Top = 566
  end
  object DSLocal: TDataSource
    DataSet = DMcadastro.CDSLocalCobranca
    Left = 276
    Top = 565
  end
  object PopupMenu1: TPopupMenu
    Left = 372
    Top = 563
    object ImpressoraLaser1: TMenuItem
      Caption = 'Impressora &Laser'
      object ContasaPagarnumPerodoFilial1: TMenuItem
        Caption = 'Contas a Pagar num Per'#237'odo (Filial)'
      end
      object ContasaPagarumPerodoMatrizFilial1: TMenuItem
        Caption = 'Contas a Pagar um Per'#237'odo (Matriz/Filial)'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SintticodasDespesasContbeisporPerodoMatriz1: TMenuItem
        Caption = 'Sint'#233'tico das Despesas Cont'#225'beis por Per'#237'odo (Matriz)'
      end
      object SintticodasDespesasContbeisporPerodoFilial1: TMenuItem
        Caption = 'Sint'#233'tico das Despesas Cont'#225'beis por Per'#237'odo (Filial)'
      end
      object SintticodasDespesasContbeisporPerodoMatrizFilial1: TMenuItem
        Caption = 'Sint'#233'tico das Despesas Cont'#225'beis por Per'#237'odo (Matriz/Filial)'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object AnalticodasDespesasContbeisporPerodoMatriz1: TMenuItem
        Caption = 'Anal'#237'tico das Despesas Cont'#225'beis por Per'#237'odo (Matriz)'
      end
      object AnalticodasDespesasContbeisporPerodoMatrizFilial1: TMenuItem
        Caption = 'Anal'#237'tico das Despesas Cont'#225'beis por Per'#237'odo (Matriz/Filial)'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object DbitocomFornecedornaDataBaseMatriz1: TMenuItem
        Caption = 'D'#233'bito com Fornecedor na Data Base (Matriz)'
      end
      object DbitocomFornecedornaDataBaseMatrizFilial1: TMenuItem
        Caption = 'D'#233'bito com Fornecedor na Data Base (Matriz/Filial)'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object DbitocomFornecedornaDataAtualMatriz1: TMenuItem
        Caption = 'D'#233'bito com Fornecedor na Data Atual (Matriz)'
      end
      object DbitocomFornecedornaDataAtualMatrizFilial1: TMenuItem
        Caption = 'D'#233'bito com Fornecedor na Data Atual (Matriz/Filial)'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object CartodePagamento1: TMenuItem
        Caption = 'Cart'#227'o de Pagamento'
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object IntegradoContasaReceberePagarnumPerodoMatrizFilial1: TMenuItem
        Caption = 'Integrado Contas a Receber e Pagar num Per'#237'odo (Matriz/Filial)'
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object RazoAnliticoContasaPagarMatriz1: TMenuItem
        Caption = 'Raz'#227'o An'#225'litico Contas a Pagar (Matriz)'
      end
      object RazoAnliticoContasaPagarFilial1: TMenuItem
        Caption = 'Raz'#227'o An'#225'litico Contas a Pagar (Filial)'
      end
      object RazoAnliticoContasaPagarMatrizFilial1: TMenuItem
        Caption = 'Raz'#227'o An'#225'litico Contas a Pagar (Matriz/Filial)'
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object FluxodeCaixaReceberePagarMatrizFilial1: TMenuItem
        Caption = 'Fluxo de Caixa Receber e Pagar (Matriz/Filial)'
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object GrficodoMsporVencimento1: TMenuItem
        Caption = 'Gr'#225'fico do M'#234's por Vencimento'
      end
      object GrficodoMsporPagamento1: TMenuItem
        Caption = 'Gr'#225'fico do M'#234's por Pagamento'
      end
      object N10: TMenuItem
        Caption = '-'
      end
    end
    object ImpressoraMatricial1: TMenuItem
      Caption = 'Impressora &Matricial'
    end
    object ExportarPDF1: TMenuItem
      Caption = 'Exportar &PDF'
    end
    object ExportarExcel1: TMenuItem
      Caption = 'Exportar &Excel'
    end
  end
end
