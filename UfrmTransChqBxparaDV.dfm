object FormTransBXparaDV: TFormTransBXparaDV
  Left = 0
  Top = 0
  Caption = 'FormTransBXparaDV'
  ClientHeight = 287
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
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
    Height = 287
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
      Top = 116
      Width = 563
      Height = 131
      TabOrder = 0
      object Label1: TLabel
        Left = 13
        Top = 40
        Width = 80
        Height = 13
        Caption = 'Data Devolu'#231#227'o:'
      end
      object Label2: TLabel
        Left = 31
        Top = 103
        Width = 62
        Height = 13
        Caption = 'Observa'#231#227'o:'
      end
      object Label3: TLabel
        Left = 60
        Top = 9
        Width = 33
        Height = 13
        Caption = 'Alinea:'
      end
      object Label4: TLabel
        Left = 43
        Top = 69
        Width = 50
        Height = 13
        Caption = 'Vendedor:'
      end
      object EditObs: TEdit
        Left = 97
        Top = 100
        Width = 448
        Height = 21
        TabOrder = 3
      end
      object CB_Alinea: TComboBox
        Left = 97
        Top = 6
        Width = 75
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        Items.Strings = (
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18'
          '19'
          '20'
          '21'
          '22'
          '23'
          '24'
          '25'
          '26'
          '27'
          '28'
          '29'
          '30'
          '31'
          '32'
          '33'
          '34'
          '35'
          '36'
          '37'
          '38'
          '39'
          '40'
          '41'
          '42'
          '43'
          '44'
          '45'
          '46'
          '47'
          '48'
          '49'
          '50'
          '51'
          '52'
          '53'
          '54'
          '55'
          '56'
          '57'
          '58'
          '59'
          '60'
          '61'
          '62'
          '63')
      end
      object Cb_vendedor: TComboBox
        Left = 97
        Top = 66
        Width = 448
        Height = 21
        Style = csDropDownList
        TabOrder = 2
      end
      object EditDT_DVL: TcxDateEdit
        Left = 97
        Top = 37
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
