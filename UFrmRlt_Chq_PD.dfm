object FormRlt_Chq_PD: TFormRlt_Chq_PD
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de cheques pr'#233' datados'
  ClientHeight = 335
  ClientWidth = 526
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
    Width = 526
    Height = 335
    Align = alClient
    Color = clBtnHighlight
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 9
      Width = 510
      Height = 63
      Color = clBtnHighlight
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 10
        Width = 67
        Height = 13
        Caption = 'Data Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 186
        Top = 10
        Width = 59
        Height = 13
        Caption = 'Data Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 352
        Top = 10
        Width = 110
        Height = 13
        Caption = 'Ordem do relat'#243'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DtIni: TcxDateEdit
        Left = 16
        Top = 29
        TabOrder = 0
        Width = 97
      end
      object DtFim: TcxDateEdit
        Left = 184
        Top = 29
        Properties.ShowTime = False
        TabOrder = 1
        Width = 97
      end
      object CbOrdem: TComboBox
        Left = 352
        Top = 29
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 2
        Text = 'Ordem de Vencimento'
        Items.Strings = (
          'Ordem de Vencimento'
          'Ordem de Inclus'#227'o')
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 75
      Width = 510
      Height = 106
      Color = clBtnHighlight
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      object Label4: TLabel
        Left = 16
        Top = 10
        Width = 106
        Height = 13
        Caption = 'Nome do Emitente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 55
        Width = 94
        Height = 13
        Caption = 'Nome do Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdEmitente: TEdit
        Left = 16
        Top = 29
        Width = 481
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object EdCliente: TEdit
        Left = 16
        Top = 74
        Width = 352
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object EdCodCli: TEdit
        Left = 373
        Top = 74
        Width = 57
        Height = 21
        Color = clInfoBk
        Enabled = False
        TabOrder = 2
      end
      object BtnCliente: TcxButton
        Left = 434
        Top = 74
        Width = 30
        Height = 21
        OptionsImage.ImageIndex = 0
        OptionsImage.Images = cxImageList1
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 3
        OnClick = BtnClienteClick
      end
      object BtnClear: TcxButton
        Left = 467
        Top = 74
        Width = 30
        Height = 21
        OptionsImage.ImageIndex = 1
        OptionsImage.Images = cxImageList1
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 4
        OnClick = BtnClearClick
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 186
      Width = 510
      Height = 110
      Color = clBtnHighlight
      ParentBackground = False
      ParentColor = False
      TabOrder = 2
      object Label6: TLabel
        Left = 16
        Top = 7
        Width = 163
        Height = 13
        Caption = 'Cheques com valores entre...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 29
        Width = 18
        Height = 13
        Caption = '>='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 178
        Top = 29
        Width = 18
        Height = 13
        Caption = '<='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 392
        Top = 7
        Width = 111
        Height = 13
        Caption = 'Cheques do banco...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdMaiorIgual: TEdit
        Left = 42
        Top = 26
        Width = 103
        Height = 21
        TabOrder = 0
        OnChange = EdMaiorIgualChange
        OnKeyPress = EdMaiorIgualKeyPress
      end
      object EdMenorIgual: TEdit
        Left = 202
        Top = 26
        Width = 103
        Height = 21
        TabOrder = 1
        OnChange = EdMenorIgualChange
        OnKeyPress = EdMenorIgualKeyPress
      end
      object EditCodBanco: TEdit
        Left = 459
        Top = 26
        Width = 38
        Height = 21
        MaxLength = 3
        TabOrder = 2
        OnExit = EditCodBancoExit
        OnKeyPress = EditCodBancoKeyPress
      end
      object CbTipoImpressora: TComboBox
        Left = 16
        Top = 61
        Width = 481
        Height = 21
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 3
        Text = 'Impressora Jato de Tinta'
        Items.Strings = (
          'Impressora Jato de Tinta'
          'Impressora Matricial')
      end
    end
    object Button1: TButton
      Left = 8
      Top = 298
      Width = 84
      Height = 33
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 111
      Top = 298
      Width = 84
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 4
    end
  end
  object CdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 80
    object CdsRelatorioVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object CdsRelatorioValor: TFloatField
      FieldName = 'Valor'
    end
    object CdsRelatorioBancoAgencia: TStringField
      FieldName = 'BancoAgencia'
      Size = 10
    end
    object CdsRelatorioEmitente: TStringField
      FieldName = 'Emitente'
      Size = 45
    end
    object CdsRelatorioCliente: TStringField
      FieldName = 'Cliente'
      Size = 45
    end
    object CdsRelatorioFone: TStringField
      FieldName = 'Fone'
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 15
    end
    object CdsRelatorioInclusao: TDateField
      FieldName = 'Inclusao'
    end
    object CdsRelatorioT: TStringField
      FieldName = 'T'
      Size = 1
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 5243064
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0004000000150000002B00000033000000330000003400000035000000350000
          0036000000360000003600000030000000180000000500000000000000000000
          00141615149B34312FFF302C2BFF2A2826FF262322FF221F1EFF1D1B1AFF1917
          16FF151313FF100F0FFF0D0D0CFF040404A40000001800000000000000000000
          0024393534F8827A74FF554840FF493C37FF423731FF13100EFF100C0CFF2D23
          1FFF261C19FF211815FF1F1714FF0C0C0CFA0000002D00000000000000000000
          00243D3937F88B817BFF675B53FF564941FF2F2B29FF323182FF1A1A6CFF2523
          21FF302520FF281E1BFF221A17FF0F0E0DFB0000003100000000000000000000
          001C363330E0847B75FF7E7269FF63554CFF5E5B5AFF615FA1FF35357DFF5654
          53FF3D302BFF312622FF261E1BFF100E0EE90000002700000000000000000000
          000F242120A3706864FF988C86FF7A6D65FFBBB9B9FF5E5CA0FF4C4C8CFFB7B6
          B6FF463A34FF3C302AFF302B28FF0B0B0AB40000001700000000000000000000
          00040505043144403CEC807772FF958B84FFF7F7F7FF2A2984FF232371FFF5F5
          F5FF5E544FFF564F4CFF1F1E1CF2020202430000000600000000000000000000
          0000000000070303032D312D2BC64A4543FF74849DFF436296FF3C588DFF6370
          8BFF353230FF1B1919D10201013F0000000B0000000100000000000000000000
          000000000000000000040000001E202E41A76484AFFF7FA3C6FF4B83B4FF224B
          87FF0B152BB50000002B00000007000000000000000000000000000000000000
          00000000000000000000000000112A4467CCB0C1D8FF96CCECFF70AFD6FF4377
          AAFF0A1F4ACD0000001B00000000000000000000000000000000000000000000
          000000000000000000000001021E1A2F51F9E8EDF4FFA7DDF6FF84C2E5FF6099
          C3FF102F6BF10000033300000000000000000000000000000000000000000000
          00000000000000000000030B19800A1938FEE4E9F0FFCAEBFBFF96D3F1FF689F
          C6FF14346EF1000213A100000000000000000000000000000000000000000000
          00000000000000000000061126AE1F395BFF212D49FF687387FF97B7CBFF7297
          BDFF071235EB000216B400000000000000000000000000000000000000000000
          00000000000000000000061122921F375AFF233E61FF0C2041FF071432FF2C3E
          62FE030927FF0103138800000000000000000000000000000000000000000000
          0000000000000000000002050A280F2444F7264165FF2A476BFF223D60FF0612
          2FFC020715810000020E00000000000000000000000000000000000000000000
          0000000000000000000000000000040A144F07152DC1071633F304102AD90105
          0F58000000010000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000020000000C05031A46110852AB190C76E31D0E89FF1C0E89FF190C
          76E4120852AD06031B4D0000000E000000030000000000000000000000000000
          000301010519130A55A9211593FF2225AEFF2430C2FF2535CBFF2535CCFF2430
          C3FF2225AFFF211594FF140B58B20101051E0000000400000000000000020101
          03151C1270CD2522A6FF2D3DCCFF394BD3FF3445D1FF2939CDFF2839CDFF3344
          D0FF394AD4FF2D3CCDFF2523A8FF1C1270D20101051D00000003000000091912
          5BA72A27AAFF2F41D0FF3541C7FF2726ABFF3137BCFF384AD3FF384BD3FF3137
          BCFF2726ABFF3540C7FF2E40D0FF2927ACFF1A115EB10000000D08061C3D3129
          A2FD2C3CCCFF3842C6FF5F5DBDFFEDEDF8FF8B89CEFF3337B9FF3437B9FF8B89
          CEFFEDEDF8FF5F5DBDFF3741C6FF2B3ACDFF3028A4FF0907204A1E185F9F373B
          BCFF3042D0FF2621A5FFECE7ECFFF5EBE4FFF8F2EEFF9491D1FF9491D1FFF8F1
          EDFFF3E9E2FFECE6EBFF2621A5FF2E3FCFFF343ABEFF201A66B0312A92E03542
          CBFF3446D1FF2C2FB5FF8070ADFFEBDBD3FFF4EAE4FFF7F2EDFFF8F1EDFFF4E9
          E2FFEADAD1FF7F6FACFF2B2EB5FF3144D0FF3040CBFF312A95E53E37AEFA3648
          D0FF374AD3FF3A4ED5FF3234B4FF8A7FB9FFF6ECE7FFF5ECE6FFF4EBE5FFF6EB
          E5FF897DB8FF3233B4FF384BD3FF3547D2FF3446D1FF3E37AEFA453FB4FA4557
          D7FF3B50D5FF4C5FDAFF4343B7FF9189C7FFF7EFE9FFF6EEE9FFF6EFE8FFF7ED
          E8FF9087C5FF4242B7FF495DD8FF394CD4FF3F52D4FF443FB3FA403DA1DC5967
          DAFF5B6EDDFF4F4DBAFF8F89CAFFFBF6F4FFF7F1ECFFEDE1D9FFEDE0D9FFF7F0
          EAFFFAF5F2FF8F89CAFF4E4DB9FF576ADCFF5765D9FF403EA4E12E2D70987C85
          DDFF8798E8FF291D9BFFE5DADEFFF6EEEBFFEDDFDAFF816EA9FF816EA9FFEDDF
          D8FFF4ECE7FFE5D9DCFF291D9BFF8494E7FF7A81DDFF33317BAC111125356768
          D0FC9EACEDFF686FCEFF5646A1FFCCB6BCFF7A68A8FF4C4AB6FF4D4BB7FF7A68
          A8FFCBB5BCFF5646A1FF666DCCFF9BAAEEFF696CD0FD1212273F000000043B3B
          79977D84DFFFA5B6F1FF6D74D0FF2D219BFF5151B9FF8EA2ECFF8EA1ECFF5252
          BBFF2D219BFF6B72D0FFA2B3F0FF8086E0FF404183A700000008000000010303
          050C4E509DBC8087E2FFAEBDF3FFA3B6F1FF9DAFF0FF95A9EEFF95A8EEFF9BAD
          EFFFA2B3F0FFACBCF3FF838AE3FF4F52A0C10303051100000002000000000000
          000100000005323464797378D9F8929CEAFFA1AEEFFFB0BFF3FFB0BFF4FFA2AE
          EFFF939DE9FF7479DAF83234647D000000080000000200000000000000000000
          000000000000000000031213232D40437D935D61B5D07378DFFC7378DFFC5D61
          B5D040437D951212223000000004000000010000000000000000}
      end>
  end
  object frxReport_Rlt_chq_pd: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43186.653514791700000000
    ReportOptions.LastChange = 43186.703019224500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      
        'var memo : TfrxMemoView;                                        ' +
        '           '
      'begin'
      'Memo := TfrxMemoView.Create(Header1);'
      'Memo.Text := '#39'Hello FastReport!'#39';'
      'Memo.Height := 20;'
      
        'memo.align := baright;                                          ' +
        '        '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnBeforePrint = frxReport_Rlt_chq_pdBeforePrint
    OnGetValue = frxReport_Rlt_chq_pdGetValue
    Left = 408
    Top = 80
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Titulo'
        Value = Null
      end
      item
        Name = 'DescRelatorio'
        Value = Null
      end
      item
        Name = 'NomeEmpresa'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 76.370130000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Date: TfrxMemoView
          Left = 642.299630000000000000
          Top = 19.118120000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object DescRelatorio: TfrxMemoView
          Left = 1.779530000000000000
          Top = 52.574830000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[DescRelatorio]')
        end
        object NomeEmpresa: TfrxMemoView
          Left = 5.000000000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[NomeEmpresa]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 49.354360000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 52.133889999999990000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Align = baWidth
          Top = 72.811070000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 75.720470000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Page: TfrxMemoView
          Left = 641.799630000000000000
          Top = 1.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 19.677180000000000000
        Top = 200.315090000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Vencimento: TfrxMemoView
          Align = baLeft
          Top = 0.779529999999994100
          Width = 56.692913390000000000
          Height = 11.338582677165400000
          DataField = 'Vencimento'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Vencimento"]')
          ParentFont = False
        end
        object frxDBDataset1Valor: TfrxMemoView
          Align = baLeft
          Left = 56.692913390000000000
          Top = 0.779529999999994100
          Width = 75.590551180000000000
          Height = 11.338582680000000000
          DataField = 'Valor'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Valor"]')
          ParentFont = False
        end
        object frxDBDataset1BancoAgencia: TfrxMemoView
          Align = baLeft
          Left = 132.283464570000000000
          Top = 0.779529999999994100
          Width = 60.472440940000000000
          Height = 11.338582680000000000
          DataField = 'BancoAgencia'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."BancoAgencia"]')
          ParentFont = False
        end
        object frxDBDataset1Emitente: TfrxMemoView
          Align = baLeft
          Left = 192.755905510000000000
          Top = 0.779529999999994100
          Width = 170.078740160000000000
          Height = 11.338582680000000000
          DataField = 'Emitente'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Emitente"]')
          ParentFont = False
        end
        object frxDBDataset1Cliente: TfrxMemoView
          Align = baLeft
          Left = 362.834645670000100000
          Top = 0.779529999999994100
          Width = 170.078740160000000000
          Height = 11.338582680000000000
          DataField = 'Cliente'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Cliente"]')
          ParentFont = False
        end
        object frxDBDataset1Fone: TfrxMemoView
          Align = baLeft
          Left = 532.913385830000100000
          Top = 0.779529999999994100
          Width = 75.590558500000000000
          Height = 11.338582677165400000
          DataField = 'Fone'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Fone"]')
          ParentFont = False
        end
        object frxDBDataset1Inclusao: TfrxMemoView
          Align = baLeft
          Left = 608.503944330000100000
          Width = 64.252010000000000000
          Height = 11.338582677165400000
          DataField = 'Inclusao'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Inclusao"]')
          ParentFont = False
        end
        object frxDBDataset1T: TfrxMemoView
          Align = baLeft
          Left = 672.755954330000100000
          Width = 15.118120000000000000
          Height = 11.338590000000000000
          DataField = 'T'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."T"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 20.598330000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baLeft
          Top = 1.000000000000028000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimento')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 56.692950000000010000
          Top = 1.000000000000028000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Cheque')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 132.283501180000000000
          Top = 1.000000000000028000
          Width = 60.472436060000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ban/Agen')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 192.755937240000000000
          Top = 1.000000000000028000
          Width = 170.078740160000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome Emitente')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 362.834677400000100000
          Top = 1.000000000000028000
          Width = 170.078740160000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome Cliente')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 18.098330000000030000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 20.598330000000030000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 532.913417560000100000
          Top = 1.000000000000028000
          Width = 75.590556060000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fone')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 608.503973620000100000
          Top = 1.000000000000000000
          Width = 64.251966060000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Inclus'#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 672.755939680000100000
          Top = 1.220470000000006000
          Width = 15.118120000000000000
          Height = 15.118110236220470000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'T')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Vencimento=Vencimento'
      'Valor=Valor'
      'BancoAgencia=BancoAgencia'
      'Emitente=Emitente'
      'Cliente=Cliente'
      'Fone=Fone'
      'Inclusao=Inclusao'
      'T=T')
    DataSet = CdsRelatorio
    BCDToCurrency = False
    Left = 312
    Top = 80
  end
  object frxReport_Rlt_chq_pd_Mtx: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43188.408311701400000000
    ReportOptions.LastChange = 43188.408311701400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport_Rlt_chq_pd_MtxGetValue
    Left = 352
    Top = 200
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' titulo'
        Value = Null
      end
      item
        Name = 'nmEmpresa'
        Value = ''
      end
      item
        Name = 'nmDesc'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 335.279783465139800000
      PaperHeight = 278.870653229369800000
      PaperSize = 256
      FontStyle = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 68.000000000000000000
        Top = 17.000000000000000000
        Width = 1267.200000000000000000
        object Page: TfrxDMPMemoView
          Align = baRight
          Left = 1152.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[Page]')
          TruncOutboundText = False
        end
        object Date: TfrxDMPMemoView
          Align = baRight
          Left = 1152.000000000000000000
          Top = 17.000000000000000000
          Width = 115.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[Date]')
          TruncOutboundText = False
        end
        object DMPMemo3: TfrxDMPMemoView
          Left = 1084.800000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Pagina:')
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Left = 1075.200000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Emissao:')
          TruncOutboundText = False
        end
        object DMPMemo5: TfrxDMPMemoView
          Align = baWidth
          Top = 34.000000000000000000
          Width = 1267.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            
              ' ===============================================================' +
              '================================================================' +
              '===')
          TruncOutboundText = False
        end
        object nmEmpresa: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[nmEmpresa]')
          TruncOutboundText = False
        end
        object nmDesc: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[nmDesc]')
          TruncOutboundText = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 102.000000000000000000
        Width = 1267.200000000000000000
        object DMPMemo6: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Vencimento')
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 115.200000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          TruncOutboundText = False
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 220.800000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Ban/Agn')
          TruncOutboundText = False
        end
        object DMPMemo9: TfrxDMPMemoView
          Left = 336.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Emitente')
          TruncOutboundText = False
        end
        object DMPMemo10: TfrxDMPMemoView
          Left = 662.400000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Emitente')
          TruncOutboundText = False
        end
        object DMPMemo11: TfrxDMPMemoView
          Left = 988.800000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Fone')
          TruncOutboundText = False
        end
        object DMPMemo12: TfrxDMPMemoView
          Left = 1142.400000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'Inclus'#227'o')
          TruncOutboundText = False
        end
        object DMPMemo13: TfrxDMPMemoView
          Left = 1248.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'T')
          TruncOutboundText = False
        end
        object DMPMemo14: TfrxDMPMemoView
          Align = baWidth
          Top = 17.000000000000000000
          Width = 1267.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            
              ' ===============================================================' +
              '================================================================' +
              '===')
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 170.000000000000000000
        Width = 1267.200000000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Vencimento: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataField = 'Vencimento'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."Vencimento"]')
          TruncOutboundText = False
        end
        object frxDBDataset1Valor: TfrxDMPMemoView
          Left = 115.200000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataField = 'Valor'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Valor"]')
          TruncOutboundText = False
        end
        object frxDBDataset1BancoAgencia: TfrxDMPMemoView
          Left = 220.800000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DataField = 'BancoAgencia'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."BancoAgencia"]')
          TruncOutboundText = False
        end
        object frxDBDataset1Emitente: TfrxDMPMemoView
          Left = 336.000000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataField = 'Emitente'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Emitente"]')
          TruncOutboundText = False
        end
        object frxDBDataset1Cliente: TfrxDMPMemoView
          Left = 662.400000000000000000
          Width = 307.200000000000000000
          Height = 17.000000000000000000
          DataField = 'Cliente'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Cliente"]')
          TruncOutboundText = False
        end
        object frxDBDataset1Fone: TfrxDMPMemoView
          Left = 988.800000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          DataField = 'Fone'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Fone"]')
          TruncOutboundText = False
        end
        object frxDBDataset1Inclusao: TfrxDMPMemoView
          Left = 1142.400000000000000000
          Width = 86.400000000000000000
          Height = 17.000000000000000000
          DataField = 'Inclusao'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Inclusao"]')
          TruncOutboundText = False
        end
        object frxDBDataset1T: TfrxDMPMemoView
          Left = 1248.000000000000000000
          Width = 9.600000000000000000
          Height = 17.000000000000000000
          DataField = 'T'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."T"]')
          TruncOutboundText = False
        end
      end
    end
  end
end
