unit uFrmClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Vcl.StdCtrls, Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  ACBrBase, ACBrValidador, IPPeerClient, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.Menus, Vcl.ToolWin;

type
  TFormClientes = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    DBText_ID: TDBText;
    cxDBDateEdit_DT_CAD: TcxDBDateEdit;
    DBCombo_ST_CLI: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit_NM_CLI: TDBEdit;
    DBEdit_NM_FAN: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    PageControl2: TPageControl;
    tabcadastro2: TTabSheet;
    tabEndCob: TTabSheet;
    TabInfComercial: TTabSheet;
    TabInfBancariaInternet: TTabSheet;
    TabLimitePreferencia: TTabSheet;
    TabPessoaFisica: TTabSheet;
    TabObsVendas: TTabSheet;
    TabObsFinanceira: TTabSheet;
    TabAvalista1: TTabSheet;
    Label9: TLabel;
    DBEdit_ID_CEP: TDBEdit;
    btn_cons_cep: TSpeedButton;
    Label10: TLabel;
    DBEdit_NM_RUA: TDBEdit;
    Label15: TLabel;
    DBEdit_NO_EDR: TDBEdit;
    Label11: TLabel;
    DBEdit_NM_BAI: TDBEdit;
    Label16: TLabel;
    DBEdit_DS_CPL: TDBEdit;
    Label12: TLabel;
    DBEdit_NM_CID: TDBEdit;
    Label17: TLabel;
    DBEdit_UF_CID: TDBEdit;
    DBEdit_NO_FON: TDBEdit;
    DBEdit_NO_FAX: TDBEdit;
    Label14: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit_NO_CEL: TDBEdit;
    Label26: TLabel;
    DSCategoria: TDataSource;
    DSCep: TDataSource;
    DBLookupNM_CTG_CLI: TDBLookupComboBox;
    ACBrValidador1: TACBrValidador;
    DBEdit_NO_CNP_CPF: TcxDBTextEdit;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit_NO_CEL_VIV: TDBEdit;
    DBEdit_NO_CEL_OI: TDBEdit;
    DBEdit_NO_CEL_TIM: TDBEdit;
    DBEdit_NO_CEL_CLA: TDBEdit;
    GroupBox2: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label13: TLabel;
    DBEdit_NO_INS_EST: TDBEdit;
    GroupBox5: TGroupBox;
    DBEdit_ID_CEP_COB: TDBEdit;
    Label27: TLabel;
    DBEdit_NM_RUA_COB: TDBEdit;
    SpeedButton5: TSpeedButton;
    Label28: TLabel;
    DBEdit_NM_BAI_COB: TDBEdit;
    Label29: TLabel;
    DBEdit_NM_CID_COB: TDBEdit;
    DBEdit_NO_EDR_COB: TDBEdit;
    Label30: TLabel;
    DBEdit_DS_DS_CPL_COB: TDBEdit;
    Label31: TLabel;
    DBEdit_UF_CID_COB: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    GroupBox6: TGroupBox;
    Label34: TLabel;
    DBEdit_E_MAIL_COB: TDBEdit;
    Label35: TLabel;
    DBEdit_NM_CTT_COB: TDBEdit;
    DBLookup_CD_PAI: TDBLookupComboBox;
    DS_PAISES: TDataSource;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit1: TDBEdit;
    Label38: TLabel;
    DBEdit2: TDBEdit;
    Label39: TLabel;
    DBEdit3: TDBEdit;
    GroupBox8: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    DBEdit_NM_EMP_CM3: TDBEdit;
    DBEdit_NO_FON_CM3: TDBEdit;
    DBEdit_VR_MFT_CM3: TDBEdit;
    DBedit_DT_MFT_CM3: TcxDBDateEdit;
    DBEdit_VR_UCP_CM3: TDBEdit;
    DBEdit_DT_UCP_CM3: TcxDBDateEdit;
    DBEdit_VR_LMT_CM3: TDBEdit;
    DBEdit_FO_PGT_CM3: TDBEdit;
    DBEdit_NM_INF_CM3: TDBEdit;
    DBedit_DT_CAD_CM3: TcxDBDateEdit;
    DBEdit_DS_OBS_CM3: TDBEdit;
    GroupBox7: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit_NM_EMP_CM2: TDBEdit;
    DBEdit_NO_FON_CM2: TDBEdit;
    DBEdit_VR_MFT_CM2: TDBEdit;
    DBedit_DT_MFT_CM2: TcxDBDateEdit;
    DBEdit_VR_UCP_CM2: TDBEdit;
    DBEdit_DT_UCP_CM2: TcxDBDateEdit;
    DBEdit_VR_LMT_CM2: TDBEdit;
    DBEdit_FO_PGT_CM2: TDBEdit;
    DBEdit_NM_INF_CM2: TDBEdit;
    DBedit_DT_CAD_CM2: TcxDBDateEdit;
    DBEdit_DS_OBS_CM2: TDBEdit;
    GroupBox9: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit_NM_EMP_CM1: TDBEdit;
    DBEdit_NO_FON_CM1: TDBEdit;
    DBEdit_VR_MFT_CM1: TDBEdit;
    DBEdit_DT_MFT_CM1: TcxDBDateEdit;
    DBEdit_VR_UCP_CM1: TDBEdit;
    DBEdit_DT_UCP_CM1: TcxDBDateEdit;
    DBEdit_VR_LMT_CM1: TDBEdit;
    DBEdit_FO_PGT_CM1: TDBEdit;
    DBEdit_NM_INF_CM1: TDBEdit;
    DBedit_DT_CAD_CM1: TcxDBDateEdit;
    DBEdit_DS_OBS_CM1: TDBEdit;
    TabAvalista2: TTabSheet;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    DBEdit_NM_BCO_CM2: TDBEdit;
    DBEdit_NO_FBC_CM2: TDBEdit;
    DBEdit_NM_GBC_CM: TDBEdit;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit_HOME_PAGE: TDBEdit;
    DBEdit_E_MAIL: TDBEdit;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit_NM_CTT: TDBEdit;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    DBEdit_VR_LMT_CRD: TDBEdit;
    DBEdit_VR_LMT_AUX: TDBEdit;
    DBEdit_CD_LBR_LMT: TDBEdit;
    DBEdit_DT_LMT_CRD: TcxDBDateEdit;
    DBEdit_DS_OBS_AUX: TDBEdit;
    CB_MSN_CC: TDBComboBox;
    DBEdit_VR_MAI_CMP: TDBEdit;
    cxDBDateEdit_DT_MAI_CMP: TcxDBDateEdit;
    DBEdit_VR_ULT_CMP: TDBEdit;
    cxDBDateEdit_DT_ULT_CMP: TcxDBDateEdit;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    CB_CD_LOC_COB: TDBComboBox;
    CB_CD_TRN: TDBLookupComboBox;
    DBLookupVendedor: TDBLookupComboBox;
    Label78: TLabel;
    SpeedButton6: TSpeedButton;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    GroupBox20: TGroupBox;
    Label79: TLabel;
    DBEdit_NO_IDT: TDBEdit;
    Label80: TLabel;
    DateEdit_DT_NCM: TcxDBDateEdit;
    DBEdit37: TDBEdit;
    Label81: TLabel;
    DBEdit_NM_PAI: TDBEdit;
    DBEdit_NM_MAE: TDBEdit;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    DBEdit_NM_LOC_TRB: TDBEdit;
    Label85: TLabel;
    DBEdit_NM_FUN_TRB: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    Label86: TLabel;
    DBEdit_NM_AVL_1: TDBEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label87: TLabel;
    cxDBDateEdit14: TcxDBDateEdit;
    Label88: TLabel;
    Label89: TLabel;
    DBEdit_ID_CEP_AV: TDBEdit;
    SpeedButton7: TSpeedButton;
    Label90: TLabel;
    Label91: TLabel;
    DBEdit_NM_RUA_AV1: TDBEdit;
    Label92: TLabel;
    DBEdit45: TDBEdit;
    Label93: TLabel;
    DBEdit46: TDBEdit;
    Label94: TLabel;
    DBEdit_NM_BAI_AV1: TDBEdit;
    Label95: TLabel;
    DBEdit_NM_CID_AV1: TDBEdit;
    Label96: TLabel;
    DBEdit_UF_CID_AV1: TDBEdit;
    Label97: TLabel;
    DBEdit50: TDBEdit;
    Label98: TLabel;
    DBEdit51: TDBEdit;
    GroupBox23: TGroupBox;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    DBEdit52: TDBEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBDateEdit15: TcxDBDateEdit;
    GroupBox24: TGroupBox;
    Label102: TLabel;
    SpeedButton8: TSpeedButton;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    DBEdit53: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBLookupPaises_AV1: TDBLookupComboBox;
    Label112: TLabel;
    DBEdit_UF_CID_NCT: TDBEdit;
    DBEdit_NO_FON_TRB: TDBEdit;
    Label113: TLabel;
    Label114: TLabel;
    DBEdit_VR_SAL: TDBEdit;
    DbCb_IE: TDBComboBox;
    DB_CB_Consumidor: TDBComboBox;
    Db_CB_Declaracao: TDBComboBox;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Label115: TLabel;
    DBEdit_DT_ABT: TDBEdit;
    SP_GEN_HISTORICO: TSQLStoredProc;
    Ds_Htr_tpc: TDataSource;
    PopupMenu1: TPopupMenu;
    Histricodotipodeconsumidor1: TMenuItem;
    procedure AcIncluirExecute(Sender: TObject);
    procedure DBEdit_NO_CNP_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure btn_cons_cepClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure aliementarClienteJson(sender : tobject);
    procedure DBEdit_NO_CNP_CPFExit(Sender: TObject);
    procedure Histricodotipodeconsumidor1Click(Sender: TObject);
    procedure consultaCPFExistente;
    procedure AcertaCPFCNPJ;
    procedure CtaRecClientes(Sender : TOBject);
  private
    procedure Endereco(sender: TObject);
    procedure RelatorioReceber(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientes: TFormClientes;

implementation

//uses  uFrmChqPdt;

{$R *.dfm}

uses rest.types,system.json,UDmCadastro, UFrmCep, UFuncoes, uFrmChqPdt,
  System.AnsiStrings, UFrmHistCons, UFrmConsultaCNPJ, uFrmContasPagar,
  uFrmContasReceber, UFrmRelCtarec, UFrmRlt_Chq_PD, UfrmRlt_Chq_BX;

procedure TFormClientes.AcEditarExecute(Sender: TObject);
begin
  inherited;

    if FormClientes.DSpadrao.DataSet.FieldByName('ID_IE').AsString = '1' then // tras as informações para o dbcombobox campo Indicador da inscrição estadual
       FormClientes.DbCb_IE.ItemIndex := 0;

    if FormClientes.DSpadrao.DataSet.FieldByName('ID_IE').AsString = '2' then
       FormClientes.DbCb_IE.ItemIndex := 1;

    if FormClientes.DSpadrao.DataSet.FieldByName('ID_IE').AsString = '9' then
       FormClientes.DbCb_IE.ItemIndex := 9;

    if FormClientes.Dspadrao.dataset.FieldByName('TP_CSM_FIN').AsString = '0' then // tras as informações para o dbcombobox campo  tipo consumidor
       FormClientes.DB_CB_Consumidor.ItemIndex := 0;

    if FormClientes.Dspadrao.dataset.FieldByName('TP_CSM_FIN').AsString = '1' then
       FormClientes.DB_CB_Consumidor.ItemIndex := 1;

    if FormClientes.DSpadrao.DataSet.FieldByName('SN_DCL').AsString = '' then // tipo de declração
       FormClientes.Db_CB_Declaracao.ItemIndex := 0;

    if FormClientes.DSpadrao.DataSet.FieldByName('SN_DCL').AsString = 'C' then
       FormClientes.Db_CB_Declaracao.ItemIndex := 1;

    if FormClientes.DSpadrao.DataSet.FieldByName('SN_DCL').AsString = 'S' then
       FormClientes.Db_CB_Declaracao.ItemIndex := 2;

end;

procedure TFormClientes.AcertaCPFCNPJ;
  var cnpj : string;
 begin
  if (FormClientes.DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString <> '') and (FormClientes.dspadrao.DataSet.State in [dsEdit, dsInsert]) then
  begin
  cnpj :=  AnsiReplaceStr(FormClientes.DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString, '.','');
  cnpj := AnsiReplaceStr(cnpj,'-','');
  cnpj := AnsiReplaceStr(cnpj,'/','');
  FormClientes.DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString := cnpj;
  end;
 end;

procedure TFormClientes.AcIncluirExecute(Sender: TObject);
begin
  inherited;
 dmCadastro.CDSClientes.FieldByName('DT_CAD').AsDateTime := date;
 dmCadastro.CDSClientes.FieldByName('ST_CLI').AsString := 'ATIVO';
end;

procedure TFormClientes.aliementarClienteJson(sender: TObject);
var
objeto : TJSONObject;
q : TSQLQuery;
cep: string;
contsql : integer;

begin
q := TSQLQuery.Create(nil);
q.SQLConnection := DMcadastro.SQLConnection1;
q.SQL.Add('SELECT db_cliente.id, db_cliente.nm_cli, Count(*) FROM db_cliente where db_cliente.no_cnp_cpf =:pCEF group by id,nm_cli');
q.ParamByName('pcef').AsString := DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString;
q.Open;

if q.FieldByName('count').AsInteger >1  then
 begin
  ShowMessage('CPF/CNPJ ja cadastrado no cliente código: '+q.FieldByName('id').AsString +' Nome: '+ q.FieldByName('nm_cli').AsString + ' !!! ');
  abort;
 end;
end;

procedure TFormClientes.btn_cons_cepClick(Sender: TObject);
begin
  inherited;
  try
   Application.CreateForm(TFormCep,FormCep);
   formCep.showmodal;
  finally
   formCep.Free;
  end;
  // criar a procedure la no formCep
  // e criar um evento no doubleclick do dbgrid no form cep
end;

procedure TFormClientes.consultaCPFExistente;
var q : tsqlquery;
    cpf : string;
begin
q := TSQLQuery.Create(nil);
q.SQLConnection := DMcadastro.SQLConnection1;
q.SQL.Add('SELECT db_cliente.id, db_cliente.nm_cli, Count(*) FROM db_cliente where db_cliente.no_cnp_cpf =:pCEF group by id,nm_cli');
q.ParamByName('pcef').AsString := DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString;
q.Open;

if (q.FieldByName('count').AsInteger >=1)  and (q.FieldByName('id').AsInteger <> DSpadrao.DataSet.FieldByName('id').AsInteger) then
 begin
  ShowMessage('CPF/CNPJ ja cadastrado no cliente código: '+q.FieldByName('id').AsString +' Nome: '+ q.FieldByName('nm_cli').AsString + ' !!! ');
  DBEdit_NO_CNP_CPF.SetFocus;
  abort;
  end;

end;

procedure TFormClientes.CtaRecClientes(Sender: TOBject);
begin
    DMcadastro.CDSContasReceber.FieldByName('ID_CLIENTE').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSContasReceber.FieldByName('NM_CLI').AsString      := DSpadrao.DataSet.FieldByName('NM_CLI').AsString;
    DMcadastro.CDSContasReceber.FieldByName('NO_CNP_CPF').AsString  := DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString;
    DMcadastro.CDSContasReceber.FieldByName('NM_RUA').AsString      := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSContasReceber.FieldByName('NM_BAI').AsString      := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSContasReceber.FieldByName('NO_FON').AsString      := DSpadrao.DataSet.FieldByName('NO_FON').AsString;
    DMcadastro.CDSContasReceber.FieldByName('NO_FAX').AsString      := DSpadrao.DataSet.FieldByName('NO_FAX').AsString;
    DMcadastro.CDSContasReceber.FieldByName('NM_CID').AsString      := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSContasReceber.FieldByName('UF_CID').AsString      := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSContasReceber.FieldByName('NO_CEP').AsString      := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
end;


Procedure TFormClientes.RelatorioReceber(Sender : TObject);
var
q : TSqlQuery;
begin
   // faz consulta do formulario de relatorio do Contas a Receber num Período
   try

    q := TSqlQuery.Create(nil);
    q.SQLConnection := dmCadastro.SQLConnection1;
    q.SQL.Clear;
    q.SQL.Add('select * from db_cliente inner join db_cep on db_cep.id = db_cliente.id_cep '+
              'where db_cliente.id =:pidcliente');

    q.ParamByName('pidcliente').AsInteger := dmcadastro.CDSClientesID.AsInteger;
    q.Open;
    FormRelatorioCTAREC.Edit_NM_CLI.text     := q.FieldByName('NM_CLI').AsString;
    FormRelatorioCTAREC.Edit_CODIGO.text     := q.FieldByName('ID').AsString;
    FormRelatorioCTAREC.Edit_CNPJ.text       := q.FieldByName('NO_CNP_CPF').AsString;
    FormRelatorioCTAREC.Edit_ENDERECO.text   := q.FieldByName('NM_RUA').AsString;
    FormRelatorioCTAREC.Edit_Bairro.text     := q.FieldByName('NM_BAI').AsString;
    FormRelatorioCTAREC.Edit_Telefone.text   := q.FieldByName('NO_FON').AsString;
    FormRelatorioCTAREC.Edit_Fax.text        := q.FieldByName('NO_FAX').AsString;
    FormRelatorioCTAREC.Edit_Cep.text        := q.FieldByName('NO_CEP').AsString;
    FormRelatorioCTAREC.Edit_Cidade.text     := q.FieldByName('NM_CID').AsString;
    FormRelatorioCTAREC.Edit_UF.text         := q.FieldByName('UF_CID').AsString;
   finally
    q.Free;
   end;
end;


procedure TFormClientes.DBEdit_NO_CNP_CPFExit(Sender: TObject);
begin
  inherited;
   AcertaCPFCNPJ;
  if (Length(DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString) = 14) and (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
    begin
      try
      Application.CreateForm(TFormConsultaCNPJ,FormConsultaCNPJ);
      FormConsultaCNPJ.ShowModal;
      finally
      FormConsultaCNPJ.Free;
    end;
end;

  if (Length(DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString) = 11) and (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
     consultaCPFExistente;

end;

procedure TFormClientes.DBEdit_NO_CNP_CPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
     Key := #0;

end;

procedure TFormClientes.DBGrid1DblClick(Sender: TObject);
begin
  if (FormRelatorioCTAREC <> nil) then
    begin
    RelatorioReceber(Sender);
    close;
    exit;
    end;

  if FormRlt_Chq_PD <> nil  then
    begin
    FormRlt_Chq_PD.EdCodCli.Text  := DMcadastro.CDSClientesId.asstring;
    FormRlt_Chq_PD.EdCliente.Text := DMcadastro.CDSClientesNM_CLI.AsString;
    close;
    exit;
    end;

  if FormRlt_Chq_BX <> nil then
     begin
     FormRlt_Chq_BX.EdCodCli.Text  := DMcadastro.CDSClientesId.asstring;
     FormRlt_Chq_BX.EdCliente.Text := DMcadastro.CDSClientesNM_CLI.AsString;
     close;
     exit;
     end;

 if (FormContasReceber <> nil) then
    begin
    CTARECClientes(sender);
    close;
    end else

 if (FormChqPdt <> nil) and (FormChqPdt.PageControl1.ActivePage = FormChqPdt.TabCadastro) then
    begin
      DMcadastro.CDSChqPdtid_cliente.AsInteger :=  DSpadrao.DataSet.FieldByName('ID').AsInteger;
      close;
      FormChqPdt.AlimentaCampsEmitenteCliente;
    end else
 inherited;
end;

procedure TFormClientes.FormCreate(Sender: TObject);
begin
  inherited;
 dmCadastro.CDSCategoria.Open;
end;

procedure TFormClientes.Histricodotipodeconsumidor1Click(Sender: TObject);
begin
  inherited;
 try
  Application.CreateForm(TFormHistCons,FormHistCons);
  FormHistCons.ShowModal;
 finally
  FormHistCons.Free;
 end;

end;

procedure TFormClientes.Endereco(sender: TObject);
begin
end;

end.
