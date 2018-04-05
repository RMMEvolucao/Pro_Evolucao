object FormRlt_Chq_DB: TFormRlt_Chq_DB
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de chque devolvido baixado'
  ClientHeight = 340
  ClientWidth = 534
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
    Width = 534
    Height = 340
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
      OnClick = Button2Click
    end
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 4194648
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
  object CdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 16
    object CdsRelatorioRECEBIDO: TDateField
      FieldName = 'RECEBIDO'
    end
    object CdsRelatorioVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object CdsRelatorioCHEQUE: TStringField
      FieldName = 'CHEQUE'
      Size = 10
    end
    object CdsRelatorioBCOAGEN: TStringField
      FieldName = 'BCOAGEN'
      Size = 45
    end
    object CdsRelatorioEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 45
    end
    object CdsRelatorioCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 45
    end
    object CdsRelatorioDEVOLUCAO: TDateField
      FieldName = 'DEVOLUCAO'
    end
    object CdsRelatorioT: TStringField
      FieldName = 'T'
      Size = 1
    end
  end
  object frxReport_Rlt_chq_DB: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43186.653514791700000000
    ReportOptions.LastChange = 43195.362898842590000000
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
    OnGetValue = frxReport_Rlt_chq_DBGetValue
    Left = 448
    Top = 8
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
          Top = 75.720470000000010000
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
        Top = 222.992270000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Vencimento: TfrxMemoView
          Align = baLeft
          Top = 0.779529999999994100
          Width = 71.811033390000000000
          Height = 11.338582680000000000
          DataField = 'RECEBIDO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RECEBIDO"]')
          ParentFont = False
        end
        object frxDBDataset1Valor: TfrxMemoView
          Align = baRight
          Left = 71.811033390000010000
          Top = 0.779529999999994100
          Width = 83.149611180000000000
          Height = 11.338582680000000000
          DataField = 'VALOR'
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
            '[frxDBDataset1."VALOR"]')
          ParentFont = False
        end
        object frxDBDataset1BancoAgencia: TfrxMemoView
          Align = baLeft
          Left = 154.960644570000000000
          Top = 0.779529999999994100
          Width = 68.031500940000000000
          Height = 11.338582680000000000
          DataField = 'CHEQUE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CHEQUE"]')
          ParentFont = False
        end
        object frxDBDataset1Emitente: TfrxMemoView
          Align = baLeft
          Left = 222.992145510000000000
          Top = 0.779529999999994100
          Width = 86.929080160000000000
          Height = 11.338582680000000000
          DataField = 'BCOAGEN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."BCOAGEN"]')
          ParentFont = False
        end
        object frxDBDataset1Cliente: TfrxMemoView
          Align = baLeft
          Left = 309.921225670000000000
          Top = 0.779529999999994100
          Width = 170.078740160000000000
          Height = 11.338582680000000000
          DataField = 'EMITENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."EMITENTE"]')
          ParentFont = False
        end
        object frxDBDataset1Fone: TfrxMemoView
          Align = baLeft
          Left = 479.999965830000000000
          Top = 0.779529999999994100
          Width = 170.078808500000000000
          Height = 11.338582680000000000
          DataField = 'CLIENTE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."CLIENTE"]')
          ParentFont = False
        end
        object frxDBDataset1Inclusao: TfrxMemoView
          Align = baLeft
          Left = 650.078774330000000000
          Width = 60.472480000000000000
          Height = 11.338582680000000000
          DataField = 'DEVOLUCAO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DEVOLUCAO"]')
          ParentFont = False
        end
        object frxDBDataset1T: TfrxMemoView
          Align = baLeft
          Left = 710.551254330000000000
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
          Top = 1.000000000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Recebimento')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 71.811070000000000000
          Top = 1.000000000000000000
          Width = 83.149611180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 154.960681180000000000
          Top = 1.000000000000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cheque')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 222.992177240000000000
          Top = 1.000000000000000000
          Width = 79.370020160000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Banco/Agen')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 302.362197400000000000
          Top = 1.000000000000000000
          Width = 170.078740160000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Emitente')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 18.098330000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 20.598330000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 472.440937560000000000
          Top = 1.000000000000000000
          Width = 170.078740160000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 642.519677720000000000
          Top = 1.000000000000000000
          Width = 68.031496060000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Devolu'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 710.551173780000000000
          Top = 1.220470000000006000
          Width = 15.118120000000000000
          Height = 15.118110240000000000
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
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 264.567100000000000000
        Width = 740.409927000000000000
        object Memo9: TfrxMemoView
          Align = baLeft
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TT.dia....:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 158.740260000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '000000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '([count()]) Data:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 207.874150000000000000
          Width = 71.811033390000010000
          Height = 15.118110240000000000
          AutoWidth = True
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."RECEBIDO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 64.252010000000000000
          Width = 94.488249999999990000
          Height = 15.118110240000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."VALOR">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Top = 200.315090000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset1."RECEBIDO"'
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RECEBIDO=RECEBIDO'
      'VALOR=VALOR'
      'CHEQUE=CHEQUE'
      'BCOAGEN=BCOAGEN'
      'EMITENTE=EMITENTE'
      'CLIENTE=CLIENTE'
      'DEVOLUCAO=DEVOLUCAO'
      'T=T')
    DataSet = CdsRelatorio
    BCDToCurrency = False
    Left = 448
    Top = 66
  end
end
