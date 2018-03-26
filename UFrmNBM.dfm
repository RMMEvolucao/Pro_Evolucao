inherited FormNBM: TFormNBM
  Caption = 'Cadastro de NBM'
  ClientHeight = 522
  ClientWidth = 1008
  ExplicitWidth = 1014
  ExplicitHeight = 551
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1008
    Height = 522
    ExplicitWidth = 1008
    ExplicitHeight = 522
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 1000
      ExplicitHeight = 491
      inherited PanelConsulta: TPanel
        Width = 1000
        ExplicitWidth = 1000
      end
      inherited Panel1: TPanel
        Width = 1000
        ExplicitWidth = 1000
        inherited btnFechar: TSpeedButton
          Left = 939
          ExplicitLeft = 939
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1000
        Height = 378
        DataSource = DSpadrao
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_NBM'
            Title.Caption = 'Nome Nbm'
            Width = 339
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AL_MVA'
            Title.Caption = '% MVA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AL_MVA_PR'
            Title.Caption = 'Alq.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AL_NAC'
            Title.Caption = 'Alq.Nac'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AL_IMP'
            Title.Caption = 'Alq.Imp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Title.Caption = 'Ultima altera'#231#227'o'
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitWidth = 1000
      ExplicitHeight = 491
      inherited Panel2: TPanel
        Top = 437
        Width = 1000
        ExplicitTop = 437
        ExplicitWidth = 1000
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 1000
        Height = 217
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 29
          Top = 25
          Width = 104
          Height = 16
          Caption = 'C'#243'd. Lan'#231'amento:'
        end
        object Label2: TLabel
          Left = 60
          Top = 50
          Width = 73
          Height = 16
          Caption = 'C'#243'digo NBM:'
        end
        object Label3: TLabel
          Left = 66
          Top = 80
          Width = 67
          Height = 16
          Caption = 'Nome NBM:'
        end
        object DBText_ID: TDBText
          Left = 135
          Top = 24
          Width = 65
          Height = 17
          DataField = 'ID'
          DataSource = DSpadrao
        end
        object Label4: TLabel
          Left = 52
          Top = 110
          Width = 81
          Height = 16
          Caption = 'Al'#237'quota MVA:'
        end
        object Label5: TLabel
          Left = 17
          Top = 140
          Width = 116
          Height = 16
          Caption = 'Al'#237'q. Prod. Nacional:'
        end
        object Label6: TLabel
          Left = 6
          Top = 170
          Width = 127
          Height = 16
          Caption = 'Al'#237'q. Prod. Importado:'
        end
        object DBEdit_CD_NBM: TDBEdit
          Left = 135
          Top = 47
          Width = 121
          Height = 24
          DataField = 'CD_NBM'
          DataSource = DSpadrao
          TabOrder = 0
        end
        object DBEdit_NM_NBM: TDBEdit
          Left = 135
          Top = 77
          Width = 834
          Height = 24
          DataField = 'NM_NBM'
          DataSource = DSpadrao
          TabOrder = 1
        end
        object DBEdit_AL_MVA: TDBEdit
          Left = 135
          Top = 107
          Width = 65
          Height = 24
          DataField = 'AL_MVA'
          DataSource = DSpadrao
          TabOrder = 2
        end
        object DBEdit_AL_NAC: TDBEdit
          Left = 135
          Top = 137
          Width = 65
          Height = 24
          DataField = 'AL_NAC'
          DataSource = DSpadrao
          TabOrder = 3
        end
        object DBEdit_AL_IMP: TDBEdit
          Left = 135
          Top = 167
          Width = 65
          Height = 24
          DataField = 'AL_IMP'
          DataSource = DSpadrao
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 217
        Width = 1000
        Height = 220
        Align = alClient
        Caption = ' CEST '
        TabOrder = 2
        object Label7: TLabel
          Left = 60
          Top = 27
          Width = 73
          Height = 16
          Caption = 'C'#243'digo Cest:'
        end
        object Label8: TLabel
          Left = 44
          Top = 54
          Width = 89
          Height = 16
          Caption = 'Descri'#231#227'o Cest:'
        end
        object SpeedButton5: TSpeedButton
          Left = 262
          Top = 24
          Width = 29
          Height = 24
          OnClick = SpeedButton5Click
        end
        object DBEdit_CD_CEST: TDBEdit
          Left = 135
          Top = 24
          Width = 121
          Height = 24
          DataField = 'CEST'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
        end
        object DBMemo_DS_CEST: TDBMemo
          Left = 135
          Top = 54
          Width = 834
          Height = 155
          DataField = 'DESCRICAO'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 1
        end
      end
    end
  end
  inherited ActionList1: TActionList
    Top = 216
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSNbm
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
    StoredProcName = 'SP_GEN_DB_NBM_ID'
  end
end
