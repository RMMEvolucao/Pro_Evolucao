inherited FormAliquota: TFormAliquota
  Caption = 'FormAliquota'
  ClientHeight = 518
  ClientWidth = 857
  ExplicitWidth = 863
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 857
    Height = 518
    ExplicitWidth = 857
    ExplicitHeight = 518
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 849
      ExplicitHeight = 487
      inherited PanelConsulta: TPanel
        Width = 849
        ExplicitWidth = 849
        inherited cbConsulta: TComboBox
          Items.Strings = (
            'C'#243'digo'
            'Estado de Origem'
            'Estado de Destino')
        end
      end
      inherited Panel1: TPanel
        Width = 849
        ExplicitWidth = 849
        inherited btnFechar: TSpeedButton
          Left = 788
          ExplicitLeft = 614
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 849
        Height = 374
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
            FieldName = 'CD_UNF_ORI'
            Title.Caption = 'Estado de Origem'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_UNF_DST'
            Title.Caption = 'Estado de Destino'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AL_ICM'
            Title.Caption = 'Aliquota'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Width = 347
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 849
      ExplicitHeight = 487
      inherited Panel2: TPanel
        Top = 433
        Width = 849
        ExplicitTop = 433
        ExplicitWidth = 849
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 843
        Height = 78
        TabOrder = 1
        object Label1: TLabel
          Left = 17
          Top = 16
          Width = 118
          Height = 16
          Caption = 'Estado de Origem:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 313
          Top = 16
          Width = 122
          Height = 16
          Caption = 'Estado de Destino:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBComboBoxOri: TDBComboBox
          Left = 17
          Top = 38
          Width = 200
          Height = 24
          Style = csDropDownList
          DataField = 'CD_UNF_ORI'
          DataSource = DSpadrao
          Items.Strings = (
            'ACRE'
            'ALAGOAS'
            'AMAPA'
            'AMAZONAS'
            'BAHIA        '
            'CEARA                '
            'DISTRITO FEDERAL'
            'ESPIRITO SANTO   '
            'EXTERIOR  '
            'GOIAS          '
            'MARANHAO'
            'MATO GROSSO'
            'MATO GROSSO DO SUL'
            'MINAS GERAIS'
            'PARA'
            'PARAIBA'
            'PARANA'
            'PERNAMBUCO'
            'PIAUI'
            'RIO DE JANEIRO'
            'RIO GRANDE DO NORTE'
            'RIO GRANDE DO SUL'
            'RONDONIA'
            'RORAIMA'
            'SANTA CATARINA'
            'SAO PAULO'
            'SERGIPE'
            'TOCANTINS')
          TabOrder = 0
        end
        object DBComboBoxDst: TDBComboBox
          Left = 313
          Top = 38
          Width = 208
          Height = 24
          Style = csDropDownList
          DataField = 'CD_UNF_DST'
          DataSource = DSpadrao
          Items.Strings = (
            'ACRE'
            'ALAGOAS'
            'AMAPA'
            'AMAZONAS'
            'BAHIA'
            'CEARA'
            'DISTRITO FEDERAL'
            'ESPIRITO SANTO'
            'EXTERIOR'
            'GOIAS'
            'MARANHAO'
            'MATO GROSSO'
            'MATO GROSSO DO SUL'
            'MINAS GERAIS'
            'PARA'
            'PARAIBA'
            'PARANA'
            'PERNAMBUCO'
            'PIAUI'
            'RIO DE JANEIRO'
            'RIO GRANDE DO NORTE'
            'RIO GRANDE DO SUL'
            'RONDONIA'
            'RORAIMA'
            'SANTA CATARINA'
            'SAO PAULO'
            'SERGIPE'
            'TOCANTINS')
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 87
        Width = 843
        Height = 58
        TabOrder = 2
        object Label3: TLabel
          Left = 17
          Top = 21
          Width = 59
          Height = 16
          Caption = 'Aliquota:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit_AL_ICM: TDBEdit
          Left = 81
          Top = 18
          Width = 98
          Height = 24
          DataField = 'AL_ICM'
          DataSource = DSpadrao
          TabOrder = 0
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 600
    Top = 304
  end
  inherited ActionList1: TActionList
    Left = 536
    Top = 320
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSAlqIcm
    Left = 456
    Top = 288
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
    StoredProcName = 'SP_GEN_DB_ALQICM_ID'
    Left = 372
    Top = 286
  end
end
