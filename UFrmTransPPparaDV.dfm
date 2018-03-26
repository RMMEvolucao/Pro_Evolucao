object FormTransPPparaDV: TFormTransPPparaDV
  Left = 0
  Top = 0
  Caption = 'Transferir cheque pr'#233' devolvido para devolvido'
  ClientHeight = 227
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 568
    Height = 227
    Align = alClient
    Color = clBtnHighlight
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object LBCliente: TLabel
      Left = 100
      Top = 10
      Width = 59
      Height = 16
      Caption = 'LBCliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LbBancoCheque: TLabel
      Left = 11
      Top = 39
      Width = 87
      Height = 16
      Caption = 'Banco/Cheque:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LbValor: TLabel
      Left = 63
      Top = 64
      Width = 39
      Height = 16
      Caption = 'Valor: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LBVencimento: TLabel
      Left = 26
      Top = 87
      Width = 72
      Height = 16
      Caption = 'Vencimento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 112
      Width = 563
      Height = 80
      TabOrder = 0
      object Label1: TLabel
        Left = 13
        Top = 16
        Width = 80
        Height = 13
        Caption = 'Data Devolu'#231#227'o:'
      end
      object Label2: TLabel
        Left = 31
        Top = 47
        Width = 62
        Height = 13
        Caption = 'Observa'#231#227'o:'
      end
      object EditObs: TEdit
        Left = 97
        Top = 44
        Width = 448
        Height = 21
        TabOrder = 1
      end
      object EditDT_DVL: TcxDateEdit
        Left = 97
        Top = 13
        TabOrder = 0
        Width = 95
      end
    end
    object btnTransferir: TButton
      Left = 3
      Top = 197
      Width = 100
      Height = 25
      Caption = 'Transferir'
      TabOrder = 1
      OnClick = btnTransferirClick
    end
    object BtnCancelar: TButton
      Left = 123
      Top = 197
      Width = 100
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
  end
end
