inherited FormCidades: TFormCidades
  Caption = 'Cadastro de Cidades'
  ClientHeight = 260
  ClientWidth = 534
  ExplicitWidth = 540
  ExplicitHeight = 289
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 534
    Height = 260
    ActivePage = TabConsulta
    inherited TabConsulta: TTabSheet
      inherited PanelConsulta: TPanel
        Width = 526
        inherited cbConsulta: TComboBox
          ItemIndex = 0
          Text = 'C'#243'digo IBGE'
          Items.Strings = (
            'C'#243'digo IBGE'
            'Nome Cidade')
        end
        inherited Edconsulta: TMaskEdit
          OnKeyPress = EdconsultaKeyPress
        end
      end
      inherited Panel1: TPanel
        Width = 526
        inherited btnFechar: TSpeedButton
          Left = 465
        end
        inherited btnImprimir: TSpeedButton
          OnClick = btnImprimirClick
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 526
        Height = 116
        DataSource = DSpadrao
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UF_CID'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Estado'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NM_CID'
            Width = 350
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CD_CID_IBG'
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CD_PAI'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object Panel_Impressao: TPanel
        Left = 117
        Top = 200
        Width = 620
        Height = 209
        Anchors = []
        TabOrder = 3
        Visible = False
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 6
          Top = 6
          Width = 608
          Height = 197
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Caption = 'Relat'#243'rio de Cidades filtrados pelo UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 5
          ParentFont = False
          TabOrder = 0
          object Label4: TLabel
            Left = 38
            Top = 153
            Width = 124
            Height = 16
            Caption = 'Selecione um Estado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Image1: TImage
            Left = 27
            Top = 32
            Width = 94
            Height = 97
            Picture.Data = {
              0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000080
              000000800806000000C33E61CB000010CC4944415478DAED5D4BAC2C4519FEFE
              EA9E39730FF7F212C518D06850C040548C5E2312AE728C71633024C6B8376E88
              46628CA83171C5860D6B172E7D2C4C484C4CF418AF4AA24650348204F001081A
              7909F7DC7367E674D5EFA2BB67FA515D5D55DD3DDD736EF7EA64E6F45735FFF7
              D7FFAABFAB438CD7457D854D01F6F6CE1000CA7CC4FBFB6779C4DB0EBCB021F9
              41F1B3FDFDB36AC4DB1EBCB0819605454D032047BCEDC20B3D070B7583F998AE
              11AF5FBCD063B0A966B0A306931FF17AC40B1D07DBD10CB66C30F911AF67BCD0
              72300160A6196CE139F91CDE535FFCC11F41C42ADC6110E1DAAF380232E3A968
              41605ECF6F0BF0DEF9C0676E6C437E4DF8082D073BA1196CEE13B1EAF088F99D
              2A988298016667E18A6851FA781BF0DA925F133E42CBC1B2E9850270A1C1E477
              01882C9E0CA62B61F90897B3F71141853BDB81D792FC7CF9302A40E263B26686
              124D3B6C40FE498DE61E029E2BEB689EBF8F082A9CE138E299E4E74BFEDEDE19
              0A1D038C8396C93FD8DF3FABAEF9929F705B5DA903C6AB939F67002900706899
              5AA80E56FE7AF22E02A95C59CDC81A2A5E47E4070946DE05188A0A173A231F00
              58B5205C6E99ACFEF13A223FCCE0946280A0E568DF6AF2ACD8DEAC22FBBF8970
              B981991E285E47E44F138C74326B17906C24E8F2CA4EC9B7328BE9CA2A0A77D2
              D04C0F14AF03F245423EB293DCDF3F1B2B40A21D68A942E53E79930B300A975B
              26AB7FBC8EC89F1557FEFEFE599975016DD5A6BD26CF55422A08F7E6CBA73839
              11A0E90C2072CF7B98C1CB39C0939C8FEE02EF6F07122F5C904320FF4461E5E7
              760943CDCA979B24BFD24426E4536665DD7BF365F8F05B2E8510C2992BA514E6
              F3399877335C1166B3592778DF7CF47FF8EED3077D93BFAB213FCAF25B5480CD
              93AF7301CC10D13C2EBDA61F1161BAB3D3902C6E997C031EB37576D311F92733
              297CA55B0F333EC1B79AD478F2B92C20211FBC8EA799082AD801D196909FB835
              9BECA643F2A9B0F2B51B45611A0DF6457ECE0554AC7C15C4D1F49F5E596021D9
              015661A9216B3A9B81CE2D3D5CBE3DDEBF0FA3DA00B063F28BA9BC7632DE3D81
              AD4E9ED56AE3A44CFE74154D7FEB9197DCA2731D5EB8E31DF0B58DB701F26B37
              8AC2DEC907C04AC55BA625B3DF6C9770F078DDAFFCC3D69B42BB305B8F1FCD2B
              56BEBF70B7090F1D6EB4D5DD1FF64D3E8093A464A5D96F8FAC61E2F549BE9302
              7419B0A4D1F24AB8DCB2991E285EDFE45B2B40E7D12AAB8B6EE5731C38F64ABE
              9502642A4A9D052C0A6821A0CAAC54D056E0F54D7EAD02646AC9A24B9F652BDC
              931381209B723143444B20CC3C0ED738D56B07EF825458467176932D6733082A
              9CF69F7AD72980A627B0339F656B56BFF7F1B7E38357EFF65AE1B3BDBEFE9BE7
              F1DD3FBF50417EFFBB8429C783E8097CE3676D85C15B41BE520AD1E2421CDBAC
              1121433F3772FC7B0215F74A561778509CF95D09F9C3E90CDACE9EC083658417
              5F3FAF252B8ADC1FAE6503F94DF18EA44A7E57BAF2C79EC0CAC933DBF5047EEE
              C1C74A1FCB06015FA07962A77DBC4199FDEDED090CE4A2D8750519F8F7F00D19
              AFD79EC0DB6EFBE8C700A6C9641A1111DF71C7275C7DA0383C3C9C31ABF5B37F
              24787777772E845029DEBDF7DEBB6FE5029811C865A9D55A0AFFA2CC10F1EEBB
              EFBE3D17F939F0418BC5624A14E33CF4D0D97D987A022793F0273E8D17A92957
              4A61369BE5FD4A1080CA66956A5D40225C2E0977D260A50E16EF678EF2B3E283
              99319D4E13AF46482C81A92790EC7CB2663029CB41531004F57E5EB1C3CA9A78
              D7E2878CA794F2979F61316A2E734FA02FF94AC9A22C2084E5E4353D8195C26D
              D54C0F036F6FEF8C9032F2979F818FB5E5200841A8ED09BCFDF63B5A219F2858
              99201B8C8BD4ECAF023E2995B7FCAAC907986985A7B308A59E4097014DE43B61
              A516E0225CF969B49FCACA4B7E063E80D892546185C6D568E1638A4594348074
              55A4D5CA2AE452D995F59D4FDE80F7BCE9A425A6C24253E4D999CDBCBA8B5DF1
              EEFFDDB3F8E113FF352A5336D563662BF9C9AB5F847CEBF3E053E70129205EBE
              02E1DFDF069C9F95F8000841208C5C78294035F9E4A5B9502A5E5945F283BC59
              BDE6D40EAEBBE2847D797767D66EB9D801EFB29DA0DA22A496249FE79BE5478C
              E5FB1E877CEBF37985B8FC751CBDED3904BFBD09E23F57E5B08410B55C782800
              43CA32F942F891BFB777463CAA79B64E0693E4E10AB62F180D69AF8019D045E1
              2BF2F36D6175F28BAEFF3BA202F969DE262385E896BF60F6AB0F00E776577CD8
              7011EA7E701DF945B2842028C5C51F65ED0339970594577EE764758017EB2EEB
              0348947B028DF20B2596D7FDA32C0F0656BA4412CB77FC1393476F74E2C3C102
              E8C90F024AE6D5A0DC99B9D544FEE77FFC1866A1A89438456537C2E1D4BBB6DF
              04EFC5C365C97A25661FBAF2EE873EF4916A45BCFC357028ABC94F65F7A657B1
              23DCF8B05680B848A10B30DCC94FAE5C4F604CBEB97CFADC6B87753E353FE760
              0AD09117F99BC0CBD6F64DE69A83A8902A97C90701E2C491331F560AA0AF5009
              AF8A61062F570A6E72545C6C5635640D1C2FBBB16394E5C16C7D3F03AA9C8942
              4C017AED843327B50A504E2DE2F26443F27343362BCA1CD5660F83C5B30DBE5F
              DB05BD7A09D4650709F9B903474149F5999EB9BAB9026483C0F86FCEFDEE2008
              6A024537F2011CC0F304CE401D698A3221B611AF4EA6C1EFDF85E8D647C18273
              E48BA4778B5E3905F1E45B9CB8D1F604A61AB4065A2B40DB2B3FF581979EF9AA
              97704BE5D8F4E77892D5275E9D5CE58BBB087E7D13A2F73F09BE641E570C2771
              3E219E7D23C287AF074BB2F2FFC69EC0B4FEBC9E10D796133DC8CF0540AEE704
              6A575643B2FAC633C97625BF974E21FCE92D5057BD0E71E51C2405E8A5CB40E7
              4E242C59935FDD13A833FB36152517F2832080EF3981D5C2E596C9DA2C9E39FB
              CADBCDF0E52B8097B31F791D10AEEF098C27B256802EC82FE2D9F6041E37B3EF
              977DF95BE2E4BEDCC921A59EC0ACEF2712DE015F557F800E8F156E3406407229
              4E9EFBCF2EC54E2EBE87023E38F5E6432652AE658821E215E5E2223F3BF2150A
              5B0FFA9EC0F5B624796B9AA93F401B0C7CFB534F58550C3501A4EBDC868A9795
              8DABFC6C952B53C0ACEE094CB7253745FE3692D505DE3AFBEA86FCC2FC8CE704
              361A4CD71FA0C3BBFBEEBB9FB0882184C6072A00B8E1869B7C6292C1E299FA2B
              5A241FE8A227305B34CA56BC4C968488AEAFC34BB748533C9F1DBD6DC1D3EDB5
              34B3C4AA28EF95DFD7A604A9C9F259093AF26DF7A347BC2EF128A7003ABC524F
              A06B94593579FFEC61C46B0F8F56A97C159E774F6095B234D7DC11AF3D3CAEAD
              E3782B807EF2A265618C785DE37929C028DCE383E7AC00A3708F179E535368D5
              60CD029611AF4F3C6B0B30AEACE38967A500CC4AF3B8D128DCE38057AB00BA07
              1447E11E1F3CA302147B0346E11E2F3C6D4F603A481E34DD22168DF6A3CBBB5C
              235E1F78563D81C5ABC9C6046B5BBEC488D7039E654F60B7E437D9E21CF19AE1
              C1AE27B02DF28B0F28D288D73B9E754F601BE417351723DE80F02ADE1DCCABC3
              85DA9DFC8837203C534FA0B922380A77FBC987A927B04170310A77E078495758
              373D812359C3C7032CCE09BCEBAEBB46E15E44788DCE091C85BBFD788D7A025D
              06534AFD01C05F0D70C45CAE4C125104BF3368B6164F08F16E00EFDD8432353A
              28D271B0EF3DF8E083F7EBBEB8989E00B2C1BBF3CE3BBFE6AA00BE96C4FBA0C8
              B6CCD6487E194F29E5743C7C133E1CCF095C178AF2A945FD60BAEF47F2F5786E
              0AE0C787A705D0750BD91D4B3292EF86674760733E9C0E8AD4E595B683657147
              F2CD787616A0191F2D28C0B8F2BBC473B5C4BE7C782800192661B60055C278EA
              9E1F7D4121387DED3DAE798FA2A7E70741F1E03C393B294182EDF0D801AFC097
              B499DFF9009917408104CBD92512247E85FD2B1FD0DD566F010A47847AF0D128
              08F42C5050D54A50084E13E12E27B214431CCDC1D947B249404D664924A41CA6
              1D1FE0248EE660129919528CC7C81C64C565D9EBC6618638BA00160446B08AD0
              E2F9014AA90B55B3710D027D2FE33981ED5F3CAD3283D7DE23738BCE9AACC2CB
              1154382D1CC2C876B24BC80267CEDB22829AEC2077BA175B0A3D3BBFF4DEF42D
              E4ABCFDCB3A6B6AEDA9EC04EE8CF315CF08192011A325926B7A1C7CB4C38796B
              78323F55AF9CAE75000FF2AB7B02BBD4BCAA0088A502040D982C4BD3CB0CB19C
              975E7BA32653E7E3663BE4C1AD27B0AD4B298520A88A7E3566718864B149B98A
              F38BF164B8538821FA550022879EC0AE57FE4A39A40409DA4EB298B5788CA25B
              E2922BABBAA494D41509C97B2801D49C13D8410CB0FCC52F7E5921590928315C
              B2CCA91E44340765620FCEB825DD033600A0A02AEB0651A4A6FA14A33D3A8CE7
              047668012AF967A1064B56E5AF608688E649409A1CD74C041564E6576589D85C
              34EA8E07EAAE27D0DFA74940D186C85A9FDC6A4D5655401A2D4099A83EC6CBBB
              25AEB2448598254B7EEC86BBB200D44D4F6033E590008B5EC96293DBA8C0CBDE
              17E34D1CA27D652C1777C5436D4FE0ADB7DEEA1B5D1A65562F0B3550B20ADFAB
              647ED9A7A857F343A902595759D791AF1437B6C4F14324963961939EC094F8BA
              F73B9A70959471E163A36495AB716C5381D4CD4FF85420ABF746A4944BDF4250
              918F3A9135AA04EAB4CC4F712520A97BB290B52470202B8D492AE657AA405ABC
              BF43A9CABD11DF58CC870F6F05701DCC545FA04811256FE5EE94ACD093AC5499
              A032B796033E970A64B03C1FA2626FE4F4E9D3CEA560DFC5E8A500E97BE9B373
              F775597B7B67C4E38B730132FB5243234B448BCCEB4DD30AE4B4B602C91545AD
              E06801C8C85C1E77B6C47E7C386F07C7CD867949F93692AE7CA054C4811A2E59
              B96F09329C58562035EF0E8E623CAC5F07A3ED09B427DF8F0F9302FCBC7A2C0A
              34874849CB32CC3355792F582529DF40C9CAE1D96DEC702E1E59E3B145799C99
              FFC9CC3FAFE7BE111F7A0578E49147F64C152A9BDABE8DD9CFE249C52042FB64
              05AD92B526BFA6A2A7AB4006B2F0BED7586A5AF93DFCF0C3DF07F07D5BF935E1
              23B4246B171DF7C84931699FACF47F9A9255A94CD51548CE2AA75CE68F7A2142
              349D4643E8590C2D063B81B87BA43BF2C3A91C3259F1BB7EFD2A90815C26EE6C
              DDBF20C504CCC47D936F5480648770860D74C7B22226528325CB6C99B862073B
              9D9FE6DDC1E0B80BAA67F2B53D8119F277B0A1D6E8377C5A697675FB260B315E
              6DB38966BE8ACB96A9343FEE8D7C634F60F265B181530138ECCC67453269096B
              489667B9584F564500C935B8CC1072596A5E9134C95825B6EE63E888FCEA9EC0
              E4B3E26017BA0C582418427173B2D01159B68B3F8D494AD9C804A57707CBDEC8
              37F7046A069B771EAD4A65D8FEEE992CDBA24AEA96903DD235C1D35892BA173E
              77447E921A197A020B832D3693AA149E0B18185956B57DB9CCA7A8803920551B
              255F24E4E7665F714EE0EA9F96C5E681CE7C96E9B90066047251A86F6F982C63
              66C208A265E1BFD8BA08B521F267C5955FD91398FCD3D1C6C8CF5A0057B294CB
              93CC0DC8624305521E95DD924DFFC2E6CE4B3851B4A7A87977B0DC2CF9883746
              480C972C5D76C28C401D9502D24884FAC690623C5BF0011D91BFAB21DFDC13D8
              80FCE260D6A9A39480C8760527C265631EED401662F28B0FD54641E857DB874A
              94293F944CC9B7E90CE2F6E467E04364A20DAD5B2FF504363433CA277524A8E7
              58A9C732E48B12F9345160E94E960E0F099EEDB6ABCC3317C8A5D004A40A72DD
              1E5ED7C44202FF6A4B7E967C2C748BBBD413E8196014CD8C53EAF8FA373EF9E5
              025E9BA9E836E035929F251E3BED05F8E695559A36E20D132F6C487E51D3960D
              273FE26D182FF41C2CD4685AD460F2235E4F78A1C760812EAF6C30F911AF473C
              570B200A9A86B4A2E4798D783DE3858EDA966BB1F1CD1E46BCE1E0FD1FC605F8
              18C0C1A98F0000000049454E44AE426082}
            Stretch = True
          end
          object ComboSelecionarEstado: TComboBox
            Left = 171
            Top = 150
            Width = 238
            Height = 24
            Style = csDropDownList
            TabOrder = 0
          end
          object Button1: TButton
            Left = 420
            Top = 150
            Width = 75
            Height = 25
            Caption = '&Imprimir'
            TabOrder = 1
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 501
            Top = 150
            Width = 75
            Height = 25
            Caption = '&Cancelar'
            TabOrder = 2
            OnClick = Button2Click
          end
          object RadioGroup_Impressora: TRadioGroup
            Left = 140
            Top = 32
            Width = 437
            Height = 97
            Caption = '  Escolha uma Impressora  '
            ItemIndex = 0
            Items.Strings = (
              'Impressora Laser'
              'Impressora Matricial')
            TabOrder = 3
          end
        end
      end
    end
    inherited TabCadastro: TTabSheet
      inherited Panel2: TPanel
        Top = 175
        Width = 526
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 526
        Height = 169
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 871
        object Label1: TLabel
          Left = 83
          Top = 94
          Width = 74
          Height = 16
          Caption = 'C'#243'digo IBGE:'
        end
        object Label2: TLabel
          Left = 42
          Top = 33
          Width = 115
          Height = 16
          Caption = 'Unidade Federativa:'
        end
        object Label3: TLabel
          Left = 58
          Top = 63
          Width = 99
          Height = 16
          Caption = 'Nome da Cidade:'
        end
        object Label5: TLabel
          Left = 129
          Top = 126
          Width = 28
          Height = 16
          Caption = 'Pa'#237's:'
        end
        object DBEdit_NM_CID: TDBEdit
          Left = 163
          Top = 60
          Width = 342
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NM_CID'
          DataSource = DSpadrao
          TabOrder = 0
        end
        object DBEdit_CD_CID_IBG: TDBEdit
          Left = 163
          Top = 91
          Width = 121
          Height = 24
          DataField = 'CD_CID_IBG'
          DataSource = DSpadrao
          TabOrder = 1
          OnKeyPress = DBEdit1KeyPress
        end
        object DBLookup_ID_UF: TDBLookupComboBox
          Left = 163
          Top = 29
          Width = 342
          Height = 24
          DataField = 'ID_UF'
          DataSource = DSpadrao
          KeyField = 'ID'
          ListField = 'NM_UNF'
          ListSource = DSUnidadeFederativa
          TabOrder = 2
        end
        object DBLookup_CD_PAI: TDBLookupComboBox
          Left = 163
          Top = 121
          Width = 342
          Height = 24
          DataField = 'CD_PAI'
          DataSource = DSpadrao
          KeyField = 'CD_PAI'
          ListField = 'NM_PAI'
          ListSource = DS_PAISES
          TabOrder = 3
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 24
    Top = 120
  end
  inherited ActionList1: TActionList
    Left = 224
    Top = 0
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSCidades
    Left = 72
    Top = 96
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
    StoredProcName = 'SP_GEN_DB_CIDADES_ID'
    Left = 252
    Top = 78
  end
  object PopupMenu1: TPopupMenu
    Left = 364
    Top = 51
    object ImpressoraLaser1: TMenuItem
      Caption = '&Imprimir'
      OnClick = ImpressoraLaser1Click
    end
    object ExportarPDF1: TMenuItem
      Caption = 'Exportar &PDF'
      OnClick = ExportarPDF1Click
    end
    object ExportarExcel1: TMenuItem
      Caption = 'Exportar &Excel'
      OnClick = ExportarExcel1Click
    end
  end
  object DSUnidadeFederativa: TDataSource
    DataSet = DMcadastro.CDSUFederativa
    Left = 28
    Top = 43
  end
  object FReport_Cidades: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43026.680012407400000000
    ReportOptions.LastChange = 43059.631164166700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FReport_CidadesGetValue
    OnClosePreview = FReport_CidadesClosePreview
    Left = 264
    Top = 208
    Datasets = <
      item
        DataSet = frxDBDataset_Cidades
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' user'
        Value = Null
      end
      item
        Name = 'rUsuario'
        Value = Null
      end
      item
        Name = 'rEmpresa'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 40.574812910000000000
        Top = 120.944960000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo4: TfrxMemoView
          Top = 9.999999999999986000
          Width = 68.031540000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UF')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 66.141746930000000000
          Top = 9.999999999999986000
          Width = 510.236257090000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME DA CIDADE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 574.488560000000000000
          Top = 9.826771653543304000
          Width = 143.622140000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO IBGE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset_Cidades
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1UF_CID: TfrxMemoView
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'UF_CID'
          DataSet = frxDBDataset_Cidades
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."UF_CID"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1NM_CID: TfrxMemoView
          Left = 64.252010000000000000
          Width = 506.457020000000000000
          Height = 18.897650000000000000
          DataField = 'NM_CID'
          DataSet = frxDBDataset_Cidades
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CID"]')
          ParentFont = False
          WordWrap = False
        end
        object frxDBDataset1CD_CID_IBG: TfrxMemoView
          Align = baRight
          Left = 619.842919999999900000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'CD_CID_IBG'
          DataSet = frxDBDataset_Cidades
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CID_IBG"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          Top = 7.000000000000058000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              'RMM Sistemas e Consultoria Ltda     -     http://www.rmmconsulto' +
              'ria.com.br ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 6.000000000000058000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object rUsuario: TfrxMemoView
          Left = 430.866420000000000000
          Top = 7.000012200000072000
          Width = 219.212740000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[rUsuario]')
          ParentFont = False
        end
        object Time1: TfrxMemoView
          Left = 650.079160000000000000
          Top = 7.000012200000072000
          Width = 68.031540000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 41.574803149606300000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baCenter
          Left = 224.882035000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '(RELAT'#211'RIO DE CIDADES IBGE)')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baRight
          Left = 608.504330000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina:')
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PARANA FERRAGENS LTDA')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Align = baRight
          Left = 661.417750000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 536.693260000000000000
          Top = 21.677180000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Align = baRight
          Left = 627.401980000000000000
          Top = 21.677180000000000000
          Width = 90.708720000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Top = 21.677180000000000000
          Width = 241.889920000000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8W = (
            'Evolu'#231#227'o Sistemas - Vers'#227'o 3.2.7')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset_Cidades: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'CD_PAI=CD_PAI'
      'UF_CID=UF_CID'
      'NM_CID=NM_CID'
      'CD_CID_IBG=CD_CID_IBG'
      'CD_USU=CD_USU'
      'ID_VER_ATU=ID_VER_ATU')
    DataSet = DMcadastro.CDSCidades
    BCDToCurrency = False
    Left = 335
    Top = 199
  end
  object frxPDFExport1: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 92
    Top = 43
  end
  object frxXLSExport1: TfrxXLSExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = True
    ExportEMF = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 420
    Top = 203
  end
  object FR_Cidades_Matricial: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'pmdefault'
    PrintOptions.PrintMode = pmSplit
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43034.472662419000000000
    ReportOptions.LastChange = 43056.592934004600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = FR_Cidades_MatricialGetValue
    Left = 282
    Top = 65535
    Datasets = <
      item
        DataSet = frxDBDataset_Cidades
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' variaveis'
        Value = Null
      end
      item
        Name = 'musuario'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 248.919839239270500000
      PaperHeight = 292.364394514661800000
      PaperSize = 256
      FontStyle = [fsxCondensed]
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 34.000000000000000000
        Top = 17.000000000000000000
        Width = 940.800000000000000000
        object Date: TfrxDMPMemoView
          Left = 691.200000000000000000
          Top = 17.000000000000000000
          Width = 124.800000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            '[Date]')
          TruncOutboundText = False
        end
        object Time: TfrxDMPMemoView
          Left = 835.200000000000000000
          Top = 17.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          TruncOutboundText = False
        end
        object Page: TfrxDMPMemoView
          Left = 873.600000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page#]')
          TruncOutboundText = False
        end
        object DMPMemo1: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 211.200000000000000000
          Height = 17.000000000000000000
          Memo.UTF8W = (
            'PARANA FERRAGENS LTDA (MATRIZ)')
          TruncOutboundText = False
        end
        object DMPMemo3: TfrxDMPMemoView
          Left = 787.200000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          DisplayFormat.FormatStr = '000'
          HAlign = haRight
          Memo.UTF8W = (
            'PAGINA:')
          TruncOutboundText = False
        end
        object DMPMemo4: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 336.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsx12cpi]
          Memo.UTF8W = (
            'Evolucao Sistemas - Versao 1.0.01')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo2: TfrxDMPMemoView
          Align = baCenter
          Left = 326.400000000000000000
          Width = 278.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx15cpi]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELATORIO CIDADES IBGE')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 153.000000000000000000
        Width = 940.800000000000000000
        DataSet = frxDBDataset_Cidades
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1UF_CID: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 57.600000000000000000
          Height = 17.000000000000000000
          DataField = 'UF_CID'
          DataSet = frxDBDataset_Cidades
          DataSetName = 'frxDBDataset1'
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."UF_CID"]')
          TruncOutboundText = False
        end
        object frxDBDataset1NM_CID: TfrxDMPMemoView
          Left = 76.800000000000000000
          Width = 662.400000000000000000
          Height = 17.000000000000000000
          DataField = 'NM_CID'
          DataSet = frxDBDataset_Cidades
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."NM_CID"]')
          TruncOutboundText = False
        end
        object frxDBDataset1CD_CID_IBG: TfrxDMPMemoView
          Left = 758.400000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          DataField = 'CD_CID_IBG'
          DataSet = frxDBDataset_Cidades
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."CD_CID_IBG"]')
          TruncOutboundText = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 51.000000000000000000
        Top = 85.000000000000000000
        Width = 940.800000000000000000
        object DMPMemo5: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UF')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 76.800000000000000000
          Top = 17.000000000000000000
          Width = 672.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'NOME DA CIDADE')
          ParentFont = False
          TruncOutboundText = False
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 758.400000000000000000
          Top = 17.000000000000000000
          Width = 182.400000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxBold, fsxCondensed]
          Frame.Style = fsDot
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'CODIGO IBGE')
          ParentFont = False
          TruncOutboundText = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 17.000000000000000000
        Top = 204.000000000000000000
        Width = 940.800000000000000000
        object DMPMemo11: TfrxDMPMemoView
          Align = baLeft
          Width = 576.000000000000000000
          Height = 17.000000000000000000
          FontStyle = [fsxCondensed, fsx12cpi]
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'Evolucao Sistemas - Fone: (33) 9916-2272')
          ParentFont = False
          TruncOutboundText = False
        end
        object musuario: TfrxDMPMemoView
          Left = 585.600000000000000000
          Width = 345.600000000000000000
          Height = 17.000000000000000000
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[musuario]')
          TruncOutboundText = False
        end
      end
    end
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 98
    Top = 151
  end
  object DS_PAISES: TDataSource
    DataSet = DMcadastro.CDSPaises
    Left = 156
    Top = 61
  end
end
