unit uFrmChqPdt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  Vcl.DBCtrls, ACBrBase,StrUtils, ACBrValidador, MoneyEdit, dbmnyed,
  cxCurrencyEdit, frxClass, frxDBSet, dxCore,DateUtils, cxDateUtils, Vcl.Menus,
  Vcl.ToolWin;

type
  TFormChqPdt = class(TFormCadPadrao)
    GroupBoxGeral: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit_DS_BDA: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit_NO_AGC: TDBEdit;
    DBEdit_NO_CTA: TDBEdit;
    DBEdit_NO_CHQ: TDBEdit;
    cxDBEdit_DT_EMS: TcxDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dsCobranca: TDataSource;
    dscliente: TDataSource;
    GroupBox3: TGroupBox;
    DBCombo_SN_TCR: TDBComboBox;
    DBEdit_NM_EMT: TDBEdit;
    DBEdit_NM_CID_EMT: TDBEdit;
    DBEdit_UF_CID_EMT: TDBEdit;
    DBEdit_NO_CNP_CPF_Emitente: TDBEdit;
    GroupBox4: TGroupBox;
    cxDBDateEdit_DT_VCT: TcxDBDateEdit;
    cxDBDateEdit_DT_VCT_1: TcxDBDateEdit;
    cxDBDateEdit_DT_VCT_2: TcxDBDateEdit;
    cxDBDateEdit_DT_VCT_3: TcxDBDateEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox5: TGroupBox;
    DBEdit_NM_CLI: TDBEdit;
    DBEdit_NM_CID: TDBEdit;
    DBEdit_UF_CID: TDBEdit;
    DBEdit_NO_CNP_CPF_CLI: TDBEdit;
    DBEdit_NO_FON: TDBEdit;
    DBEdit_NO_CEL: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox6: TGroupBox;
    DBEdit_DS_OBS_AUX: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    cxDBDateEdit_DT_INC: TcxDBDateEdit;
    Label22: TLabel;
    EdCodbanco: TEdit;
    Dbedit_NM_LOC_COB: TDBEdit;
    ACBrValidador1: TACBrValidador;
    DBEdit_ID: TDBEdit;
    DBEdit_VR_CHQ: TDBEdit;
    Label23: TLabel;
    FR_ChqPdt: TfrxReport;
    frxDBChqPdt: TfrxDBDataset;
    PageTpCheques: TPageControl;
    TabPreDatado: TTabSheet;
    TabPreDevolvidos: TTabSheet;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    GroupBox7: TGroupBox;
    Label24: TLabel;
    DBEdit_DT_DVL_1: TDBEdit;
    Label25: TLabel;
    DBEdit_DT_DVL_2: TDBEdit;
    DBEdit_CD_ALI_2: TDBEdit;
    Label26: TLabel;
    CB_carteira: TDBComboBox;
    CB_serasa: TDBComboBox;
    Label27: TLabel;
    GroupBox8: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit_DT_VCT: TDBEdit;
    DBEdit_DT_VCT_1: TDBEdit;
    Label30: TLabel;
    DBEdit_DT_VCT_2: TDBEdit;
    DBEdit_DT_VCT_3: TDBEdit;
    Label31: TLabel;
    GroupBox9: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit_DS_OBS_AUXV: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit_DT_INCV: TDBEdit;
    Label34: TLabel;
    GroupBox10: TGroupBox;
    LB_FILTRO: TLabel;
    GroupBox11: TGroupBox;
    CB_TipoData: TComboBox;
    Label36: TLabel;
    DT_INI: TcxDateEdit;
    Label37: TLabel;
    DT_FIM: TcxDateEdit;
    bBtnCheques: TSpeedButton;
    pop: TPopupMenu;
    ChequeBaixado1: TMenuItem;
    ransferirparaaberto1: TMenuItem;
    ransferirparachequedevolvido1: TMenuItem;
    ransferirparachequeprdevolvido1: TMenuItem;
    ransferirparadevoldidobaixado1: TMenuItem;
    importarchquedevolvidobaixado1: TMenuItem;
    Label35: TLabel;
    CB_ST_CHQ: TComboBox;
    LbDeposito: TLabel;
    DBEdit_DT_DPS: TDBEdit;
    BtnCheques: TToolButton;
    ToolButton1: TToolButton;
    DBEdit_CD_ALI_1: TDBEdit;
    BtnConsultaEmitente: TSpeedButton;
    procedure DBEdit_ID_CLIENTEKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_ID_BANCOKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_NO_CTAKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_NO_CHQKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_DS_BDAKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodbancoExit(Sender: TObject);
    procedure EdCodbancoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit_NO_CTAEnter(Sender: TObject);
    procedure DBEdit_NO_CTAExit(Sender: TObject);
    procedure DBEdit_NO_CNP_CPF_EmitenteKeyPress(Sender: TObject; var Key: Char);
    procedure BtnConsultaEmitenteClick(Sender: TObject);
    procedure DBEdit_IDExit(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure DBEdit_IDEnter(Sender: TObject);
    procedure DBEdit_DS_BDAExit(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure CB_ST_CHQSelect(Sender: TObject);
    procedure cbConsultaSelect(Sender: TObject);
    procedure contacorrente(sender: tobject);
    procedure TipoCheque;
    procedure ConverterTipoCheque;
    procedure DataMes;
    procedure Consultas(sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure MenuTransferencia;
    procedure ransferirparaaberto1Click(Sender: TObject);
    procedure ChequeBaixado1Click(Sender: TObject);
    procedure ransferirparachequedevolvido1Click(Sender: TObject);
    procedure ransferirparadevoldidobaixado1Click(Sender: TObject);
    procedure ransferirparachequeprdevolvido1Click(Sender: TObject);
    procedure BtnChequesClick(Sender: TObject);
    procedure AlimentaCampsEmitenteCliente;
    procedure DBCombo_SN_TCRExit(Sender: TObject);
    procedure AcImprimirExecute(Sender: TObject);
  private
    procedure ConsultaEmitente;
    procedure ConsultaBancoAgenciaContaNoCheque;
    procedure DestroiComponentes;
    procedure ConsultaBanda;
    procedure ConsultaBancoCheque;
    procedure ConsultaCliente;
    procedure VerificaCHQTerceiro;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChqPdt: TFormChqPdt;
  pCD_BCO, pNO_AGC, pNO_CTA, pNO_CHQ : String;

  Ed_Emi : TEdit; {Componentes consulta Emitente}
  Lb_Emi : TLabel; {Componentes consulta Emitente}
  Bt_Consulta : TButton; {Componentes consulta Emitente}

  Ed_banco,Ed_Age,Ed_Conta,Ed_No_Chq : TEdit; {Componentes consulta banco/agencia/conta/cheque}
  LB_banco,LB_Age,LB_Conta,LB_No_Chq : TLabel; {Componentes consulta banco/agencia/conta/cheque}
  Bt_Consulta1: Tbutton;    {Componentes consulta banco/agencia/conta/cheque}

  Ed_banda : TEdit; {Componentes consulta Banda}
  LB_Banda : TLabel;{Componentes consulta Banda}
  Bt_Consulta2 : TButton;{Componentes consulta Banda}

  Bt_Consulta3 : Tbutton; {Consulta Banco N° cheque}

  lb_CLI : TLabel; {Cliente}
  Ed_cli : TEdit;  {Cliente}
  Bt_Consulta4 : Tbutton; {Cliente}

  STCheque : string;



implementation

{$R *.dfm}

uses UDmCadastro, UFrmFornecedor, uFrmClientes, UFrmPrincipal,
  UfrmTransChqBxparaPD, UfrmTransChqPDparaBX, UfrmTransChqBxparaDV,
  UFrmTransDVparaDB, UFuncoes, UFrmTransPPparaDV, UFrmRlt_Chq_PD,
  UfrmRlt_Chq_BX;

procedure TFormChqPdt.DBEdit_IDEnter(Sender: TObject);
begin
  inherited;
  DBEdit_ID.Text :=  AnsiReplaceStr(DSpadrao.DataSet.FieldByName('id_cliente').AsString,'.','');

end;

procedure TFormChqPdt.DBEdit_IDExit(Sender: TObject);
begin
    inherited;
  AlimentaCampsEmitenteCliente;
end;

procedure TFormChqPdt.DataMes;
begin
 DT_INI.Date :=  StartOfTheMonth(date);
 DT_FIM.Date :=  endOfTheMonth(date);

end;

procedure TFormChqPdt.DBCombo_SN_TCRExit(Sender: TObject);
begin
  inherited;
VerificaCHQTerceiro;
end;

procedure TFormChqPdt.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormChqPdt.DBEdit_NO_CNP_CPF_EmitenteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0;
end;

procedure TFormChqPdt.DBEdit_DS_BDAExit(Sender: TObject);
begin
  inherited;
if (DSpadrao.DataSet.State in [dsEdit,dsInsert]) and (Length(DSpadrao.DataSet.FieldByName('DS_BDA').AsString) = 30) then
 begin
 EdCodbanco.Text := copy(DBEdit_DS_BDA.Text, 1, 3); //codigo banco

 pNO_AGC := Copy(DBEdit_DS_BDA.Text, 4, 7);         //Agencia
 dmCadastro.CDSChqPdt.FieldByName('NO_AGC').AsString := pNO_AGC;

 pNO_CTA := Copy(DBEdit_DS_BDA.Text, 23, 29);
 dmCadastro.CDSChqPdt.FieldByName('NO_CTA').AsString := pNO_CTA; // numero Conta

 pNO_CHQ := copy(DBEdit_DS_BDA.Text, 12, 17);
 dmCadastro.CDSChqPdt.FieldByName('NO_CHQ').AsString := pNO_CHQ; // numero cheque

 EdCodbanco.OnExit(sender);
 end;
end;

procedure TFormChqPdt.DBEdit_DS_BDAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormChqPdt.DBEdit_ID_BANCOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormChqPdt.DBEdit_ID_CLIENTEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormChqPdt.DBEdit_NO_CHQKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormChqPdt.DBEdit_NO_CTAEnter(Sender: TObject);
begin
  inherited;
DMcadastro.CDSChqPdt.FieldByName('NO_CTA').EditMask := '';
end;

procedure TFormChqPdt.DBEdit_NO_CTAExit(Sender: TObject);
begin
  inherited;
contacorrente(sender);
end;

procedure TFormChqPdt.DBEdit_NO_CTAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormChqPdt.EdCodbancoExit(Sender: TObject);
begin
  inherited;
if (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
    if (EdCodbanco.Text <> '')   then
  begin
     DsCobranca.Enabled := true;
    if not DsCobranca.DataSet.Locate('CD_LOC_COB',EdCodbanco.Text,[]) then
        begin
        ShowMessage('Código de banco não encontrado!');
        DsCobranca.Enabled := false;
        DBEdit_DS_BDA.SetFocus;
        EdCodbanco.Clear;
        abort;
        end
        else
        dspadrao.DataSet.FieldByName('id_banco').AsInteger := DMCadastro.CDSLocalCobrancaID.AsInteger;
  end  else begin
     dspadrao.DataSet.FieldByName('id_banco').Clear;
     DsCobranca.Enabled := false;
  end;
end;

procedure TFormChqPdt.EdCodbancoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormChqPdt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 DsCobranca.DataSet.Close;
 DSPadrao.DataSet.Close;
 DSCliente.DataSet.Close;
 DestroiComponentes;
end;

procedure TFormChqPdt.FormCreate(Sender: TObject);
begin
  inherited;
 DsCobranca.DataSet.Open;
 //DSPadrao.DataSet.Open;
 DSCliente.DataSet.Open;
end;

procedure TFormChqPdt.FormShow(Sender: TObject);
begin
 if STCheque = 'PD' then
    begin
    btnIncluir.Enabled := true;
    end else
    btnIncluir.Enabled := false;

 DMcadastro.CDSChqPdt.close;
 DMcadastro.SQLChqPdt.CommandText := 'SELECT db_chqpdt.*,db_cliente.nm_cli,db_cliente.id AS id_cliente,db_cliente.no_cnp_cpf, '+
                                     'db_cliente.no_cel,db_cep.nm_cid,db_cep.uf_cid,db_cliente.no_fon,db_vendedor.nm_ven,db_localcobranca.no_bco,db_localcobranca.nm_loc_cob '+
                                     'FROM db_chqpdt ' +
                                     'INNER JOIN db_cliente ON db_cliente.id = db_chqpdt.id_cliente '+
                                     'INNER JOIN db_cep ON db_cep.id =  db_cliente.id_cep '+
                                     'LEFT OUTER  JOIN db_vendedor ON db_vendedor.id = db_chqpdt.id_vendedor '+
                                     'INNER JOIN db_localcobranca ON db_localcobranca.id =  db_chqpdt.id_banco '+
                                     'where db_chqpdt.id = 0 ';
 DMcadastro.CDSChqPdt.Open;
  inherited;
cxDBEdit_DT_EMS.Date := date;
DataMes;
cbConsulta.OnSelect(SENDER);
MenuTransferencia;
//DSpadrao.DataSet.Close;

end;


procedure TFormChqPdt.MenuTransferencia;
begin
  if STCheque = 'PD' then
    begin
      pop.Items.Items[0].Enabled := true;
      pop.Items.Items[1].Enabled := false;
      pop.Items.Items[2].Enabled := false;
      pop.Items.Items[3].Enabled := false;
      pop.Items.Items[4].Enabled := false;
      pop.Items.Items[5].Enabled := false;
    end;

 if STCheque = 'BX' then
    begin
      pop.Items.Items[0].Enabled := false;
      pop.Items.Items[1].Enabled := true;
      pop.Items.Items[2].Enabled := true;
      pop.Items.Items[3].Enabled := true;
      pop.Items.Items[4].Enabled := false;
      pop.Items.Items[5].Enabled := false;
    end;

 if STCheque = 'PP' then
    begin
      pop.Items.Items[0].Enabled := false;
      pop.Items.Items[1].Enabled := false;
      pop.Items.Items[2].Enabled := true;
      pop.Items.Items[3].Enabled := false;
      pop.Items.Items[4].Enabled := false;
      pop.Items.Items[5].Enabled := false;
    end;

  if STCheque = 'DV' then
   begin
      pop.Items.Items[0].Enabled := false;
      pop.Items.Items[1].Enabled := false;
      pop.Items.Items[2].Enabled := false;
      pop.Items.Items[3].Enabled := false;
      pop.Items.Items[4].Enabled := true;
      pop.Items.Items[5].Enabled := true;
   end;

    if STCheque = 'DB' then
   begin
      pop.Items.Items[0].Enabled := false;
      pop.Items.Items[1].Enabled := false;
      pop.Items.Items[2].Enabled := false;
      pop.Items.Items[3].Enabled := true;
      pop.Items.Items[4].Enabled := false;
      pop.Items.Items[5].Enabled := false;
   end;

end;

procedure TFormChqPdt.ransferirparaaberto1Click(Sender: TObject);
begin
  inherited;
   if DMcadastro.CDSChqPdt.IsEmpty =  false then
   begin
      try
       //FormPrincipal.AbreFormulario(TFormTransBXparaPD,FormTransBXparaPD);
       Application.CreateForm(TFormTransBXparaPD,FormTransBXparaPD);
       FormTransBXparaPD.ShowModal;
      finally
        FreeAndNil(FormTransBXparaPD);
      end;

   end else
     begin
     ShowMessage('Favor selecionar um cheque !!');
     abort;
     end;
end;

procedure TFormChqPdt.ransferirparachequedevolvido1Click(Sender: TObject);
begin
  inherited;
   //FormPrincipal.AbreFormulario(TFormTransBXparaDV,FormTransBXparaDV);
   if DMcadastro.CDSChqPdt.IsEmpty = false then
   begin
       try
       Application.CreateForm(TFormTransBXparaDV,FormTransBXparaDV);
       FormTransBXparaDV.ShowModal;
       finally
       FreeAndNil(FormTransBXparaDV);
       end;
   end else
       begin
        ShowMessage('Favor selecionar um cheque !!');
        abort;
       end;
end;

procedure TFormChqPdt.ransferirparachequeprdevolvido1Click(Sender: TObject);
begin
  inherited;
  if DMcadastro.CDSChqPdt.IsEmpty =  false then
   begin
       try
        Application.CreateForm(TFormTransPPparaDV,FormTransPPparaDV);
        FormTransPPparaDV.ShowModal;
       finally
        freeandnil(FormTransPPparaDV);
       end;
//   FormPrincipal.AbreFormulario(TFormTransPPparaDV,FormTransPPparaDV);
   end else
     begin
     ShowMessage('Favor selecionar um cheque !!');
     abort;
     end;
end;

procedure TFormChqPdt.ransferirparadevoldidobaixado1Click(Sender: TObject);
begin
  inherited;
  if DMcadastro.CDSChqPdt.IsEmpty =  false then
   begin
   //FormPrincipal.AbreFormulario(TFormTransDVparaDB,FormTransDVparaDB);
    try
      Application.CreateForm(TFormTransDVparaDB,FormTransDVparaDB);
      FormTransDVparaDB.ShowModal;
    finally
      FreeAndNil(FormTransDVparaDB);
    end;

   end else
     begin
     ShowMessage('Favor selecionar um cheque !!');
     abort;
     end;

end;

procedure TFormChqPdt.TabCadastroShow(Sender: TObject);
begin
  inherited;
  ConverterTipoCheque;

   case AnsiIndexStr(STCheque,['PD','BX','PP','DV','DB']) of
     0:CB_ST_CHQ.ItemIndex := 0;
     1:CB_ST_CHQ.ItemIndex := 1;
     2:CB_ST_CHQ.ItemIndex := 2;
     3:CB_ST_CHQ.ItemIndex := 3;
     4:CB_ST_CHQ.ItemIndex := 4;
   end;


  if (CB_ST_CHQ.ItemIndex in [0,1]) then

      begin
      TabPreDatado.TabVisible     :=  true;
      TabPreDevolvidos.TabVisible :=  false;
      end else

      begin
      TabPreDatado.TabVisible     :=  false;
      TabPreDevolvidos.TabVisible :=  true;
      PageControl2.ActivePage     :=  TabSheet2;
      end;

  if STCheque = 'PD' then
     begin
     LbDeposito.Visible           := false;
     DBEdit_DT_DPS.Visible        := false;
     end else
     begin
     LbDeposito.Visible           := true;
     DBEdit_DT_DPS.Visible        := true;
     end;


end;



procedure TFormChqPdt.TabConsultaShow(Sender: TObject);
begin
  inherited;
PanelConsulta.Visible := true;
end;


procedure TFormChqPdt.BtnChequesClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
      vPonto := BtnCheques.ClientToScreen(Point(0, BtnCheques.Height));
      pop.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormChqPdt.BtnConsultaEmitenteClick(Sender: TObject);
begin
  inherited;
   if DMcadastro.CDSChqPdtSN_TCR.AsString = 'NAO'  then
    begin
       try
         Application.CreateForm(TFormClientes,FormClientes);
         formclientes.ShowModal;
       finally
         FreeAndNil(FormClientes);
       end;
    end;

end;

procedure TFormChqPdt.cbConsultaSelect(Sender: TObject);
 begin
   // lembrar de destruir os componentes criados
  inherited;
  DestroiComponentes;

   case cbConsulta.ItemIndex of
   0: ConsultaEmitente;
   1: ConsultaBancoAgenciaContaNoCheque;
   2: ConsultaBanda;
   3: ConsultaBancoCheque;
   4: ConsultaCliente;
   end;
 end;






procedure TFormChqPdt.CB_ST_CHQSelect(Sender: TObject);
begin
  inherited;
  TipoCheque;
end;

procedure TFormChqPdt.ChequeBaixado1Click(Sender: TObject);
begin
  inherited;
  if DMcadastro.CDSChqPdt.IsEmpty = false then
  begin
      try
       Application.CreateForm(TFormTransPDparaBX,FormTransPDparaBX);
       FormTransPDparaBX.ShowModal;
      finally
       FreeAndNil(FormTransPDparaBX);
     end;
  end else
   begin
     ShowMessage('Favor selecionar um cheque !!');
     abort;
   end;


end;

procedure TFormChqPdt.Consultas(sender : TObject);
begin
  DMcadastro.CDSChqPdt.Close;
  DMcadastro.sqlChqPdt.CommandText := '';
  DMcadastro.sqlChqPdt.CommandText := 'SELECT db_chqpdt.*,db_cliente.nm_cli,db_cliente.id AS id_cliente, '+   //ok
                                         'db_cliente.no_cnp_cpf,db_cliente.no_cel,db_cep.nm_cid,db_cep.uf_cid, '+
                                         'db_cliente.no_fon,db_vendedor.nm_ven,db_localcobranca.no_bco,db_localcobranca.nm_loc_cob FROM db_chqpdt '+
                                         'INNER JOIN db_cliente ON db_cliente.id = db_chqpdt.id_cliente '+
                                         'INNER JOIN db_cep ON db_cep.id =  db_cliente.id_cep '+
                                         'LEFT OUTER  JOIN db_vendedor ON db_vendedor.id = db_chqpdt.id_vendedor '+
                                         'INNER JOIN db_localcobranca ON db_localcobranca.id =  db_chqpdt.id_banco '+
                                         'AND db_chqpdt.st_chq =:pTipo '+
                                         'AND (db_chqpdt.id_empresa =:PEmpresa OR db_chqpdt.id_custodia =:PCustodia) ';
     case CB_TipoData.ItemIndex of
     0 : DMcadastro.sqlChqPdt.CommandText := DMcadastro.sqlChqPdt.CommandText + ' WHERE db_chqpdt.dt_vct    BETWEEN :pDT_INI AND :pDT_FIM ';
     1 : DMcadastro.sqlChqPdt.CommandText := DMcadastro.sqlChqPdt.CommandText + ' WHERE db_chqpdt.dt_inc    BETWEEN :pDT_INI AND :pDT_FIM ';
     2 : DMcadastro.sqlChqPdt.CommandText := DMcadastro.sqlChqPdt.CommandText + ' WHERE db_chqpdt.dt_dvl_1  BETWEEN :pDT_INI AND :pDT_FIM ';
    end;

    case cbConsulta.ItemIndex of
      0:
        begin
          if Ed_Emi.Text <> '' then
          begin
            dmCadastro.SQLChqPdt.CommandText := dmCadastro.SQLChqPdt.CommandText
              + ' and db_chqpdt.nm_emt containing :pNome ';
            dmCadastro.SQLChqPdt.ParamByName('pNome').AsString := Ed_Emi.Text;
          end;
        end;

      1:
        begin
          if (cbConsulta.ItemIndex = 1) and (Ed_banco.Text <> '') and
             (Ed_Age.Text <> '') and (Ed_Conta.Text <> '') and
             (Ed_No_Chq.Text <> '') then
          begin
            dmCadastro.SQLChqPdt.CommandText := dmCadastro.SQLChqPdt.CommandText + ' AND db_localcobranca.no_bco =:pNoBco ';
            dmCadastro.SQLChqPdt.CommandText := dmCadastro.SQLChqPdt.CommandText + ' AND db_chqpdt.no_agc   =:pNoAgc ';
            dmCadastro.SQLChqPdt.CommandText := dmCadastro.SQLChqPdt.CommandText + ' AND db_chqpdt.no_cta   =:pNoCta ';
            dmCadastro.SQLChqPdt.CommandText := dmCadastro.SQLChqPdt.CommandText + ' AND db_chqpdt.no_chq   =:pNochq ';

            DMcadastro.SQLChqPdt.ParamByName('pNoBco').AsString := Ed_banco.Text;
            DMcadastro.SQLChqPdt.ParamByName('pNoAgc').AsString := Ed_Age.Text;
            DMcadastro.SQLChqPdt.ParamByName('pNoCta').AsString := Ed_Conta.Text;
            DMcadastro.SQLChqPdt.ParamByName('pNochq').AsString := Ed_No_Chq.Text;
          end;
        end;

      2:begin
           DMcadastro.sqlChqPdt.CommandText := DMcadastro.sqlChqPdt.CommandText + ' AND db_chqpdt.ds_bda  =:pBanda ';
           DMcadastro.SQLChqPdt.ParamByName('pBanda').AsString := Ed_banda.Text;
        end;

      3:begin
           DMcadastro.sqlChqPdt.CommandText := DMcadastro.sqlChqPdt.CommandText + ' AND db_localcobranca.no_bco =:pBco ';
           DMcadastro.sqlChqPdt.CommandText := DMcadastro.sqlChqPdt.CommandText + ' AND db_chqpdt.no_chq =:pNoChq ';
           DMcadastro.SQLChqPdt.ParamByName('pBco').AsString   := Ed_banco.Text;
           DMcadastro.SQLChqPdt.ParamByName('pNoChq').AsString := Ed_No_Chq.Text;
        end;

      4:begin
          if Ed_cli.Text <> '' then
          begin
            dmCadastro.SQLChqPdt.CommandText := dmCadastro.SQLChqPdt.CommandText + ' AND db_cliente.nm_cli containing :pNomeCli ';
            dmCadastro.SQLChqPdt.ParamByName('pNomeCli').AsString := Ed_cli.Text;
          end;
        end;
    end;

   DMcadastro.SQLChqPdt.ParamByName('pDT_INI').AsDate      := DT_INI.Date;
   DMcadastro.SQLChqPdt.ParamByName('pDT_FIM').AsDate      := DT_FIM.Date;
   DMcadastro.SQLChqPdt.ParamByName('pTipo').AsString      := STCheque;
   DMcadastro.SQLChqPdt.ParamByName('PEmpresa').AsInteger  := empresa;
   DMcadastro.SQLChqPdt.ParamByName('PCustodia').AsInteger := empresa;
   DMcadastro.SQLChqPdt.ParamByName('pTipo').AsString      := STCheque;
   //ShowMessage(DMcadastro.sqlChqPdt.CommandText);
   DMcadastro.CDSChqPdt.Open;
end;

procedure TFormChqPdt.ConsultaEmitente;
begin
  // criando Edit Emitente
  Ed_Emi := TEdit.Create(nil);
  Ed_Emi.Left := cbConsulta.Left + cbConsulta.Width + 10;
  Ed_Emi.Top := cbConsulta.Top;
  Ed_Emi.Width := 400;
  Ed_Emi.Height := 24;
  Ed_Emi.Parent := GroupBox10;
  Lb_Emi := TLabel.Create(nil);
  // criando label Emitente
  Lb_Emi.Left := LB_FILTRO.Left + cbConsulta.Width + 10;
  Lb_Emi.Top := LB_FILTRO.Top;
  Lb_Emi.Parent := GroupBox10;
  Lb_Emi.AutoSize := TRUE;
  Lb_Emi.Caption := 'Nome do Emitente:';
  Bt_Consulta := TButton.Create(nil);
  // criando botão consulta
  Bt_Consulta.Left := Ed_Emi.Left + Ed_Emi.Width + 10;
  Bt_Consulta.Top := Ed_Emi.Top;
  Bt_Consulta.Parent := GroupBox10;
  Bt_Consulta.Caption := 'Consulta';
  Bt_Consulta.Width := 100;
  Bt_consulta.OnClick := Consultas;
end;

procedure TFormChqPdt.ConsultaBancoAgenciaContaNoCheque;
begin
  Ed_banco := TEdit.Create(nil);
  // Edit Banco
  Ed_banco.Parent := GroupBox10;
  Ed_banco.Width := 50;
  Ed_banco.Height := 24;
  Ed_banco.Left := cbConsulta.Left + cbConsulta.Width + 10;
  Ed_banco.Top := cbConsulta.Top;
  Ed_banco.MaxLength := 3;
  LB_banco := TLabel.Create(nil);
  // label banco
  LB_banco.Parent := GroupBox10;
  LB_banco.Left := Ed_banco.Left;
  LB_banco.Top := LB_FILTRO.Top;
  LB_banco.Caption := 'Banco';
  LB_banco.AutoSize := true;
  Ed_Age := TEdit.Create(nil);
  // Edit Agencia
  Ed_Age.Parent := GroupBox10;
  Ed_Age.Width := 100;
  Ed_Age.Height := 24;
  Ed_Age.Left := Ed_banco.Left + Ed_banco.Width + 10;
  Ed_Age.Top := Ed_banco.Top;
  Ed_Age.MaxLength := 6;
  LB_Age := TLabel.Create(nil);
  // label Agencia
  LB_Age.Parent := GroupBox10;
  LB_Age.Left := Ed_Age.Left;
  LB_Age.Top := LB_FILTRO.Top;
  LB_Age.Caption := 'Agência';
  LB_Age.AutoSize := true;
  Ed_Conta := TEdit.Create(nil);
  // Edit Conta
  Ed_Conta.Parent := GroupBox10;
  Ed_Conta.Width := 110;
  Ed_Conta.Height := 24;
  Ed_Conta.Left := Ed_Age.Left + Ed_Age.Width + 10;
  Ed_Conta.Top := Ed_Age.Top;
  Ed_Conta.MaxLength := 10;
  LB_Conta := TLabel.Create(nil);
  // label Conta
  LB_Conta.Parent := GroupBox10;
  LB_Conta.Left := Ed_Conta.Left;
  LB_Conta.Top := LB_FILTRO.Top;
  LB_Conta.Caption := 'Conta';
  LB_Conta.AutoSize := true;
  Ed_No_Chq := TEdit.Create(nil);
  // Edit Cheque
  Ed_No_Chq.Parent := GroupBox10;
  Ed_No_Chq.Width := 110;
  Ed_No_Chq.Height := 24;
  Ed_No_Chq.Left := Ed_Conta.Left + Ed_Conta.Width + 10;
  Ed_No_Chq.Top := Ed_Age.Top;
  Ed_No_Chq.MaxLength := 10;
  LB_No_Chq := TLabel.Create(nil);
  // label Conta
  LB_No_Chq.Parent := GroupBox10;
  LB_No_Chq.Left := Ed_No_Chq.Left;
  LB_No_Chq.Top := LB_FILTRO.Top;
  LB_No_Chq.Caption := 'Cheque';
  LB_No_Chq.AutoSize := true;
  Bt_Consulta1 := TButton.Create(nil);
  // botão consulta
  Bt_Consulta1.Left := Ed_No_Chq.Left + Ed_No_Chq.Width + 20;
  Bt_Consulta1.Top := Ed_No_Chq.Top;
  Bt_Consulta1.Parent := GroupBox10;
  Bt_Consulta1.Caption := 'Consulta';
  Bt_Consulta1.Width := 100;
  Bt_consulta1.OnClick := Consultas;
end;

procedure TFormChqPdt.DestroiComponentes;
begin
  if Ed_Emi <> nil then
    FreeAndNil(Ed_Emi);
  if Lb_Emi <> nil then
    FreeAndNil(Lb_Emi);
  if Bt_Consulta <> nil then
    FreeAndNil(Bt_Consulta);
  if Ed_banco <> nil then
    FreeAndNil(Ed_banco);
  if Ed_Age <> nil then
    FreeAndNil(Ed_Age);
  if Ed_Conta <> nil then
    FreeAndNil(Ed_Conta);
  if Ed_No_Chq <> nil then
    FreeAndNil(Ed_No_Chq);
  if LB_banco <> nil then
    FreeAndNil(LB_banco);
  if LB_Age <> nil then
    FreeAndNil(LB_Age);
  if LB_Conta <> nil then
    FreeAndNil(LB_Conta);
  if LB_Conta <> nil then
    FreeAndNil(LB_Conta);
  if LB_No_Chq <> nil then
    FreeAndNil(LB_No_Chq);
  if Bt_Consulta1 <> nil then
    FreeAndNil(Bt_Consulta1);
  if Ed_banda <> nil then
    FreeAndNil(Ed_banda);
  if LB_Banda <> nil then
    FreeAndNil(LB_Banda);
  if Bt_Consulta2 <> nil  then
    FreeAndNil(Bt_Consulta2);
  if Bt_Consulta3 <> nil  then
    FreeAndNil(Bt_Consulta3);
  if Ed_cli <> nil  then
    FreeAndNil(Ed_cli);
  if lb_CLI <> nil  then
    FreeAndNil(lb_CLI);
  if Bt_Consulta4 <> nil  then
    FreeAndNil(Bt_Consulta4);

end;



procedure TFormChqPdt.ConsultaBanda;
begin
  Ed_banda := TEdit.Create(nil);
  Ed_banda.Left := cbConsulta.Left + cbConsulta.Width + 10;
  Ed_banda.Top := cbConsulta.Top;
  Ed_banda.Width := 400;
  Ed_banda.Height := 24;
  Ed_banda.Parent := GroupBox10;
  Ed_banda.MaxLength := 30;
  LB_Banda := TLabel.Create(nil);
  LB_Banda.Left := Ed_banda.Left;
  LB_Banda.Top := LB_FILTRO.Top;
  LB_Banda.Parent := GroupBox10;
  LB_Banda.Caption := 'Banda do Cheque';
  LB_Banda.AutoSize := true;
  Bt_Consulta2 := TButton.Create(nil);
  Bt_Consulta2.Parent := GroupBox10;
  Bt_Consulta2.Width := 100;
  Bt_Consulta2.Height := 24;
  Bt_Consulta2.Caption := 'Consulta';
  Bt_Consulta2.Left := Ed_banda.Left + Ed_banda.Width + 10;
  Bt_Consulta2.Top := Ed_banda.Top;
  Bt_Consulta2.OnClick := Consultas;
end;

procedure TFormChqPdt.ConsultaBancoCheque;
begin
  // Ed_banco
  Ed_banco := TEdit.Create(nil);
  Ed_banco.Left := cbConsulta.Left + cbConsulta.Width + 10;
  Ed_banco.Top := cbConsulta.Top;
  Ed_banco.Width := 40;
  Ed_banco.Height := 24;
  Ed_banco.Parent := GroupBox10;
  Ed_banco.MaxLength := 3;
  // label Banco
  LB_banco := TLabel.Create(nil);
  LB_banco.Left := Ed_banco.Left;
  LB_banco.Top := LB_FILTRO.Top;
  LB_banco.Caption := 'Banco';
  LB_banco.AutoSize := true;
  LB_banco.Parent := GroupBox10;
  //Edit cheque
  Ed_No_Chq := TEdit.Create(nil);
  Ed_No_Chq.Left := Ed_banco.Left + Ed_banco.Width + 10;
  Ed_No_Chq.Top := cbConsulta.Top;
  Ed_No_Chq.Width := 80;
  Ed_No_Chq.Height := 24;
  Ed_No_Chq.Parent := GroupBox10;
  Ed_No_Chq.MaxLength := 10;
  // label cheque
  LB_No_Chq := TLabel.Create(nil);
  LB_No_Chq.Left := Ed_No_Chq.Left;
  LB_No_Chq.Top := LB_FILTRO.Top;
  LB_No_Chq.Caption := 'N° Cheque';
  LB_No_Chq.AutoSize := true;
  LB_No_Chq.Parent := GroupBox10;
  // botao consulta
  Bt_Consulta3 := TButton.Create(nil);
  Bt_Consulta3.Left := Ed_No_Chq.Left + Ed_No_Chq.Width + 10;
  Bt_Consulta3.Top := Ed_No_Chq.Top;
  Bt_Consulta3.Caption := 'Consulta';
  Bt_Consulta3.Width := 100;
  Bt_Consulta3.OnClick := consultas;
  Bt_Consulta3.Parent := GroupBox10;

end;

procedure TFormChqPdt.ConsultaCliente;
begin
  Ed_cli := TEdit.Create(nil);
  Ed_cli.Left := cbConsulta.Left + cbConsulta.Width + 10;
  Ed_cli.Top := cbConsulta.Top;
  Ed_cli.Width := 400;
  Ed_cli.Height := 24;
  Ed_cli.Parent := GroupBox10;

  lb_CLI := TLabel.Create(nil);
  lb_CLI.Left := Ed_cli.Left;
  lb_CLI.Top := LB_FILTRO.Top;
  lb_CLI.Caption := 'Nome do Cliente';
  lb_CLI.Parent := GroupBox10;
  lb_CLI.AutoSize := true;

  Bt_Consulta4 := TButton.Create(nil);
  Bt_Consulta4.Left := Ed_cli.Left + Ed_cli.Width + 10;
  Bt_Consulta4.Top := Ed_cli.Top;
  Bt_Consulta4.Caption := 'Consulta';
  Bt_Consulta4.OnClick := Consultas;
  Bt_Consulta4.Parent := GroupBox10;


end;

procedure TFormChqPdt.VerificaCHQTerceiro;
var
  VF: Boolean;
begin
  if dmCadastro.CDSChqPdtSN_TCR.AsString = 'NAO' then
  begin
    VF := false;
    DBEdit_NM_EMT.Enabled              := VF;
    DBEdit_NM_CID_EMT.Enabled          := VF;
    DBEdit_UF_CID_EMT.Enabled          := VF;
    DBEdit_NO_CNP_CPF_Emitente.Enabled := VF;
    DBEdit_ID.Enabled                  := VF;
    DBEdit_NM_CLI.Enabled              := VF;
    DBEdit_NM_CID.Enabled              := VF;
    DBEdit_UF_CID.Enabled              := VF;
    DBEdit_NO_FON.Enabled              := VF;
    DBEdit_NO_CEL.Enabled              := VF;
  end
  else
  begin
    VF := true;
    DBEdit_NM_EMT.Enabled              := VF;
    DBEdit_NM_CID_EMT.Enabled          := VF;
    DBEdit_UF_CID_EMT.Enabled          := VF;
    DBEdit_NO_CNP_CPF_Emitente.Enabled := VF;
    DBEdit_ID.Enabled                  := VF;
  end;
end;

procedure TFormChqPdt.AlimentaCampsEmitenteCliente;
var
  q: TSQLQuery;
begin
//  if dmCadastro.CDSChqPdt.FieldByName('ID_CLIENTE').AsString = '' then
//  begin
//    try
//      Application.CreateForm(TFormClientes, FormClientes);
//      FormClientes.ShowModal;
//    finally
//      FormClientes.Free;
//    end;
//  end;


    if (DSpadrao.DataSet.FieldByName('id_cliente').AsInteger > 0) and (DSpadrao.DataSet.State in [dsInsert, dsEdit]) then
    begin
     try
      q := TSQLQuery.Create(nil);
      q.SQLConnection := DMcadastro.SQLConnection1;
      q.SQL.Clear;
      q.SQL.Add('select db_cliente.id as id_cliente,NM_CID,UF_CID,NO_CNP_CPF,NO_FON,NO_CEL,NM_CLI from db_cliente '
               +'inner join db_cep on db_cep.id = db_cliente.id_cep '
               +'where db_cliente.id = :pID');
      q.ParamByName('pID').AsInteger := DSpadrao.DataSet.FieldByName('id_cliente').AsInteger;
      q.Open;

      if q.IsEmpty = false then
        begin
          DMcadastro.CDSChqPdtID_CLIENTE.AsInteger      := q.FieldByName('ID_cliente').AsInteger;
          DMcadastro.CDSChqPdtNM_CID.AsString           := q.FieldByName('NM_CID').AsString;
          DMcadastro.CDSChqPdtUF_CID.AsString           := q.FieldByName('UF_CID').AsString;
          DMcadastro.CDSChqPdtNO_CNP_CPF.AsString       := q.FieldByName('NO_CNP_CPF').AsString;
          DMcadastro.CDSChqPdtNO_FON.AsString           := q.FieldByName('NO_FON').AsString;
          DMcadastro.CDSChqPdtNO_CEL.AsString           := q.FieldByName('NO_CEL').AsString;
          DMcadastro.CDSChqPdtNM_CLI.AsString           := q.FieldByName('NM_CLI').AsString;
          DMcadastro.CDSChqPdtNM_CID_EMT.AsString       := q.FieldByName('NM_CID').AsString;
          DMcadastro.CDSChqPdtUF_CID_EMT.AsString       := q.FieldByName('UF_CID').AsString;
          DMcadastro.CDSChqPdtNM_EMT.AsString           := q.FieldByName('NM_CLI').AsString;
          dmcadastro.CDSChqPdtNO_CNP_CPF_1.AsString     := q.FieldByName('NO_CNP_CPF').AsString;
        end
        else
        begin
          ShowMessage('Código de Cliente não encontrado!');
          DBEdit_NM_CLI.Clear;
          DBEdit_NM_CID.Clear;
          DBEdit_UF_CID.Clear;
          DBEdit_NO_CNP_CPF_CLI.Clear;
          DBEdit_NO_FON.Clear;
          DBEdit_NO_CEL.Clear;
          DsCliente.Enabled := false;
          DBEdit_ID.SetFocus;
          abort;
        end;
     finally
      FreeAndNil(q);
     end;
    end;
end;



procedure TFormChqPdt.AcEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit_DS_BDA.OnExit(sender);
end;

procedure TFormChqPdt.AcImprimirExecute(Sender: TObject);
begin
  inherited;

 if STCheque = 'PD' then
   begin
    try
    Application.CreateForm(TFormRlt_Chq_PD,FormRlt_Chq_PD);
    FormRlt_Chq_PD.ShowModal;
    finally
    FreeAndNil(FormRlt_Chq_PD);
    end;
   end;

  if STCheque = 'BX' then
    begin
     try
     Application.CreateForm(TFormRlt_Chq_BX,FormRlt_Chq_BX);
     FormRlt_Chq_BX.ShowModal;
     finally
     FreeAndNil(FormRlt_Chq_BX);
     end;

    end;


end;

procedure TFormChqPdt.AcIncluirExecute(Sender: TObject);
begin
  inherited;
//DMcadastro.CDSChqPdtST_CHQ.AsString := 'PD';
dmCadastro.CDSChqPdtSN_TCR.AsString      := 'NAO';
dmCadastro.CDSChqPdtVR_CHQ.AsCurrency    := 0;
dmCadastro.CDSChqPdtDT_INC.AsDateTime    := Date;
dmCadastro.CDSChqPdtDT_EMS.AsDateTime    := Date;
DMcadastro.CDSChqPdtST_CHQ.AsString      := 'PD';
DMcadastro.CDSChqPdtID_EMPRESA.AsInteger := empresa;
Dbedit_NM_LOC_COB.Clear;
VerificaCHQTerceiro;


end;

procedure TFormChqPdt.contacorrente(sender: tobject);
var quant ,I: integer;
begin
  inherited;
  quant :=  Length(DMcadastro.CDSChqPdt.FieldByName('NO_CTA').asstring);
  DMcadastro.CDSChqPdt.FieldByName('NO_CTA').EditMask := '';
   for I := 0 to quant do
     begin
     if I = quant-1 then
     DMcadastro.CDSChqPdt.FieldByName('NO_CTA').EditMask := DMcadastro.CDSChqPdt.FieldByName('NO_CTA').EditMask + '-#;0'
     else
     DMcadastro.CDSChqPdt.FieldByName('NO_CTA').EditMask := DMcadastro.CDSChqPdt.FieldByName('NO_CTA').EditMask + '#';
     end;
end;

procedure TFormChqPdt.TipoCheque;
begin
  case CB_ST_CHQ.ItemIndex of
    0:
      DMcadastro.CDSChqPdtST_CHQ.AsString := 'PD';
    1:
      DMcadastro.CDSChqPdtST_CHQ.AsString := 'BX';
    2:
      DMcadastro.CDSChqPdtST_CHQ.AsString := 'PP';
    3:
      DMcadastro.CDSChqPdtST_CHQ.AsString := 'DV';
    4:
      DMcadastro.CDSChqPdtST_CHQ.AsString := 'DB';
  end;
end;

procedure TFormChqPdt.ConverterTipoCheque;
begin

  case AnsiIndexStr(DMcadastro.CDSChqPdtST_CHQ.AsString, ['PD','BX','PP','DV','DB']) of
    0:
      CB_ST_CHQ.ItemIndex := 0;
    1:
      CB_ST_CHQ.ItemIndex := 1;
    2:
      CB_ST_CHQ.ItemIndex := 2;
    3:
      CB_ST_CHQ.ItemIndex := 3;
    4:
      CB_ST_CHQ.ItemIndex := 4;
  end;
end;


end.
