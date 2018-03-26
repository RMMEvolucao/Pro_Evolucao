unit UFrmFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls,maskUtils, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinGlassOceans, dxSkinOffice2013White,
  dxSkinVisualStudio2013Light, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, dxSkinWhiteprint,
  cxHyperLinkEdit, cxGroupBox, AdvSmoothSlider, DBAdvSmoothSlider, ACBrBase,
  ACBrValidador, cxClasses, dxCalloutPopup, dxSkinscxPCPainter,
  dxLayoutContainer, dxLayoutControl, Vcl.Menus, cxButtons, AdvSmoothPanel,
  dxGDIPlusClasses, cxImage, cxLabel, cxDBLabel, dxSkinLiquidSky,
  dxSkinOffice2007Black, dxSkinOffice2013LightGray, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, frxDMPExport, Vcl.AppEvnts, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox ,REST.Client, IPPeerClient,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.ToolWin;

type
  TFormFornecedor = class(TFormCadPadrao)
    PageControlCadastro: TPageControl;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    TabSheetCadastro: TTabSheet;
    TabSheetContatoBanco: TTabSheet;
    TabSheetObservacao: TTabSheet;
    Label3: TLabel;
    DBEdit_DT_CAD: TcxDBDateEdit;
    ID: TDBEdit;
    DBEdit_NO_CNP_CPF: TcxDBTextEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboST_FOR: TDBComboBox;
    DBLookupNM_CTG_CLI: TDBLookupComboBox;
    DSCategoria: TDataSource;
    DBEditNM_FOR: TDBEdit;
    DBEditNM_FAN: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    DBEdit_UF_CID: TDBEdit;
    DBEdit_NM_CID: TDBEdit;
    DBEdit_NM_RUA: TDBEdit;
    DBEdit_NO_EDR: TDBEdit;
    DBEdit_NO_FON: TDBEdit;
    DBEdit_E_MAIL: TDBEdit;
    GroupBox4: TGroupBox;
    DBEdit_E_MAIL_CTT: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxDBHomePage: TcxDBHyperLinkEdit;
    DBEdit_DS_CPL: TDBEdit;
    DBEdit_NM_BAI: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit_NO_FAX: TDBEdit;
    DBEdit_NO_CEL: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit_NO_INS_EST: TDBEdit;
    Label24: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label25: TLabel;
    DBEditNM_CTT_FIN: TDBEdit;
    DBEditNO_FON_FIN: TDBEdit;
    DBEdit_NO_RAM_FIN: TDBEdit;
    DBEditE_MAIL_FIN: TDBEdit;
    DBEditNM_CTT_VEN: TDBEdit;
    DBEditNO_FON_VEN: TDBEdit;
    DBEditE_MAIL_VEN: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    DBEditNO_RAM_VEN: TDBEdit;
    Label32: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    DBMemo_DS_OBS: TDBMemo;
    DSCep: TDataSource;
    ACBrValidador1: TACBrValidador;
    DSRepresentante: TDataSource;
    DBEdit_NO_CEP: TDBEdit;
    DBEdit_NM_CTT: TDBEdit;
    dxCalloutPopup1: TdxCalloutPopup;
    btn_cons_cep: TcxButton;
    Img_fundo: TcxImage;
    PanelCep: TPanel;
    DSCobranca: TDataSource;
    FR_Fonercedor: TfrxReport;
    frxDBFornecedor: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    FR_Fornec_matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    cxGroupBox2: TcxGroupBox;
    Label8: TLabel;
    EdCodbanco: TEdit;
    Dbedit_NM_LOC_COB: TDBEdit;
    Label34: TLabel;
    Dbedit_CD_AGC: TDBEdit;
    Label35: TLabel;
    DBEdit_NO_CTA_COR: TDBEdit;
    ApplicationEvents1: TApplicationEvents;
    DSPaises: TDataSource;
    cxDBLookupPaises: TcxDBLookupComboBox;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure AcIncluirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AcGravarExecute(Sender: TObject);
    procedure DBEdit_NO_INS_ESTExit(Sender: TObject);
    procedure DBEdit_NO_CNP_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure btn_cons_cepClick(Sender: TObject);
    procedure DBEditNM_FANExit(Sender: TObject);
    procedure DBEdit_E_MAIL_CTTKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditCD_BCOKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_CD_AGCKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditNO_CTA_CORKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit_NO_RAM_FINKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditNO_RAM_VENKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo_DS_OBSKeyPress(Sender: TObject; var Key: Char);
    procedure BtConsultarClick(Sender: TObject);
    procedure TabSheetContatoBancoShow(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure DBEditNM_FOREnter(Sender: TObject);
    procedure DBEditNO_CTA_CORExit(Sender: TObject);
    procedure DBEditNO_CTA_COREnter(Sender: TObject);
    procedure FR_FonercedorGetValue(const VarName: string; var Value: Variant);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure FR_Fornec_matricialGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure EdCodbancoExit(Sender: TObject);
    procedure EdCodbancoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_NO_CTA_CORExit(Sender: TObject);
    procedure DBEdit_NO_CTA_COREnter(Sender: TObject);
    procedure codbanco;
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbConsultaSelect(Sender: TObject);
    procedure contacorrente(sender: tobject);
    procedure CTAPAGFornecedor(sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit_NO_CNP_CPFExit(Sender: TObject);
    procedure aliementarFornecedorJson(sender : TObject);
    procedure consultaCPFExistente;
    procedure AcPesquisarExecute(Sender: TObject);
    private


    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormFornecedor: TFormFornecedor;

implementation



{$R *.dfm}

uses UDmCadastro, UFrmCep, UFuncoes, UFrmPrincipal, uFrmContasPagar,
  UFrmConsultaCNPJ, rest.types,system.json, System.StrUtils  ;

Procedure VerificaCampos(Sender:Tobject);
Begin
 if FormFornecedor.DBEditNM_FOR.Text  ='' then
 begin

 Application.MessageBox('O nome do Fornecedor dever ser Informado!','Aviso',mb_Ok+mb_IconExclamation);
 end;

 If FormFornecedor.DBEditNM_FAN.Text = '' then
 begin
 Application.MessageBox('O nome Fantasia da Empresa dever ser Informado!','Aviso',mb_Ok+mb_IconExclamation);
 end;

 end;
procedure TFormFornecedor.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormFornecedor.AcEditarExecute(Sender: TObject);
begin
  inherited;
PageControlCadastro.ActivePage := TabSheetCadastro;
//DBLookupNM_CTG_CLI.SetFocus;
codbanco;
contacorrente(sender);
end;

procedure TFormFornecedor.AcGravarExecute(Sender: TObject);
begin
// Panel2.SetFocus;
 //DBEdit_NO_CNP_CPF.OnExit(Sender);
 //DBEdit_NO_INS_EST.OnExit(Sender);

    if (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then // verifica se o codigo do banco é valido
    if (EdCodbanco.Text <> '')   then
  begin
     Dscobranca.Enabled := true;
    if not Dscobranca.DataSet.Locate('CD_LOC_COB',EdCodbanco.Text,[]) then
        begin
        EdCodbanco.Clear;
        Dscobranca.Enabled := false;
        EdCodbanco.SetFocus;
        abort;
        end
        else
        dspadrao.DataSet.FieldByName('id_banco').AsInteger := DMcadastro.CDSLocalCobrancaID.AsInteger;
  end else begin
     dspadrao.DataSet.FieldByName('id_banco').Clear;
     Dscobranca.Enabled := false;
  end;



 inherited;

end;


procedure TFormFornecedor.cbConsultaSelect(Sender: TObject);
begin
  inherited;
   Edconsulta.Clear;
end;

procedure TFormFornecedor.codbanco;
begin
 if Dscobranca.DataSet.Locate('id', DSpadrao.DataSet.FieldByName('id_banco').AsInteger,[]) then
    begin
     EdCodbanco.Text := Dscobranca.DataSet.FieldByName('CD_LOC_COB').AsString
    end
     else begin
     EdCodbanco.Text := '';
     DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask := '';
     Dscobranca.Enabled := false;
     end;
end;


procedure TFormFornecedor.AcIncluirExecute(Sender: TObject);
begin
  inherited;
 DSPadrao.DataSet.FieldByName('DT_CAD').AsDateTime := date;
 DMcadastro.CDSFornecedorST_FOR.AsString := 'ATIVO';
 //DBLookupNM_CTG_CLI.KeyValue := DMCadastro.CDSCategoria.FieldByName('NM_CTG_CLI').Value;
 //DBLookupNM_CTG_CLI.DropDown;
 DBLookupNM_CTG_CLI.SetFocus;
 DMCadastro.CDSFornecedorCD_PAI.AsString := '1052';
 DMCadastro.CDSFornecedorID_CATEGORIA.AsString := '1';
end;

procedure TFormFornecedor.AcPesquisarExecute(Sender: TObject);
begin
  inherited;
if not PanelConsulta.Visible = true then
     begin
       PanelConsulta.Visible :=  true;
     end;

end;

procedure TFormFornecedor.aliementarFornecedorJson(sender: TObject);
var
objeto : TJSONObject;
q : TSQLQuery;
cep: string;
contsql : integer;

begin
q := TSQLQuery.Create(nil);
q.SQLConnection := DMcadastro.SQLConnection1;
q.SQL.Add('SELECT db_fornecedor.id, db_fornecedor.nm_for, Count(*) FROM db_fornecedor where db_fornecedor.no_cnp_cpf =:pCEF group by id,nm_for');
q.ParamByName('pcef').AsString := DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString;
q.Open;

if q.FieldByName('count').AsInteger >1  then
 begin
  ShowMessage('CPF/CNPJ ja cadastrado no fornecedor código: '+q.FieldByName('id').AsString +' Nome: '+ q.FieldByName('nm_for').AsString + ' !!! ');
  abort;
 end;

RESTClient1.BaseURL := 'https://www.receitaws.com.br/v1/cnpj/'+DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString;
RESTRequest1.Execute;
objeto :=  RESTResponse1.JSONValue as TJSONObject;

DSpadrao.DataSet.FieldByName('NM_FOR').AsString   := objeto.GetValue('nome').Value;
DSpadrao.DataSet.FieldByName('NM_FAN').AsString   := objeto.GetValue('fantasia').Value;
DSpadrao.DataSet.FieldByName('NO_EDR').AsString   := objeto.Getvalue('numero').Value;
DSpadrao.DataSet.FieldByName('DS_CPL').AsString   := objeto.GetValue('complemento').Value;
//DSpadrao.DataSet.FieldByName('DT_ABT').AsDateTime := strtodate(objeto.GetValue('abertura').Value);


q :=  TSQLQuery.Create(nil);  // consulta do cep do cliente
q.SQLConnection := DMcadastro.SQLConnection1;
q.SQL.Clear;

q.SQL.Add('select count(*) as contador  from db_cep where db_cep.no_cep =:pCEp'); {sql para contar a quantidade de registro};
cep := ansireplacestr(objeto.GetValue('cep').Value,'.','');
q.ParamByName('pCEP').AsString := cep;
q.Open;
contsql := q.FieldByName('contador').AsInteger;

if q.FieldByName('contador').AsInteger = 1 then
   begin
    q.SQL.Clear;
    q.SQL.Add('select * from db_cep where db_cep.no_cep =:pCEp');
    cep := ansireplacestr(objeto.GetValue('cep').Value,'.','');
    q.ParamByName('pCEP').AsString := cep;
    q.Open;
    DMcadastro.CDSFornecedor.FieldByName('ID_CEP').AsInteger := q.FieldByName('ID').AsInteger;
    DMcadastro.CDSFornecedor.FieldByName('NM_BAI').AsString  := q.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSFornecedor.FieldByName('NM_RUA').AsString  := q.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSFornecedor.FieldByName('NM_CID').AsString  := q.FieldByName('NM_CID').AsString;
    DMcadastro.CDSFornecedor.FieldByName('UF_CID').AsString  := q.FieldByName('UF_CID').AsString;
    DMcadastro.CDSFornecedor.FieldByName('NO_CEP').AsString  := q.FieldByName('NO_CEP').AsString;
   end;
     if contsql > 1 then
     begin
      ShowMessage('Existe mais de um endereço cadastrado com esse cep ...'+#13+'Favor cadastrar endereço manualmente !!!');
     end;
q.Free;
end;



procedure TFormFornecedor.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  inherited;
  if Pos('Invalid input', E.Message) > 0 then
     begin
        ShowMessage('Telefone invalido!');
        DBEdit_NO_FAX.SetFocus;
        exit;
     end;
end;

procedure TFormFornecedor.BtConsultarClick(Sender: TObject);
begin
  inherited;
  if (cbConsulta.ItemIndex = 0) and (Edconsulta.text <> '')
  then { consulta por Código Fornecedor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSFornecedor.Close;
    DMcadastro.SQLFornecedor.CommandText := '';
    DMcadastro.SQLFornecedor.CommandText :=    'select db_Fornecedor.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_Fornecedor inner join db_cep on db_cep.id = db_Fornecedor.id_cep '
                                               +'where DB_Fornecedor.ID  =:PConsulta ';
    DMcadastro.SQLFornecedor.ParamByName('pconsulta').AsInteger := strtoint(Edconsulta.text);
    DMcadastro.CDSFornecedor.open;
  end;

  if (cbConsulta.ItemIndex = 1) and (Edconsulta.text <> '')
  then { consulta por Nome Forncecedor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSFornecedor.Close;
    DMcadastro.SQLFornecedor.CommandText := '';
    DMcadastro.SQLFornecedor.CommandText :=     'select db_Fornecedor.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_Fornecedor inner join db_cep on db_cep.id = db_Fornecedor.id_cep '
                                               +'where DB_FORNECEDOR.NM_FOR containing  :pConsulta';
    DMcadastro.SQLFornecedor.ParamByName('pconsulta').AsString := Edconsulta.text;
    DMcadastro.CDSFornecedor.open;
  end;

  if (cbConsulta.ItemIndex = 2) and (Edconsulta.text <> '')
  then { consulta por Cidade Forncecedor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSFornecedor.Close;
    DMcadastro.SQLFornecedor.CommandText := '';
    DMcadastro.SQLFornecedor.CommandText := 'select db_Fornecedor.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_Fornecedor inner join db_cep on db_cep.id = db_Fornecedor.id_cep '
                                               +'where db_cep.NM_CID containing  :pConsulta ';
    DMcadastro.SQLFornecedor.ParamByName('pconsulta').AsString :=Edconsulta.text;
    DMcadastro.CDSFornecedor.open;
  end;
end;

procedure TFormFornecedor.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormFornecedor.btn_cons_cepClick(Sender: TObject);
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

procedure TFormFornecedor.DBEdit_NO_INS_ESTExit(Sender: TObject);
begin
 if (DBEdit_NO_INS_EST.text <> '') and (DSPadrao.DataSet.FieldByName('UF_CID').AsString <> '') then
  begin
    ACBrValidador1.TipoDocto := docInscEst;
    ACBrValidador1.Documento := DBEdit_NO_INS_EST.text;
    ACBrValidador1.Complemento := DSPadrao.DataSet.FieldByName('UF_CID').AsString;

    if not ACBrValidador1.Validar then
    begin
      beep;
        MessageDlg('Numero Inscrição Estadual Inválido!', mtInformation, [mbOk], 0);
        DBEdit_NO_INS_EST.SetFocus;
        abort;
    end;
  end
  else
  begin
    showmessage('Favor informar o CEP antes de adcionar a Inscrição Estadual / Favor informar Inscrição Estadual !');
  end;
end;

procedure TFormFornecedor.DBEdit_NO_RAM_FINKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormFornecedor.DBGrid1DblClick(Sender: TObject);
begin
if (FormContasPagar <> nil) then
    begin
    CtaPagFornecedor(sender);
    close;

    end
  else
  inherited;

end;

procedure TFormFornecedor.DBMemo_DS_OBSKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
Key := AnsiUpperCase( Key )[1];
end;

procedure TFormFornecedor.EdCodbancoExit(Sender: TObject);
begin
  inherited;
  if (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
    if (EdCodbanco.Text <> '')   then
  begin
     Dscobranca.Enabled := true;
    if not Dscobranca.DataSet.Locate('CD_LOC_COB',EdCodbanco.Text,[]) then
        begin
        ShowMessage('Código de banco não encontrado!');
        //EdCodbanco.Clear;
        Dscobranca.Enabled := false;
        EdCodbanco.SetFocus;
        abort;
        end
        else
        dspadrao.DataSet.FieldByName('id_banco').AsInteger := DMcadastro.CDSLocalCobrancaID.AsInteger;
  end else begin
     dspadrao.DataSet.FieldByName('id_banco').Clear;
     Dscobranca.Enabled := false;
  end;
end;

procedure TFormFornecedor.EdCodbancoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormFornecedor.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FR_Fonercedor.PrepareReport;
  frxXLSExport1.DefaultPath   := CAMINHOxls;
  frxXLSExport1.FileName     := 'rFornecedor'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FR_Fonercedor.Export(frxXLSExport1);
end;

procedure TFormFornecedor.ExportarPDF1Click(Sender: TObject);
var caminhoRep : string;
begin
  inherited;
  CaminhoRep := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FR_Fonercedor.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoRep;
  frxPDFExport1.FileName := 'rFornecedor_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FR_Fonercedor.Export(frxPDFExport1);

end;

procedure TFormFornecedor.DBEditCD_BCOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormFornecedor.DBEditNM_FANExit(Sender: TObject);
begin
  inherited;
if DBEdit_UF_CID.Text  = '' then
     begin
     btn_cons_cep.Click;

     end;
   //  cxDBLookupPaises.SetFocus;
end;

procedure TFormFornecedor.DBEditNM_FOREnter(Sender: TObject);
begin
  inherited;
 //if dbedit_NO_CNP_CPF = '' then
    //DBEdit_NO_CNP_CPF.SetFocus  ;
end;

procedure TFormFornecedor.DBEditNO_CTA_COREnter(Sender: TObject);
begin
  inherited;
 DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask := '';
end;

procedure TFormFornecedor.DBEditNO_CTA_CORExit(Sender: TObject);
var quant ,I: integer;
begin
  inherited;

  quant :=  Length(DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').asstring);
  DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask := '';
   for I := 0 to quant do
     begin
     if I = quant-1 then
     DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask + '-#;0'
     else
     DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask + '#';

     end;
end;

procedure TFormFornecedor.DBEditNO_CTA_CORKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormFornecedor.DBEditNO_RAM_VENKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormFornecedor.DBEdit_CD_AGCKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormFornecedor.DBEdit_E_MAIL_CTTKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
 begin

 showmessage('Enter');
  PageControlCadastro.ActivePage := TabSheetContatoBanco;
  DBEditNM_CTT_FIN.SetFocus;
  end;
  inherited;

end;

procedure TFormFornecedor.DBEdit_NO_CNP_CPFExit(Sender: TObject);
var cnpj : string;
begin
  inherited;
    if (DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString <> '') and (dspadrao.DataSet.State in [dsEdit, dsInsert]) then
    begin
    cnpj :=  AnsiReplaceStr(DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString, '.','');
    cnpj := AnsiReplaceStr(cnpj,'-','');
    cnpj := AnsiReplaceStr(cnpj,'/','');
    DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString := cnpj;
    end;

    begin
      if (Length(DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString) = 14) and (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
          begin
          try
          Application.CreateForm(TFormConsultaCNPJ,FormConsultaCNPJ);
          finally
          FormConsultaCNPJ.ShowModal;
          FormConsultaCNPJ.Free;
          end;
          end;

      if (Length(DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString) = 14) and (DSpadrao.DataSet.State in [dsInsert,dsEdit])  then
         begin
          consultaCPFExistente;
         end;
    end;

end;

procedure  TFormFornecedor.consultaCPFExistente;
var q : tsqlquery;
    cpf : string;
begin
q := TSQLQuery.Create(nil);
q.SQLConnection := DMcadastro.SQLConnection1;
q.SQL.Add('SELECT db_fornecedor.id, db_fornecedor.nm_for, Count(*) FROM db_fornecedor where db_fornecedor.no_cnp_cpf =:pCEF group by id,nm_for');
q.ParamByName('pcef').AsString := DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString;
q.Open;

if (q.FieldByName('count').AsInteger >=1) and (q.FieldByName('id').AsInteger <> DSpadrao.DataSet.FieldByName('id').AsInteger)  then
 begin
  ShowMessage('CPF/CNPJ ja cadastrado no cliente código: '+q.FieldByName('id').AsString +' Nome: '+ q.FieldByName('nm_for').AsString + ' !!! ');
  DBEdit_NO_CNP_CPF.SetFocus;
  abort;
  end;

end;



procedure TFormFornecedor.DBEdit_NO_CNP_CPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0;
end;



procedure TFormFornecedor.DBEdit_NO_CTA_COREnter(Sender: TObject);
begin
  inherited;
DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask := '';
end;

procedure TFormFornecedor.DBEdit_NO_CTA_CORExit(Sender: TObject);
begin
  inherited;
contacorrente(sender);
end;

procedure TFormFornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  dmCadastro.CDSCategoria.Close;
  dmCadastro.CDSFornecedor.Close;
  dmCadastro.CDSRepresentante.Close;

 if FormContasPagar = nil  then
  begin
  dmCadastro.CDSLocalCobranca.Close;
  end;

  dmCadastro.CDSPaises.Close;
end;

procedure TFormFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
// FormFornecedor.Caption := 'Cadastro de Fornecedores'+' Versão: ' + GetBuildInfo(FormFornecedor.Caption);
//scaleby(80,100);
 DMcadastro.CDSFornecedor.Close;
 DMcadastro.SQLFornecedor.CommandText := '';
 DMcadastro.SQLFornecedor.CommandText :=  'SELECT db_fornecedor.*,db_cep.nm_bai,db_cep.nm_cid, '
                                         +'db_cep.nm_rua,db_cep.no_cep,db_cep.uf_cid FROM db_fornecedor '
                                         +'INNER JOIN db_cep ON db_cep.id = db_fornecedor.id_cep';
 DMcadastro.CDSFornecedor.open;

end;

procedure TFormFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  dmCadastro.CDSCategoria.Open;
  dmCadastro.CDSFornecedor.Open;
  dmCadastro.CDSRepresentante.Open;
  dmCadastro.CDSLocalCobranca.Open;
  PageControlCadastro.ActivePage := TabSheetCadastro;
  Dscobranca.DataSet.Open;
  dmCadastro.CDSPaises.Open;
end;

procedure TFormFornecedor.FR_FonercedorGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormFornecedor.FR_Fornec_matricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormFornecedor.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
  FR_Fonercedor.ShowReport();
end;

procedure TFormFornecedor.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
  FR_Fornec_matricial.ShowReport();
end;

procedure TFormFornecedor.TabSheetContatoBancoShow(Sender: TObject);
begin
  inherited;
//  if DSPadrao.DataSet.State in [dsEdit] then
//  begin
//  dmCadastro.CDSLocalCobranca.Locate('ID', dspadrao.DataSet.FieldByName('ID_BANCO').AsInteger, [] );
//  EdCodbanco.Text := dmcadastro.CDSLocalCobranca.FieldByName('CD_LOC_COB').AsString;
//
//  end;
end;

procedure TFormFornecedor.contacorrente(sender: tobject);
var quant ,I: integer;
begin
  inherited;
  quant :=  Length(DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').asstring);
  DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask := '';
   for I := 0 to quant do
     begin
     if I = quant-1 then
     DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask + '-#;0'
     else
     DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSFornecedor.FieldByName('NO_CTA_COR').EditMask + '#';
     end;
end;


procedure TFormFornecedor.CTAPAGFornecedor(sender: TObject); // cep cobrança
begin
    DMcadastro.CDSContasPagar.FieldByName('ID_FOR').AsInteger    := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSContasPagar.FieldByName('NM_FOR').AsString     := DSpadrao.DataSet.FieldByName('NM_FOR').AsString;
    DMcadastro.CDSContasPagar.FieldByName('NO_CNP_CPF').AsString := DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString;
    DMcadastro.CDSContasPagar.FieldByName('NM_RUA').AsString     := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSContasPagar.FieldByName('NM_BAI').AsString     := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSContasPagar.FieldByName('NO_FON').AsString     := DSpadrao.DataSet.FieldByName('NO_FON').AsString;
    DMcadastro.CDSContasPagar.FieldByName('NO_FAX').AsString     := DSpadrao.DataSet.FieldByName('NO_FAX').AsString;
    DMcadastro.CDSContasPagar.FieldByName('NM_CID').AsString     := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSContasPagar.FieldByName('UF_CID').AsString     := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSContasPagar.FieldByName('NO_CEP').AsString     := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
    close;
end;


end.
