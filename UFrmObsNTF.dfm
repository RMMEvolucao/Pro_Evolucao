inherited FormObsNTF: TFormObsNTF
  Caption = 'Cadastro de observa'#231#227'o para nota fiscal'
  ClientHeight = 647
  ClientWidth = 1179
  ExplicitWidth = 1185
  ExplicitHeight = 676
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1179
    Height = 647
    ExplicitWidth = 1179
    ExplicitHeight = 647
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      ExplicitWidth = 1171
      ExplicitHeight = 616
      inherited PanelConsulta: TPanel
        Width = 1171
        ExplicitWidth = 1171
      end
      inherited Panel1: TPanel
        Width = 1171
        ExplicitWidth = 1171
        inherited btnFechar: TSpeedButton
          Left = 1110
          ExplicitLeft = 1110
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1171
        Height = 503
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
            FieldName = 'DS_OBS'
            Title.Caption = 'Descri'#231#227'o da Observa'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Title.Caption = 'Ultimos registros'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VER_ATU'
            Visible = False
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 1171
      ExplicitHeight = 616
      inherited Panel2: TPanel
        Top = 562
        Width = 1171
        ExplicitTop = 562
        ExplicitWidth = 1171
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 670
        Height = 326
        TabOrder = 1
        object Label1: TLabel
          Left = 14
          Top = 24
          Width = 44
          Height = 16
          Caption = 'C'#243'digo:'
        end
        object Label2: TLabel
          Left = 104
          Top = 24
          Width = 239
          Height = 16
          Caption = 'Descri'#231#227'o da observa'#231#227'o para nota fiscal:'
        end
        object DBEdit_ID: TDBEdit
          Left = 14
          Top = 46
          Width = 76
          Height = 24
          DataField = 'ID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
        end
        object Memo_DS_OBS: TDBMemo
          Left = 104
          Top = 46
          Width = 556
          Height = 267
          DataField = 'DS_OBS'
          DataSource = DSpadrao
          TabOrder = 1
        end
      end
    end
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSObsNTF
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
    StoredProcName = 'SP_GEN_DB_OBSNTF_ID'
    Left = 420
    Top = 174
  end
end
