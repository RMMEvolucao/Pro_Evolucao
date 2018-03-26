inherited FormCep: TFormCep
  Caption = 'Cadastro de CEP/ Endere'#231'o - Edi'#231#227'o'
  ClientHeight = 328
  ClientWidth = 614
  ExplicitWidth = 620
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 614
    Height = 328
    ExplicitWidth = 614
    ExplicitHeight = 328
    inherited TabConsulta: TTabSheet
      ExplicitWidth = 606
      ExplicitHeight = 297
      inherited PanelConsulta: TPanel
        Width = 606
        ExplicitWidth = 606
        inherited cbConsulta: TComboBox
          TabOrder = 1
          OnSelect = cbConsultaSelect
          Items.Strings = (
            'Numero Cep'
            'Rua'
            'Cidade'
            'Ult'#237'mos Registros')
        end
        inherited BtConsultar: TButton
          Left = 872
          ExplicitLeft = 872
        end
        inherited Edconsulta: TMaskEdit
          Width = 641
          TabOrder = 0
          ExplicitWidth = 641
        end
      end
      inherited Panel1: TPanel
        Width = 606
        ExplicitWidth = 606
        inherited btnFechar: TSpeedButton
          Left = 545
          ExplicitLeft = 906
        end
        inherited SpeedButton2: TSpeedButton
          ExplicitLeft = 386
        end
        inherited SpeedButton4: TSpeedButton
          ExplicitLeft = 378
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 606
        Height = 184
        DataSource = DSpadrao
        OnKeyUp = DBGrid1KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_CEP'
            Title.Caption = 'Cep'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_RUA'
            Title.Caption = 'Rua'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 257
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_BAI'
            Title.Caption = 'Bairro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 202
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CID'
            Title.Caption = 'Cidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 245
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF_CID'
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 26
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 210
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      ExplicitWidth = 606
      ExplicitHeight = 297
      inherited Panel2: TPanel
        Top = 243
        Width = 606
        ExplicitTop = 243
        ExplicitWidth = 606
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 598
        Height = 230
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 27
          Top = 58
          Width = 94
          Height = 16
          Caption = 'N'#250'mero do CEP:'
        end
        object Label2: TLabel
          Left = 77
          Top = 127
          Width = 44
          Height = 16
          Caption = 'Cidade:'
        end
        object Label3: TLabel
          Left = 63
          Top = 162
          Width = 58
          Height = 16
          Caption = 'Endere'#231'o:'
        end
        object Label4: TLabel
          Left = 82
          Top = 197
          Width = 39
          Height = 16
          Caption = 'Bairro:'
        end
        object Label5: TLabel
          Left = 101
          Top = 93
          Width = 20
          Height = 16
          Caption = 'UF:'
        end
        object Label6: TLabel
          Left = 104
          Top = 24
          Width = 17
          Height = 16
          Caption = 'ID:'
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 133
          Top = 55
          DataBinding.DataField = 'NO_CEP'
          DataBinding.DataSource = DSpadrao
          TabOrder = 0
          Width = 140
        end
        object DbeditID: TcxDBTextEdit
          Left = 133
          Top = 21
          DataBinding.DataField = 'ID'
          DataBinding.DataSource = DSpadrao
          Enabled = False
          TabOrder = 1
          Width = 76
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 133
          Top = 90
          DataBinding.DataField = 'UF_CID'
          DataBinding.DataSource = DSpadrao
          TabOrder = 2
          Width = 52
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 133
          Top = 124
          DataBinding.DataField = 'NM_CID'
          DataBinding.DataSource = DSpadrao
          TabOrder = 3
          Width = 404
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 133
          Top = 159
          DataBinding.DataField = 'NM_RUA'
          DataBinding.DataSource = DSpadrao
          TabOrder = 4
          Width = 404
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 133
          Top = 194
          DataBinding.DataField = 'NM_BAI'
          DataBinding.DataSource = DSpadrao
          TabOrder = 5
          Width = 404
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 352
    Top = 136
  end
  inherited ActionList1: TActionList
    Left = 368
    Top = 200
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSCEP
    Left = 464
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
    StoredProcName = 'SP_GEN_DB_CEP_ID'
    Left = 404
    Top = 70
  end
end
