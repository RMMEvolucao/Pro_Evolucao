inherited FormCadPlanoPagamento: TFormCadPlanoPagamento
  Caption = 'FormCadPlanoPagamento'
  ClientHeight = 399
  ClientWidth = 1198
  ExplicitWidth = 1204
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 16
  inherited PageControl1: TPageControl
    Width = 1198
    Height = 399
    ExplicitWidth = 645
    ExplicitHeight = 271
    inherited TabConsulta: TTabSheet
      OnShow = TabConsultaShow
      ExplicitWidth = 637
      ExplicitHeight = 240
      inherited PanelConsulta: TPanel
        Width = 1190
        ExplicitWidth = 637
      end
      inherited Panel1: TPanel
        Width = 1190
        ExplicitWidth = 637
        inherited btnFechar: TSpeedButton
          Left = 1129
          ExplicitLeft = 576
        end
      end
      inherited DBGrid1: TDBGrid
        Width = 1190
        Height = 255
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
            FieldName = 'NM_PLN_PGT'
            Title.Caption = 'Nome do plano de pagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PC_RJT'
            Title.Caption = '%Reajuste'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PZ_PLN_PGT'
            Title.Caption = 'Prazo de pagamento'
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
      ExplicitWidth = 637
      ExplicitHeight = 240
      inherited Panel2: TPanel
        Top = 314
        Width = 1190
        ExplicitTop = 186
        ExplicitWidth = 637
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 0
        Width = 630
        Height = 73
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 12
          Width = 169
          Height = 16
          Caption = 'C'#243'digo  do plano pagamento:'
        end
        object Label2: TLabel
          Left = 8
          Top = 38
          Width = 177
          Height = 16
          Caption = 'Nome do plano de pagamento:'
        end
        object DBEdit_ID: TDBEdit
          Left = 190
          Top = 9
          Width = 58
          Height = 24
          DataField = 'ID'
          DataSource = DSpadrao
          Enabled = False
          TabOrder = 0
        end
        object DBEdit_NM_PLN_PGT: TDBEdit
          Left = 190
          Top = 35
          Width = 421
          Height = 24
          DataField = 'NM_PLN_PGT'
          DataSource = DSpadrao
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 79
        Width = 630
        Height = 106
        TabOrder = 2
        object Label3: TLabel
          Left = 62
          Top = 12
          Width = 123
          Height = 16
          Caption = 'Prazo do pagamento:'
        end
        object Edit1a3: TEdit
          Left = 190
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 0
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit4a6: TEdit
          Left = 233
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 1
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit7a9: TEdit
          Left = 276
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 2
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit10a12: TEdit
          Left = 319
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 3
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit13a15: TEdit
          Left = 361
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 4
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit16a18: TEdit
          Left = 404
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 5
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit22a24: TEdit
          Left = 489
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 7
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit28a30: TEdit
          Left = 575
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 9
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit25a27: TEdit
          Left = 532
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 8
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit19a21: TEdit
          Left = 447
          Top = 9
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 6
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit31a33: TEdit
          Left = 190
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 10
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit49a51: TEdit
          Left = 447
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 16
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit34a36: TEdit
          Left = 233
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 11
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit37a39: TEdit
          Left = 276
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 12
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit40a42: TEdit
          Left = 319
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 13
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit43a45: TEdit
          Left = 361
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 14
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit46a48: TEdit
          Left = 404
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 15
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit52a54: TEdit
          Left = 489
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 17
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit58a60: TEdit
          Left = 575
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 19
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit55a57: TEdit
          Left = 532
          Top = 39
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 18
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit61a63: TEdit
          Left = 190
          Top = 67
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 20
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit64a66: TEdit
          Left = 233
          Top = 67
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 21
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit67a69: TEdit
          Left = 276
          Top = 67
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 22
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit70a72: TEdit
          Left = 319
          Top = 67
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 23
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit73a75: TEdit
          Left = 361
          Top = 67
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 24
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit76a78: TEdit
          Left = 404
          Top = 67
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 25
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit79a81: TEdit
          Left = 447
          Top = 67
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 26
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit82a84: TEdit
          Left = 489
          Top = 67
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 27
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit85a87: TEdit
          Left = 532
          Top = 67
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 28
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
        object Edit88a90: TEdit
          Left = 575
          Top = 68
          Width = 36
          Height = 24
          MaxLength = 3
          TabOrder = 29
          OnExit = FormEdits
          OnKeyPress = verificaTeclado
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 432
    Top = 0
  end
  inherited ActionList1: TActionList
    Left = 440
    Top = 48
  end
  inherited DSpadrao: TDataSource
    DataSet = DMcadastro.CDSPLNPGT
    Left = 488
    Top = 8
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
    StoredProcName = 'SP_GEN_DB_PLNPGT_ID'
    Left = 348
    Top = 14
  end
end
