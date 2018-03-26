object FormConsultaCest: TFormConsultaCest
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'FormConsultaCest'
  ClientHeight = 729
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 82
    Width = 1008
    Height = 583
    Align = alTop
    DataSource = DSCestConsulta
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CD_CEST'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DS_CEST'
        Width = 877
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1008
    Height = 82
    Align = alTop
    Caption = 'Iniciar Pesquisa'
    TabOrder = 1
    ExplicitWidth = 998
    object Label1: TLabel
      Left = 56
      Top = 48
      Width = 180
      Height = 13
      Caption = 'Informe nome Cest a ser Pesquisado:'
    end
    object Edconsulta: TEdit
      Left = 242
      Top = 45
      Width = 441
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 776
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object BitBtn1: TBitBtn
    Left = 456
    Top = 671
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object DSCestConsulta: TDataSource
    Left = 240
    Top = 144
  end
end
