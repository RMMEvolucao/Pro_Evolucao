object FormTransDVparaDB: TFormTransDVparaDB
  Left = 0
  Top = 0
  Caption = 'Transferir cheque devolvido para baixado'
  ClientHeight = 285
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 568
    Height = 285
    Align = alClient
    Color = clBtnHighlight
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object LBCliente: TLabel
      Left = 117
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
      Left = 30
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
      Left = 82
      Top = 61
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
      Left = 45
      Top = 106
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
    object Label3: TLabel
      Left = 58
      Top = 129
      Width = 59
      Height = 16
      Caption = 'Devolvido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 20
      Top = 152
      Width = 97
      Height = 16
      Caption = 'Dia(s) de atraso:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 14
      Top = 84
      Width = 103
      Height = 16
      Caption = 'Valor Reajustado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox2: TGroupBox
      Left = 3
      Top = 179
      Width = 563
      Height = 70
      TabOrder = 0
      object Label1: TLabel
        Left = 13
        Top = 12
        Width = 92
        Height = 13
        Caption = 'Data Recebimento:'
      end
      object Label2: TLabel
        Left = 43
        Top = 39
        Width = 62
        Height = 13
        Caption = 'Observa'#231#227'o:'
      end
      object EditObs: TEdit
        Left = 111
        Top = 36
        Width = 443
        Height = 21
        TabOrder = 0
      end
      object EditDT_RCB: TcxDateEdit
        Left = 111
        Top = 9
        TabOrder = 1
        Width = 95
      end
    end
    object BtnCancelar: TButton
      Left = 120
      Top = 253
      Width = 100
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BtnCancelarClick
    end
    object btnTransferir: TButton
      Left = 6
      Top = 253
      Width = 100
      Height = 25
      Caption = 'Transferir'
      TabOrder = 1
      OnClick = btnTransferirClick
    end
  end
end
