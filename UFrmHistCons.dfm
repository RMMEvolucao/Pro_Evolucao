object FormHistCons: TFormHistCons
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Hist'#243'rico de altera'#231#227'o do tipo de consumidor do Cliente'
  ClientHeight = 642
  ClientWidth = 960
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridHistorico: TDBGrid
    Left = 0
    Top = 0
    Width = 960
    Height = 642
    Align = alClient
    DataSource = DSHistorico
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_ALT_TPC'
        Title.Caption = 'Data da Altera'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NM_ALT_TPC'
        Title.Caption = 'Tipo de Consumidor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 293
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_USU_TPC'
        Title.Caption = 'Registro de Modifica'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 479
        Visible = True
      end>
  end
  object DSHistorico: TDataSource
    DataSet = DMcadastro.CDS_Historico_ALT
    Left = 424
    Top = 272
  end
end
