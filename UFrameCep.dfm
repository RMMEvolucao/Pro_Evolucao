object FrameCep: TFrameCep
  Left = 0
  Top = 0
  Width = 782
  Height = 276
  TabOrder = 0
  object Label2: TLabel
    Left = 15
    Top = 72
    Width = 71
    Height = 19
    Caption = 'Endere'#231'o:'
    FocusControl = DbEditEndereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 38
    Top = 117
    Width = 48
    Height = 19
    Caption = 'Bairro:'
    FocusControl = DbeditBairro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 163
    Width = 54
    Height = 19
    Caption = 'Cidade:'
    FocusControl = DbeditCidade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 482
    Top = 27
    Width = 25
    Height = 19
    Caption = 'UF:'
    FocusControl = DbeditUF
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 53
    Top = 27
    Width = 33
    Height = 19
    Caption = 'Cep:'
    FocusControl = DbEditEndereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LbcepInformacao: TLabel
    Left = 225
    Top = 30
    Width = 201
    Height = 16
    Caption = 'Aperte Ctrl + F3 para buscar o Cep'
    FocusControl = DbEditEndereco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object DbEditEndereco: TDBEdit
    Left = 92
    Top = 69
    Width = 454
    Height = 27
    DataField = 'NM_RUA'
    DataSource = DSCEP
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DbeditBairro: TDBEdit
    Left = 92
    Top = 114
    Width = 454
    Height = 27
    DataField = 'NM_BAI'
    DataSource = DSCEP
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DbeditCidade: TDBEdit
    Left = 92
    Top = 160
    Width = 454
    Height = 27
    DataField = 'NM_CID'
    DataSource = DSCEP
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DbeditUF: TDBEdit
    Left = 512
    Top = 24
    Width = 34
    Height = 27
    DataField = 'UF_CID'
    DataSource = DSCEP
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object EditCep: TMaskEdit
    Left = 92
    Top = 24
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = 'EditCep'
    OnEnter = EditCepEnter
    OnExit = EditCepExit
    OnKeyDown = EditCepKeyDown
  end
  object CDS_CEP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 104
    object CDS_CEPID_CEP: TIntegerField
      FieldName = 'ID_CEP'
    end
    object CDS_CEPNM_RUA: TStringField
      FieldName = 'NM_RUA'
      Size = 45
    end
    object CDS_CEPNM_BAI: TStringField
      FieldName = 'NM_BAI'
      Size = 45
    end
    object CDS_CEPNM_CID: TStringField
      FieldName = 'NM_CID'
      Size = 45
    end
    object CDS_CEPUF_CID: TStringField
      FieldName = 'UF_CID'
      Size = 2
    end
  end
  object DSCEP: TDataSource
    DataSet = CDS_CEP
    Left = 656
    Top = 184
  end
  object DsPadraoCep: TDataSource
    Left = 632
    Top = 40
  end
end
