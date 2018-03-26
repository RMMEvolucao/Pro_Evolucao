inherited FormCadRotas: TFormCadRotas
  Caption = 'FormCadRotas'
  ClientHeight = 830
  ClientWidth = 570
  ExplicitWidth = 576
  ExplicitHeight = 859
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 570
    Height = 830
    ActivePage = TabCadastro
    ExplicitWidth = 570
    ExplicitHeight = 830
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      ExplicitWidth = 562
      ExplicitHeight = 799
      inherited PanelConsulta: TPanel
        Width = 562
        ExplicitWidth = 562
      end
      inherited Panel1: TPanel
        Width = 562
        ExplicitWidth = 562
        inherited btnFechar: TSpeedButton
          Left = 501
          ExplicitLeft = 501
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 562
        Height = 686
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
            FieldName = 'NM_ROT'
            Title.Caption = 'Nome Rota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VEN'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ID_CTG'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NM_CTG_CLI'
            Title.Caption = 'Cat'#233'goria'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_VEN'
            Title.Caption = 'Vendedor respons'#225'vel'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Title.Caption = 'Ultimo registro'
            Visible = True
          end>
      end
    end
    inherited TabCadastro: TTabSheet
      OnShow = TabCadastroShow
      ExplicitLeft = 4
      ExplicitTop = 27
      ExplicitWidth = 562
      ExplicitHeight = 799
      inherited Panel2: TPanel
        Top = 745
        Width = 562
        ExplicitTop = 745
        ExplicitWidth = 562
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 558
        Height = 88
        Caption = 'Dados da Rota'
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 89
          Height = 16
          Caption = 'C'#243'digo da rota:'
        end
        object Label2: TLabel
          Left = 22
          Top = 52
          Width = 83
          Height = 16
          Caption = 'Nome da rota:'
        end
        object DBEdit_ID: TDBEdit
          Left = 109
          Top = 21
          Width = 60
          Height = 24
          DataField = 'ID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
        end
        object DBEdit_NM_ROT: TDBEdit
          Left = 109
          Top = 49
          Width = 436
          Height = 24
          DataField = 'NM_ROT'
          DataSource = DSpadrao
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 87
        Width = 558
        Height = 57
        Caption = 'Vendedor Respons'#225'vel'
        TabOrder = 2
        object Label3: TLabel
          Left = 45
          Top = 27
          Width = 60
          Height = 16
          Caption = 'Vendedor:'
        end
        object CB_VEN: TDBLookupComboBox
          Left = 109
          Top = 24
          Width = 436
          Height = 24
          DataField = 'ID_VEN'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_VEN'
          ListSource = DsVendedor
          TabOrder = 0
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 146
        Width = 558
        Height = 58
        Caption = 'Categoria de cliente'
        TabOrder = 3
        object Label4: TLabel
          Left = 45
          Top = 25
          Width = 60
          Height = 16
          Caption = 'Categoria:'
        end
        object CB_CTG: TDBLookupComboBox
          Left = 109
          Top = 21
          Width = 436
          Height = 24
          DataField = 'ID_CTG'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_CTG_CLI'
          ListSource = DsCtg
          TabOrder = 0
        end
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 210
        Width = 557
        Height = 383
        DataSource = DsVenRota
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NM_CID'
            Title.Caption = 'Cidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 471
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
            Title.Font.Style = [fsBold]
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_USU'
            Visible = False
          end>
      end
      object GB_controle: TGroupBox
        Left = 1
        Top = 600
        Width = 557
        Height = 59
        TabOrder = 5
        object Label5: TLabel
          Left = 20
          Top = 4
          Width = 20
          Height = 16
          Caption = 'UF:'
        end
        object Label6: TLabel
          Left = 109
          Top = 4
          Width = 50
          Height = 16
          Caption = 'Cidades:'
        end
        object CB_UF: TComboBox
          Left = 20
          Top = 24
          Width = 73
          Height = 24
          Style = csDropDownList
          MaxLength = 2
          TabOrder = 0
          OnSelect = CB_UFSelect
          Items.Strings = (
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
        end
        object CB_CIDADES: TDBComboBox
          Left = 109
          Top = 24
          Width = 412
          Height = 24
          Style = csDropDownList
          DataField = 'nm_cid'
          DataSource = DsCidades
          TabOrder = 1
          OnExit = CB_CIDADESExit
        end
      end
      object BtIncluir: TButton
        Left = 21
        Top = 669
        Width = 100
        Height = 25
        Caption = 'Incluir'
        TabOrder = 6
        OnClick = BtIncluirClick
      end
      object BtGravar: TButton
        Left = 154
        Top = 669
        Width = 100
        Height = 25
        Caption = 'Gravar'
        TabOrder = 7
        OnClick = BtGravarClick
      end
      object BtCancelar: TButton
        Left = 288
        Top = 669
        Width = 100
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 8
        OnClick = BtCancelarClick
      end
      object BtExcluir: TButton
        Left = 422
        Top = 669
        Width = 100
        Height = 25
        Caption = 'Excluir'
        TabOrder = 9
        OnClick = BtExcluirClick
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 376
    Top = 88
  end
  inherited ActionList1: TActionList
    Left = 456
    Top = 88
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSRotas
    Left = 376
    Top = 32
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
    StoredProcName = 'SP_GEN_DB_ROTAS_ID'
    Left = 452
    Top = 30
  end
  object DsVenRota: TDataSource
    DataSet = DMcadastro.CDSVenRotas
    Left = 272
    Top = 384
  end
  object DsVendedor: TDataSource
    DataSet = DMcadastro.CDSVendedor
    Left = 160
    Top = 280
  end
  object DsCtg: TDataSource
    DataSet = DMcadastro.CDSCategoria
    Left = 280
    Top = 304
  end
  object cdsCidades: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 504
    object cdsCidadesid: TIntegerField
      FieldName = 'id'
    end
    object cdsCidadesnm_cid: TStringField
      FieldName = 'nm_cid'
      Size = 45
    end
    object cdsCidadesuf_cid: TStringField
      FieldName = 'uf_cid'
      Size = 2
    end
  end
  object DsCidades: TDataSource
    DataSet = cdsCidades
    Left = 348
    Top = 507
  end
end
