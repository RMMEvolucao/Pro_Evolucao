unit uFrmContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, DateUtils, dbclient, Vcl.Menus, frxDMPExport,
  frxExportXLS, frxClass, frxExportPDF, frxDBSet, dxSkinsCore, dxSkinLiquidSky,
  Vcl.ToolWin;

type
  TFormContasReceber = class(TFormCadPadrao)
    PageControl_Edicao: TPageControl;
    TabSheet_DadosDocumentos: TTabSheet;
    TabSheet_OutrasInformacoes: TTabSheet;
    GroupBoxDocumento: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit_NO_DOC_ORI: TDBEdit;
    cxDBDateEdit_DT_CAD: TcxDBDateEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit_NM_CLI: TDBEdit;
    DBEdit_ID_FOR: TDBEdit;
    DBEdit_NO_CNP_CPF: TDBEdit;
    DBEdit_NM_RUA: TDBEdit;
    DBEdit_NM_BAI: TDBEdit;
    DBEdit_NO_FON: TDBEdit;
    DBEdit_NO_FAX: TDBEdit;
    DBEdit_NO_CEP: TDBEdit;
    DBEdit_UF_CID: TDBEdit;
    DBEdit_NM_CID: TDBEdit;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    cxDBDateEdit_DT_RMS_COB: TcxDBDateEdit;
    DBEdit_CD_TIT_LOC: TDBEdit;
    DBLookup_ID_LOCAL: TDBLookupComboBox;
    DBEdit_ST_TIT_LOC: TDBEdit;
    GroupBox5: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    cxDBDateEdit_DT_ULT_MOD: TcxDBDateEdit;
    cxDBDateEdit_DT_EMS: TcxDBDateEdit;
    cxDBDateEdit_DT_VCT: TcxDBDateEdit;
    DBEdit_VR_DOC: TDBEdit;
    DBEdit_VR_DEB_DOC: TDBEdit;
    GroupBox6: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    DBComboBox_TP_JUR: TDBComboBox;
    DBEdit_TX_JUR: TDBEdit;
    GroupBox7: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cxDBDateEdit_DT_PGT: TcxDBDateEdit;
    DBEdit_VR_RCB: TDBEdit;
    DBEdit_VR_JUR: TDBEdit;
    DBEdit_VR_ABA_DCT: TDBEdit;
    EditValorFinal: TEdit;
    DSLocal: TDataSource;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label32: TLabel;
    DBEdit4: TDBEdit;
    Label33: TLabel;
    DBMemo1: TDBMemo;
    DSVendedor: TDataSource;
    Edit_NO_DOC_ANO: TEdit;
    Edit_NO_DOC_PAR: TEdit;
    DBEdit_NO_DOC: TDBEdit;
    PopupMenu1: TPopupMenu;
    ContasaRecebernumPerodo1: TMenuItem;
    N1: TMenuItem;
    IntegradoContasaReceberePagarnumPerodo1: TMenuItem;
    N2: TMenuItem;
    DbitodoClientenaDataBase1: TMenuItem;
    N3: TMenuItem;
    DbitodoClientenoPerodo1: TMenuItem;
    N4: TMenuItem;
    ExportarContasaReceber1: TMenuItem;
    Label7: TLabel;
    ComboTipoDocumento: TComboBox;
    ComboBox_ST_DOC: TComboBox;
    Combo_SN_NEG: TComboBox;
    DBEdit_VR_DEV: TDBEdit;
    DBEdit_ID_VEN: TDBEdit;
    procedure DBEdit_NM_CLIExit(Sender: TObject);
    procedure DBEdit_NM_CLIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure DBEdit_NO_DOCExit(Sender: TObject);
    procedure AcGravarExecute(Sender: TObject);
    procedure DBEdit_NO_DOCKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_ID_VENExit(Sender: TObject);
    procedure DBEdit_ID_VENKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_VR_DEB_DOCEnter(Sender: TObject);
    procedure DBEdit_VR_DOCExit(Sender: TObject);
    procedure cxDBDateEdit_DT_PGTExit(Sender: TObject);
    procedure cxDBDateEdit_DT_VCTExit(Sender: TObject);
    procedure DBEdit_VR_RCBExit(Sender: TObject);
    procedure DBEdit_NO_DOC_ORIEnter(Sender: TObject);
    procedure DBEdit_NO_DOC_ORIExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabConsultaShow(Sender: TObject);
    procedure calcularValorPago;
    procedure DBEdit_VR_JURExit(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure DBEdit_VR_ABA_DCTExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure EdconsultaExit(Sender: TObject);
    procedure ContasaRecebernumPerodo1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure calcJurus;
    procedure pagamentoparcial;
    procedure DesabilitaDocAberto;
    procedure DesabilitaDocPago;
    procedure HabilitaDocAberto;
    procedure HabilitaDocPago;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasReceber: TFormContasReceber;

implementation

{$R *.dfm}

uses UDmCadastro, uFrmClientes, UFrmRelCtarec;


function LPad(S: string; Ch: Char; Len: Integer): string;
var   RestLen: Integer;
begin   Result  := S;
  RestLen := Len - Length(s);
  if RestLen < 1 then Exit;
  Result := S + StringOfChar(Ch, RestLen);
end;

function RPad(S: string; Ch: Char; Len: Integer): string;
var   RestLen: Integer;
begin   Result  := S;
  RestLen := Len - Length(s);
  if RestLen < 1 then Exit;
  Result := StringOfChar(Ch, RestLen) + S;
end;



Procedure TFormContasReceber.HabilitaDocAberto;
begin
 DBEdit_NO_DOC.Enabled      := True;
 Edit_NO_DOC_ANO.Enabled    := True;
 Edit_NO_DOC_PAR.Enabled    := True;
 ComboTipoDocumento.Enabled := True;
end;

procedure TFormContasReceber.DesabilitaDocAberto;
begin
 DBEdit_NO_DOC.Enabled       := False;
 Edit_NO_DOC_ANO.Enabled     := False;
 Edit_NO_DOC_PAR.Enabled     := False;
 ComboTipoDocumento.Enabled   := False;
 cxDBDateEdit_DT_EMS.Enabled := False;
end;


procedure TFormContasReceber.HabilitaDocPago;
begin
 DBEdit_NO_DOC.Enabled           := True;
 Edit_NO_DOC_ANO.Enabled         := True;
 Edit_NO_DOC_PAR.Enabled         := True;
 ComboTipoDocumento.Enabled      := True;
 DBEdit_NO_DOC_ORI.Enabled       := True;
 ComboBox_ST_DOC.Enabled         := True;
 DBEdit_NM_CLI.Enabled           := True;
 DBLookup_ID_LOCAL.Enabled       := True;
 cxDBDateEdit_DT_RMS_COB.Enabled := True;
 DBEdit_CD_TIT_LOC.Enabled       := True;
 DBEdit_ST_TIT_LOC.Enabled       := True;
 Combo_SN_NEG.Enabled            := True;
 cxDBDateEdit_DT_EMS.Enabled     := True;
 cxDBDateEdit_DT_VCT.Enabled     := True;
 DBEdit_VR_DOC.Enabled           := True;
 DBEdit_VR_DEB_DOC.Enabled       := True;
 DBComboBox_TP_JUR.Enabled       := True;
 DBEdit_TX_JUR.Enabled           := True;
 DBEdit_VR_RCB.Enabled           := True;
 DBEdit_VR_JUR.Enabled           := True;
 DBEdit_VR_ABA_DCT.Enabled       := True;
 DBEdit_VR_DEV.Enabled           := True;
end;

procedure TFormContasReceber.DesabilitaDocPago;
begin
 DBEdit_NO_DOC.Enabled           := False;
 Edit_NO_DOC_ANO.Enabled         := False;
 Edit_NO_DOC_PAR.Enabled         := False;
 ComboTipoDocumento.Enabled      := False;
 DBEdit_NO_DOC_ORI.Enabled       := False;
 ComboBox_ST_DOC.Enabled         := False;
 DBEdit_NM_CLI.Enabled           := False;
 DBLookup_ID_LOCAL.Enabled       := False;
 cxDBDateEdit_DT_RMS_COB.Enabled := False;
 DBEdit_CD_TIT_LOC.Enabled       := False;
 DBEdit_ST_TIT_LOC.Enabled       := False;
 Combo_SN_NEG.Enabled            := False;
 cxDBDateEdit_DT_EMS.Enabled     := False;
 cxDBDateEdit_DT_VCT.Enabled     := False;
 DBEdit_VR_DOC.Enabled           := False;
 DBEdit_VR_DEB_DOC.Enabled       := False;
 DBComboBox_TP_JUR.Enabled       := False;
 DBEdit_TX_JUR.Enabled           := False;
 DBEdit_VR_RCB.Enabled           := False;
 DBEdit_VR_JUR.Enabled           := False;
 DBEdit_VR_ABA_DCT.Enabled       := False;
 DBEdit_VR_DEV.Enabled           := False;
 //FormContasReceber.cxDBDateEdit_DT_PGT.SetFocus;
end;

//Function RetZero(zeros: String; quant: integer): String;
//var
//     i, Tamanho: integer;
//     aux: String;
//begin
//     aux := zeros;
//     Tamanho := Length(zeros);
//     zeros := '';
//     for i := 1 to quant - Tamanho do
//          zeros := zeros + '0';
//     aux := zeros + aux;
//     Result := aux;
//end;

procedure TFormContasReceber.AcEditarExecute(Sender: TObject);
begin
 dmCadastro.CDSContasReceberNO_DOC.EditMask := '';
 inherited;
   TabSheet_DadosDocumentos.Show;
   if DMcadastro.CDSContasReceberVR_RCB.AsFloat >0 then
    begin
    calcularValorPago;
    end else
    begin
      EditValorFinal.Text := floattostr(DMcadastro.CDSContasReceberVR_DEB_DOC.AsFloat - DMcadastro.CDSContasReceberVR_ABA_DCT.AsFloat);
      EditValorFinal.Text := FORMATFLOAT('R$ ###,##0.00', STRTOFLOAT(EditValorFinal.Text));
    end;

 if dmCadastro.CDSContasReceberDT_PGT.IsNull then
 begin
   HabilitaDocPago;
   DesabilitaDocAberto;
   DBEdit_NO_DOC_ORI.SetFocus;

   Edit_NO_DOC_ANO.Text := copy(dmCadastro.CDSContasReceberNO_DOC.Value,12,02);
   Edit_NO_DOC_PAR.Text := copy(dmCadastro.CDSContasReceberNO_DOC.Value,14,02);
   DBEdit_NO_DOC.Text   := copy(dmcadastro.CDSContasReceberNO_DOC.Value,00,11);

 end else
 begin
  FormContasReceber.cxDBDateEdit_DT_PGT.SetFocus;
  DesabilitaDocPago;


  Edit_NO_DOC_ANO.Text := copy(dmCadastro.CDSContasReceberNO_DOC.Value,12,02);
  Edit_NO_DOC_PAR.Text := copy(dmCadastro.CDSContasReceberNO_DOC.Value,14,02);
  DBEdit_NO_DOC.Text   := copy(dmcadastro.CDSContasReceberNO_DOC.Value,00,11);

 end;



end;

procedure TFormContasReceber.AcGravarExecute(Sender: TObject);
begin

  dmCadastro.CDSContasReceberDT_ULT_MOD.AsDateTime := date;
  dmCadastro.CDSContasReceberNO_DOC.AsString := DBEdit_NO_DOC.Text+Edit_NO_DOC_ANO.Text+Edit_NO_DOC_PAR.Text;
  if ComboTipoDocumento.ItemIndex = 0  then
  begin
     dmCadastro.CDSContasReceberTP_DOC.AsString := 'D';
  end;

  if Combo_SN_NEG.ItemIndex = 0 then
  begin
    dmCadastro.CDSContasReceberSN_NEG.AsString := 'S';
  end;
  if Combo_SN_NEG.ItemIndex = 1 then
  begin
    dmCadastro.CDSContasReceberSN_NEG.AsString := 'N';
  end;



  inherited;
end;

procedure TFormContasReceber.AcIncluirExecute(Sender: TObject);
var
ano : string;
begin
HabilitaDocPago;

 if dmCadastro.CDSContasReceberDT_PGT.IsNull then
 begin
   DBEdit_VR_RCB.Enabled     := False;
   DBEdit_VR_JUR.Enabled     := False;
   DBEdit_VR_DEV.Enabled     := False;
   DBEdit_VR_ABA_DCT.Enabled := False
 end;
//
  dmCadastro.CDSContasReceberNO_DOC.EditMask := '';


  inherited;
   dmCadastro.CDSLocalCobranca.Open;
   Edit_NO_DOC_PAR.Clear;

  dmCadastro.CDSContasReceberDT_CAD.AsDateTime     := date;
  dmCadastro.CDSContasReceberDT_EMS.AsDateTime     := date;
  dmCadastro.CDSContasReceberDT_ULT_MOD.AsDateTime := date;
  dmCadastro.CDSContasReceberST_DOC.AsString       := 'N';
  dmCadastro.CDSContasReceberTP_JUR.AsString       := 'C';
  DMCadastro.CDSContasReceberTX_JUR.AsFloat        := 10;
  dmCadastro.CDSContasReceberID_LOCAL.AsInteger    := 6;

  HabilitaDocAberto;
  DBEdit_NO_DOC.SetFocus;

  ano := IntToStr(YearOf(Date));
  Edit_NO_DOC_ANO.Text := copy(ano,3);

  // DMcadastro.CDSContasReceberST_DOC.AsString := Copy(DBComboBox_ST_DOC.Items[DBComboBox_ST_DOC.ItemIndex,0,1,1]);

 end;

procedure TFormContasReceber.BtConsultarClick(Sender: TObject);
begin
  inherited;
if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Numero Documento %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
  DMcadastro.CDSContasReceber.Close;
  DMcadastro.SQLContasReceber.CommandText := '';
  DMcadastro.SQLContasReceber.CommandText :=  'select db_ctarec.*, db_cliente.nm_cli, '
                                           +'db_cliente.id as id_cliente, '
                                           +'db_cliente.no_cnp_cpf, '
                                           +'db_cliente.no_fon, '
                                           +'db_cliente.no_fax, '
                                           +'db_cep.nm_cid,db_cep.uf_cid, db_cep.nm_bai, db_cep.nm_rua, db_cep.no_cep from db_ctarec '
                                           +'inner join db_cliente on db_cliente.id = db_ctarec.id_cliente '
                                           +'inner join db_cep on db_cep.id =  db_cliente.id_cep '
                                           +'where no_doc  =:PConsulta ';

  DMcadastro.SQLContasReceber.ParamByName('pconsulta').AsString := EdConsulta.Text;
  DMcadastro.CDSContasReceber.Open;
 end;
end;

procedure TFormContasReceber.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormContasReceber.ContasaRecebernumPerodo1Click(Sender: TObject);
begin
  inherited;
try
  Application.CreateForm(TFormRelatorioCTAREC, FormRelatorioCTAREC);
  FormRelatorioCTAREC.ShowModal;
 finally
  FreeAndNil(FormRelatorioCTAREC);
 end;
end;

procedure TFormContasReceber.cxDBDateEdit_DT_PGTExit(Sender: TObject);
begin
if DMcadastro.CDSContasReceber.State in [dsEdit,dsInsert] then
  begin
    if (dmCadastro.CDSContasReceberDT_PGT.AsDateTime < dmCadastro.CDSContasReceberDT_EMS.AsDateTime) and
       (dmCadastro.CDSContasReceberDT_PGT.Asstring <> '') then
    begin
      showMessage('Data do Pagamento não pode ser menor que a data de Emissão!');
      //cxDBDateEdit_DT_PGT.SetFocus;
    end;
  end;


  if cxDBDateEdit_DT_PGT.Text <> '' then
   begin
     //Habilita os campos
     DBEdit_VR_RCB.Enabled     := True;
     DBEdit_VR_JUR.Enabled     := True;
     DBEdit_VR_DEV.Enabled     := True;
     DBEdit_VR_ABA_DCT.Enabled := True;
//     DBEdit_VR_RCB.SetFocus;
   end;
   if cxDBDateEdit_DT_PGT.Text = '' then
   begin
     //desabilita os campos
     DBEdit_VR_RCB.Enabled     := False;
     DBEdit_VR_JUR.Enabled     := False;
     DBEdit_VR_DEV.Enabled     := False;
     DBEdit_VR_ABA_DCT.Enabled := False;
     //zera os valores dos campos
     if dmcadastro.CDSContasReceberVR_RCB.Value > 0 then
      begin
       dmCadastro.CDSContasReceberVR_RCB.Value     := 0;
       dmCadastro.CDSContasReceberVR_JUR.Value     := 0;
       dmCadastro.CDSContasReceberVR_DEV.Value     := 0;
       dmCadastro.CDSContasReceberVR_ABA_DCT.Value := 0;
      end;
   end;
inherited;




end;

procedure TFormContasReceber.cxDBDateEdit_DT_VCTExit(Sender: TObject);
begin
if DMcadastro.CDSContasReceber.State in [dsEdit,dsInsert] then
  begin
  if (dmCadastro.CDSContasReceberDT_VCT.AsDateTime < dmCadastro.CDSContasReceberDT_EMS.AsDateTime) and
     (dmCadastro.CDSContasReceberDT_VCT.Asstring <> '') then
   begin
      showMessage('Data do Pagamento não pode ser menor que a data de Emissão!');
      cxDBDateEdit_DT_VCT.SetFocus;
   end;
  end;

  if dmCadastro.CDSContasReceberDT_VCT.IsNull  then
  begin
    ShowMessage('Data de Vencimento deve ser Informada!!!');
  end;

  inherited;

end;

procedure TFormContasReceber.DBEdit_ID_VENExit(Sender: TObject);
begin
  inherited;

//   DBEdit_ID_VEN.Text :=  Format('%.3d', [strtoint(DBEdit_ID_VEN.Text)]);
//
//   if (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
//    if (DBEdit_ID_VEN.Text <> '')   then
//  begin
//     DsVendedor.Enabled := true;
//    if not DsVendedor.DataSet.Locate('ID',DBEdit_ID_VEN.Text,[]) then
//        begin
//        ShowMessage('Código do Vendedor não encontrado!');
//        //EdCodbanco.Clear;
//        DsVendedor.Enabled := false;
//        DBEdit_ID_VEN.SetFocus;
//        end
//        else
//        dspadrao.DataSet.FieldByName('id_ven').AsInteger := DMcadastro.CDSVendedorID.AsInteger;
//  end else begin
//     dspadrao.DataSet.FieldByName('id_ven').Clear;
//     DsVendedor.Enabled := false;
//  end;

 //     dmCadastro.CDSVendedor.Open;
//   DBEdit_ID_VEN.Text :=  Format('%.3d', [strtoint(DBEdit_ID_VEN.Text)]);

   if (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
    if (DBEdit_ID_VEN.Text <> '')   then
  begin
     DsVendedor.Enabled := true;
    if dmCadastro.CDSVendedor.Locate('ID',DBEdit_ID_VEN.Text,[]) then
        begin
         dmCadastro.CDSContasReceberID_VEN.AsInteger := DMcadastro.CDSVendedorID.AsInteger;
        end;
    end else begin
        dmCadastro.CDSContasReceberID_VEN.Clear;
        DsVendedor.Enabled := false;
  end;
end;

procedure TFormContasReceber.DBEdit_ID_VENKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if not (key in ['0'..'9',#8,#13]) then
     key := #0;
end;

procedure TFormContasReceber.DBEdit_NM_CLIExit(Sender: TObject);
begin
  inherited;
 if DBEdit_NM_CLI.Text = '' then
//    ShowMessage('O nome do Cliente deve ser informado!');
  try
      Application.CreateForm(TFormClientes,FormClientes);
      FormClientes.showmodal;
     finally
      FormClientes.Free;
  end;

end;

procedure TFormContasReceber.DBEdit_NM_CLIKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if  (Key = VK_RETURN) and (DBEdit_NM_CLI.Text = '')  then
  begin
     try
      Application.CreateForm(TFormClientes,FormClientes);
      FormClientes.showmodal;
     finally
      FormClientes.Free;
  end;
  // criar a procedure la no FormClientes
  // e criar um evento no doubleclick do dbgrid no form clientes
  inherited;

 end;
end;

procedure TFormContasReceber.DBEdit_NO_DOCExit(Sender: TObject);
begin
if DBEdit_NO_DOC.Text = '' then
  begin
  DBEdit_NO_DOC.Text := '0';
  ShowMessage('Número do Documento deve ser Informado!');


  end;
  inherited;
 // DBEdit_NO_DOC.text := FormatFloat('000000', dmCadastro.CDSContasReceberNO_DOC.Value);

 /// DBEdit_NO_DOC.Text := FormatFloat('00000000000', StrToFloat(DBEdit_NO_DOC.Text));   *** essa quando eh numero inteiro

 DBEdit_NO_DOC.Text := RPad(DBEdit_NO_DOC.Text, '0', 11);

end;

procedure TFormContasReceber.DBEdit_NO_DOCKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormContasReceber.DBEdit_NO_DOC_ORIEnter(Sender: TObject);
begin
  inherited;
  if DBEdit_NO_DOC_ORI.Text = '' then
  begin
    DBEdit_NO_DOC_ORI.Text  := copy(DBEdit_NO_DOC.Text,1,11);
  end;
end;

procedure TFormContasReceber.DBEdit_NO_DOC_ORIExit(Sender: TObject);
begin
  inherited;
if DBEdit_NO_DOC_ORI.Text = '' then
  begin
    DBEdit_NO_DOC_ORI.Text  := copy(DBEdit_NO_DOC.Text,1,11);
  end;
end;

procedure TFormContasReceber.DBEdit_VR_ABA_DCTExit(Sender: TObject);
begin
  inherited;
  if DMcadastro.CDSContasReceberVR_ABA_DCT.AsFloat <= 0 then
     DMcadastro.CDSContasReceberVR_ABA_DCT.AsFloat := 0.00;
     calcularValorPago;
     calcJurus;
end;

procedure TFormContasReceber.DBEdit_VR_DEB_DOCEnter(Sender: TObject);
begin
  inherited;
 if dmcadastro.CDSContasReceberVR_DOC.Value >= 0  then
 begin
    dmcadastro.CDSContasReceberVR_DEB_DOC.Value := dmcadastro.CDSContasReceberVR_DOC.Value;
 end;
end;

procedure TFormContasReceber.DBEdit_VR_DOCExit(Sender: TObject);
begin
  inherited;
 if dmcadastro.CDSContasReceberVR_DOC.Value <= 0  then
 begin
   MessageDlg('Valor do documento de ser informado!', mtWarning, [mbok], 0);
 end;
end;

procedure TFormContasReceber.DBEdit_VR_JURExit(Sender: TObject);
begin
  inherited;
  if DMcadastro.CDSContasReceber.State in [dsEdit,dsInsert] then
   begin
   if (DMcadastro.CDSContasReceberVR_JUR.AsFloat <= 0) then
      DMcadastro.CDSContasReceberVR_JUR.AsFloat := 0.00;
      calcularValorPago;
      calcJurus;
   end;
end;


procedure TFormContasReceber.calcJurus;
 begin
   if (DMcadastro.CDSContasReceber.State in [dsEdit,dsInsert] ) and
      (DMcadastro.CDSContasReceberVR_RCB.AsFloat > DMcadastro.CDSContasReceberVR_DEB_DOC.AsFloat )then
        begin
         ShowMessage('Valor pago maior que o valor devido...'+#13+
                     'Lançar como Juros a diferença !');

         DMcadastro.CDSContasReceberVR_JUR.AsFloat := DMcadastro.CDSContasReceberVR_RCB.AsFloat - DMcadastro.CDSContasReceberVR_DEB_DOC.AsFloat;
         DMcadastro.CDSContasReceberVR_RCB.AsFloat := DMcadastro.CDSContasReceberVR_DEB_DOC.AsFloat;
         calcularValorPago;
         end;
end;


procedure TFormContasReceber.DBEdit_VR_RCBExit(Sender: TObject);
begin
//  if (cxDBDateEdit_DT_PGT.Text <> '') and (dmcadastro.CDSContasReceberVR_RCB.Value <= 0) then
//  begin
//    ShowMessage('Valor Recebido deve ser maior que zero!');
//  end;

  inherited;
   if (DMcadastro.CDSContasReceberVR_RCB.AsFloat <= 0) and (DMcadastro.CDSContasReceberDT_PGT.AsString <> '')
                                                       and (DMcadastro.CDSContasReceber.State in [dsedit,dsinsert]) then
      begin
       ShowMessage('Favor informar um valor válido para valor pago!');
       DMcadastro.CDSContasReceberVR_RCB.AsFloat := DMcadastro.CDSContasReceberVR_DEB_DOC.AsFloat ;
       calcularValorPago;
       abort;
      end;
       pagamentoparcial;
       calcularValorPago;
       calcJurus;
end;



procedure TFormContasReceber.calcularValorPago;
begin
  if (DMcadastro.CDSContasReceber.State in [dsEdit,dsInsert]) and (FormContasReceber.DBEdit_VR_RCB.Enabled =  true) then
   begin
    EditValorFinal.Text := floattostr(DMcadastro.CDSContasReceberVR_RCB.AsFloat
    + DMcadastro.CDSContasReceberVR_JUR.AsFloat - DMcadastro.CDSContasReceberVR_ABA_DCT.AsFloat);
    EditValorFinal.Text := FORMATFLOAT('R$ ###,##0.00', STRTOFLOAT(EditValorFinal.Text));
   end;
end;

procedure TFormContasReceber.DBGrid1DblClick(Sender: TObject);
begin
//if (FormContasReceber <> nil) then
//    begin
//    CTARECClientes(sender);
//    close;
//    end
//  else
  inherited;
end;

procedure TFormContasReceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

 if dmcadastro.CDSContasReceber.FieldByName('DT_VCT').AsDateTime < date then
 begin
     //DBGrid1.canvas.brush.color:=$005F5BD0; // pinta Vermelho
     //DBGrid1.canvas.fillrect(rect); // pinta a célula
     DBGrid1.Canvas.Font.Color := clred;
     DBGrid1.defaultdrawdatacell(rect,column.field,state); // pinta o texto padrão


// if gdSelected in State then
//  DBGrid1.Canvas.Font.Color := clWhite else DBGrid1.Canvas.Font.Color := clRed;
//  DBGrid1.Canvas.Font.Style := [fsBold];
//  DBGrid1.Canvas.FillRect(Rect);
//  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

 end;

end;

procedure TFormContasReceber.EdconsultaExit(Sender: TObject);
begin
  inherited;
  EdConsulta.EditMask := '00000000000\-00\/00;0;_';
  EdConsulta.Text := RPad(EdConsulta.Text, '0', 15);
end;

procedure TFormContasReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 DMCadastro.CDSLocalCobranca.Close;
 DSPadrao.DataSet.Close;
 DSVendedor.DataSet.Close;
 dmCadastro.CDSClientes.Close;
 Action := caFree;
end;

procedure TFormContasReceber.FormShow(Sender: TObject);
begin
  inherited;
  dmCadastro.CDSContasReceber.Open;
  dmCadastro.CDSLocalCobranca.Open;
  dmCadastro.CDSClientes.Open;
  dmCadastro.CDSVendedor.Open;
end;

procedure TFormContasReceber.TabCadastroShow(Sender: TObject);
begin
  inherited;

  //EditValorFinal.Text    := CurrToStr(dmCadastro.CDSContasReceber.FieldByName('VR_DOC').AsFloat);    //olhar depois
  EditValorFinal.Text    := 'R$ '+CurrToStrF(StrToCurrDef(Trim(EditValorFinal.Text),0),ffNumber,2);

  if dmCadastro.CDSContasReceberTP_DOC.AsString = 'D'  then
  begin
   ComboTipoDocumento.ItemIndex := 0;
  end;
end;

procedure TFormContasReceber.TabConsultaShow(Sender: TObject);
begin
  inherited;
   dmCadastro.CDSContasReceberNO_DOC.EditMask := '00000000000\-00\/00;0;_';
end;



procedure TFormContasReceber.pagamentoparcial;
 var CDSClone: TClientDataSet;
            I: Integer;
            q: TSQLQuery;
begin
      if (dmCadastro.CDSContasReceberVR_RCB.AsCurrency < dmCadastro.CDSContasReceberVR_DEB_DOC.AsCurrency )
     and (dmCadastro.CDSContasReceberVR_DEB_DOC.AsCurrency >0)
     and (dmCadastro.CDSContasReceberVR_RCB.AsCurrency >0)
     and (DMcadastro.CDSContasReceber.State in [dsEdit,dsInsert])
     and (DMcadastro.CDSContasReceberDT_PGT.AsString <> '')
     and (FormContasReceber.GroupBox6.Enabled = true) then
         begin
         if MessageDlg('O valor informado é menor que o valor devido.'+#13+
                       'O pagamento é parcial?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
          begin
              if FormContasReceber.Verifica_Campos_Em_Branco then
                begin
                //FormContasPagar.btnGravar.Click;
                 try
                 DMcadastro.CDSContasReceber.ApplyUpdates(0);
                 finally
                 FormContasReceber.PageControl1.ActivePage := TabConsulta;
                 end;
                end else
                abort;
            try
              CDSClone := TClientDataSet.Create(Application);   //gerar novo documento com o debito da diferenca
              CDSClone.CloneCursor(dmCadastro.CDSContasReceber, True);
              dmCadastro.CDSContasReceber.Append;
              for I := 0 to CDSClone.FieldCount - 1 do
              dmCadastro.CDSContasReceber.Fields[I].Value := CDSClone.Fields[I].Value;
              CDSClone.Close;
              Q :=  TSQLQuery.Create(nil);
              Q.SQLConnection :=  DMcadastro.SQLConnection1;
              q.SQL.Clear;
              q.SQL.Add('select gen_id(GEN_DB_CTAREC_ID,1) from rdb$database');
              q.Open;
              DMcadastro.CDSContasReceberid.AsInteger       :=  q.FieldByName('gen_id').AsInteger;
              DMcadastro.CDSContasReceberVR_DEB_DOC.AsFloat :=  DMcadastro.CDSContasReceberVR_DEB_DOC.AsFloat -  DMcadastro.CDSContasReceberVR_RCB.AsFloat;
              DMcadastro.CDSContasReceberDT_PGT.Clear;
              DMcadastro.CDSContasReceberVR_RCB.AsFloat     := 0;
              DMcadastro.CDSContasReceberVR_JUR.AsFloat     := 0;
              DMcadastro.CDSContasReceberVR_ABA_DCT.AsFloat := 0;
              DMcadastro.CDSContasReceber.ApplyUpdates(0);
            finally
              CDSClone.Free;
              q.Free;
            end;
          end else
          //informa o valor pago, e coloca a diferença como abatimento desconto
           begin
            ShowMessage('Valor pago menor que o valor devido...'+#13+
                        'Lançar como Abatimento/Desconto o valor pago a menos !');

            dmCadastro.CDSContasReceberVR_ABA_DCT.AsFloat := dmCadastro.CDSContasReceberVR_DEB_DOC.AsFloat - dmCadastro.CDSContasReceberVR_RCB.AsFloat;
            dmCadastro.CDSContasReceberVR_RCB.AsFloat     := dmCadastro.CDSContasReceberVR_DEB_DOC.AsFloat;
           end;
         end;
 end;
end.
