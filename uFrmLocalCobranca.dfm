inherited FormLocalCobranca: TFormLocalCobranca
  Caption = 'Cadastro Local de Cobran'#231'a'
  ClientHeight = 771
  ClientWidth = 1018
  ExplicitWidth = 1024
  ExplicitHeight = 800
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1018
    Height = 771
    ExplicitWidth = 1018
    ExplicitHeight = 771
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 1010
      ExplicitHeight = 740
      inherited PanelConsulta: TPanel
        Width = 1010
        ExplicitWidth = 1010
      end
      inherited Panel1: TPanel
        Width = 1010
        ExplicitWidth = 1010
        inherited btnFechar: TSpeedButton
          Left = 949
          ExplicitLeft = 937
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1010
        Height = 627
        DataSource = DSpadrao
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_LOC_COB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_LOC_COB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TP_LOC_COB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_CAD'
            Width = 179
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_FOL_CHQ'
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1010
      ExplicitHeight = 740
      inherited Panel2: TPanel
        Top = 686
        Width = 1010
        ExplicitTop = 686
        ExplicitWidth = 1010
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1010
        Height = 105
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 99
          Top = 62
          Width = 110
          Height = 16
          Caption = 'Local de Cobran'#231'a:'
        end
        object Label2: TLabel
          Left = 367
          Top = 62
          Width = 147
          Height = 16
          Caption = 'Nome Local de Cobran'#231'a:'
        end
        object Label3: TLabel
          Left = 731
          Top = 27
          Width = 86
          Height = 16
          Caption = 'Data Cadastro:'
        end
        object Label4: TLabel
          Left = 739
          Top = 62
          Width = 81
          Height = 16
          Caption = 'Tipo de Local:'
        end
        object Label31: TLabel
          Left = 119
          Top = 27
          Width = 90
          Height = 16
          Caption = 'ID Lan'#231'amento:'
        end
        object DBEdit_CD_LOC_COB: TDBEdit
          Left = 216
          Top = 59
          Width = 60
          Height = 24
          DataField = 'CD_LOC_COB'
          DataSource = DSpadrao
          TabOrder = 1
          OnKeyPress = DBEdit_CD_LOC_COBKeyPress
        end
        object DBEdit_NM_LOC_COB: TDBEdit
          Left = 520
          Top = 59
          Width = 177
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_LOC_COB'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object cxDBEdit_DT_CAD: TcxDBDateEdit
          Left = 824
          Top = 24
          DataBinding.DataField = 'DT_CAD'
          DataBinding.DataSource = DSpadrao
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 0
          Width = 121
        end
        object DBCombo_TP_LOC_COB: TcxDBComboBox
          Left = 823
          Top = 59
          DataBinding.DataField = 'TP_LOC_COB'
          DataBinding.DataSource = DSpadrao
          Properties.Items.Strings = (
            'BANCO'
            'OUTROS')
          Style.PopupBorderStyle = epbsSingle
          TabOrder = 3
          OnExit = DBCombo_TP_LOC_COBExit
          Width = 121
        end
        object cxDBLabel_ID: TcxDBLabel
          Left = 217
          Top = 25
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          Transparent = True
          Height = 21
          Width = 49
        end
      end
      object PageControl2: TPageControl
        Left = 0
        Top = 105
        Width = 1010
        Height = 581
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 2
        object TabSheet1: TTabSheet
          Caption = 'Controle Banc'#225'rio:'
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 1002
            Height = 53
            Align = alTop
            TabOrder = 0
            object Label27: TLabel
              Left = 55
              Top = 17
              Width = 150
              Height = 16
              Caption = 'N'#250'mero Folha de Cheque:'
            end
            object Label28: TLabel
              Left = 674
              Top = 17
              Width = 141
              Height = 16
              Caption = 'N'#250'mero Conta Corrente:'
            end
            object DBEdit_NO_FOL_CHQ: TDBEdit
              Left = 212
              Top = 14
              Width = 121
              Height = 24
              DataField = 'NO_FOL_CHQ'
              DataSource = DSpadrao
              TabOrder = 0
              OnKeyPress = DBEdit_NO_FOL_CHQKeyPress
            end
            object DBEdit_NO_CTA_COR: TDBEdit
              Left = 820
              Top = 14
              Width = 121
              Height = 24
              DataField = 'NO_CTA_COR'
              DataSource = DSpadrao
              TabOrder = 1
              OnKeyPress = DBEdit_NO_CTA_CORKeyPress
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 53
            Width = 1002
            Height = 497
            Align = alClient
            TabOrder = 1
            object Label5: TLabel
              Left = 117
              Top = 30
              Width = 88
              Height = 16
              Caption = 'N'#250'mero Banco:'
            end
            object Label6: TLabel
              Left = 59
              Top = 64
              Width = 146
              Height = 16
              Caption = 'N'#250'mero Banco Cobran'#231'a:'
            end
            object Label7: TLabel
              Left = 37
              Top = 167
              Width = 168
              Height = 16
              Caption = 'N'#250'mero Remessa a Receber:'
            end
            object Label8: TLabel
              Left = 56
              Top = 98
              Width = 149
              Height = 16
              Caption = 'Identifica'#231#227'o da Empresa:'
            end
            object Label9: TLabel
              Left = 82
              Top = 133
              Width = 123
              Height = 16
              Caption = 'Carteira da Empresa:'
            end
            object Label10: TLabel
              Left = 110
              Top = 201
              Width = 95
              Height = 16
              Caption = 'C'#243'digo Cedente:'
            end
            object Label11: TLabel
              Left = 34
              Top = 236
              Width = 171
              Height = 16
              Caption = 'N'#250'mero Incial Nosso N'#250'mero:'
            end
            object Label12: TLabel
              Left = 54
              Top = 270
              Width = 151
              Height = 16
              Caption = 'Sequ'#234'ncia Nosso N'#250'mero:'
            end
            object Label13: TLabel
              Left = 82
              Top = 304
              Width = 123
              Height = 16
              Caption = '% Multa para Atraso:'
            end
            object Label14: TLabel
              Left = 60
              Top = 339
              Width = 145
              Height = 16
              Caption = 'Layout Arquivo Remessa:'
            end
            object Label15: TLabel
              Left = 124
              Top = 373
              Width = 81
              Height = 16
              Caption = 'Layout Boleto:'
            end
            object Label16: TLabel
              Left = 78
              Top = 407
              Width = 127
              Height = 16
              Caption = 'Arquivo Configura'#231#227'o:'
            end
            object Label17: TLabel
              Left = 64
              Top = 442
              Width = 141
              Height = 16
              Caption = 'Nome Arquivo Remessa:'
            end
            object Label18: TLabel
              Left = 592
              Top = 30
              Width = 201
              Height = 16
              Caption = 'Dias para Dep'#243'sito/Taxa Desconto:'
            end
            object Label19: TLabel
              Left = 667
              Top = 64
              Width = 126
              Height = 16
              Caption = 'Ag'#234'ncia de Cobran'#231'a:'
            end
            object Label20: TLabel
              Left = 677
              Top = 98
              Width = 116
              Height = 16
              Caption = 'C'#243'digo da Empresa:'
            end
            object Label21: TLabel
              Left = 691
              Top = 133
              Width = 102
              Height = 16
              Caption = 'Esp'#233'cie do T'#237'tulo:'
            end
            object Label22: TLabel
              Left = 685
              Top = 167
              Width = 108
              Height = 16
              Caption = 'Arquivos Enviados:'
            end
            object Label23: TLabel
              Left = 637
              Top = 201
              Width = 156
              Height = 16
              Caption = 'Tipo Documento Cobran'#231'a:'
            end
            object Label24: TLabel
              Left = 625
              Top = 236
              Width = 168
              Height = 16
              Caption = 'N'#250'mero Final Nosso N'#250'mero:'
            end
            object Label25: TLabel
              Left = 683
              Top = 270
              Width = 110
              Height = 16
              Caption = 'Dias para Protesto:'
            end
            object Label26: TLabel
              Left = 671
              Top = 304
              Width = 122
              Height = 16
              Caption = '% Juros para Atraso:'
            end
            object DBEdit_NO_BCO: TDBEdit
              Left = 212
              Top = 27
              Width = 50
              Height = 24
              DataField = 'NO_BCO'
              DataSource = DSpadrao
              TabOrder = 0
              OnKeyPress = DBEdit_NO_BCOKeyPress
            end
            object DBEdit_NO_BCO_COB: TDBEdit
              Left = 212
              Top = 61
              Width = 50
              Height = 24
              DataField = 'NO_BCO_COB'
              DataSource = DSpadrao
              TabOrder = 1
              OnKeyPress = DBEdit_NO_BCO_COBKeyPress
            end
            object DBEdit_ID_CIA_CTR: TDBEdit
              Left = 211
              Top = 95
              Width = 162
              Height = 24
              DataField = 'ID_CIA_CTR'
              DataSource = DSpadrao
              TabOrder = 2
            end
            object DBEdit8: TDBEdit
              Left = 212
              Top = 130
              Width = 37
              Height = 24
              DataSource = DSpadrao
              TabOrder = 3
            end
            object DBEdit9: TDBEdit
              Left = 255
              Top = 130
              Width = 53
              Height = 24
              TabOrder = 4
            end
            object DBEdit_NO_RMS_CTR: TDBEdit
              Left = 212
              Top = 164
              Width = 80
              Height = 24
              DataField = 'NO_RMS_CTR'
              DataSource = DSpadrao
              TabOrder = 5
            end
            object DBEdit_CD_CDT: TDBEdit
              Left = 212
              Top = 198
              Width = 208
              Height = 24
              DataField = 'CD_CDT'
              DataSource = DSpadrao
              TabOrder = 6
            end
            object DBEdit12: TDBEdit
              Left = 212
              Top = 233
              Width = 208
              Height = 24
              DataSource = DSpadrao
              TabOrder = 7
            end
            object DBEdit13: TDBEdit
              Left = 212
              Top = 267
              Width = 208
              Height = 24
              TabOrder = 8
            end
            object cxDBDateEdit2: TcxDBDateEdit
              Left = 299
              Top = 164
              DataBinding.DataField = 'DT_RMS_CTR'
              DataBinding.DataSource = DSpadrao
              TabOrder = 9
              Width = 121
            end
            object DBEdit14: TDBEdit
              Left = 212
              Top = 301
              Width = 80
              Height = 24
              TabOrder = 10
            end
            object DBCombo_TP_LAY_ARQ: TDBComboBox
              Left = 212
              Top = 336
              Width = 208
              Height = 24
              DataField = 'TP_LAY_ARQ'
              DataSource = DSpadrao
              TabOrder = 11
            end
            object DBComboBox2: TDBComboBox
              Left = 212
              Top = 370
              Width = 349
              Height = 24
              DataSource = DSpadrao
              TabOrder = 12
            end
            object DBEdit15: TDBEdit
              Left = 212
              Top = 404
              Width = 453
              Height = 24
              TabOrder = 13
            end
            object DBEdit16: TDBEdit
              Left = 212
              Top = 439
              Width = 585
              Height = 24
              TabOrder = 14
            end
            object DBEdit17: TDBEdit
              Left = 798
              Top = 27
              Width = 53
              Height = 24
              TabOrder = 15
            end
            object DBEdit18: TDBEdit
              Left = 857
              Top = 27
              Width = 69
              Height = 24
              TabOrder = 16
            end
            object DBEdit19: TDBEdit
              Left = 798
              Top = 61
              Width = 128
              Height = 24
              TabOrder = 17
            end
            object DBEdit20: TDBEdit
              Left = 798
              Top = 95
              Width = 165
              Height = 24
              TabOrder = 18
            end
            object DBEdit21: TDBEdit
              Left = 798
              Top = 130
              Width = 53
              Height = 24
              TabOrder = 19
            end
            object DBEdit22: TDBEdit
              Left = 798
              Top = 164
              Width = 53
              Height = 24
              TabOrder = 20
            end
            object DBEdit23: TDBEdit
              Left = 798
              Top = 198
              Width = 53
              Height = 24
              TabOrder = 21
            end
            object DBEdit24: TDBEdit
              Left = 798
              Top = 233
              Width = 165
              Height = 24
              TabOrder = 22
            end
            object DBEdit25: TDBEdit
              Left = 798
              Top = 267
              Width = 53
              Height = 24
              TabOrder = 23
            end
            object DBEdit26: TDBEdit
              Left = 798
              Top = 301
              Width = 53
              Height = 24
              DataSource = DSpadrao
              TabOrder = 24
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Controle de Cheque'
          ImageIndex = 1
          object GroupBox4: TGroupBox
            Left = 0
            Top = 0
            Width = 1002
            Height = 73
            Align = alTop
            TabOrder = 0
            object Label29: TLabel
              Left = 41
              Top = 27
              Width = 134
              Height = 16
              Caption = 'Data Remessa Cheque:'
            end
            object Label30: TLabel
              Left = 670
              Top = 27
              Width = 113
              Height = 16
              Caption = 'N'#250'mero Sequ'#234'ncia:'
            end
            object DBDateEdit_DT_RMS_CHQ: TcxDBDateEdit
              Left = 202
              Top = 24
              DataBinding.DataField = 'DT_RMS_CHQ'
              DataBinding.DataSource = DSpadrao
              TabOrder = 0
              Width = 121
            end
            object DBEdit_NO_SEQ_CHQ: TDBEdit
              Left = 804
              Top = 24
              Width = 121
              Height = 24
              DataField = 'NO_SEQ_CHQ'
              DataSource = DSpadrao
              TabOrder = 1
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Cont'#225'bil '
          ImageIndex = 2
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Left = 672
    Top = 256
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSLocalCobranca
    Left = 496
    Top = 704
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
    StoredProcName = 'SP_GEN_DB_LOCALCOBRANCA_ID'
    Left = 612
    Top = 718
  end
end
