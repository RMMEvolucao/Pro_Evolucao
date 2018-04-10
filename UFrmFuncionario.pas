unit UFrmFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCtrls,
  cxTextEdit, cxMaskEdit, cxCalendar, cxDBEdit, Vcl.Menus, cxButtons,
  cxHyperLinkEdit, ACBrBase, ACBrValidador, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, frxDMPExport, Vcl.ToolWin;

type
  TFormFuncionario = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBComboBox_ST_FNC: TDBComboBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit_NM_FCN: TDBEdit;
    cxDBLookupComboBox_ID_SET: TcxDBLookupComboBox;
    DBEdit_NM_FUN: TDBEdit;
    cxDBDateEdit_DT_ANV: TcxDBDateEdit;
    cxDBDateEdit_DT_ADS: TcxDBDateEdit;
    cxDBDateEdit_DT_DMS: TcxDBDateEdit;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    DBEdit_NO_CEP: TDBEdit;
    btn_cons_cep: TcxButton;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit_UF_CID: TDBEdit;
    Label13: TLabel;
    DBEdit_NM_CID: TDBEdit;
    Label14: TLabel;
    DBEdit_NM_RUA: TDBEdit;
    Label21: TLabel;
    DBEdit_NM_BAI: TDBEdit;
    Label16: TLabel;
    Label20: TLabel;
    DBEdit_NO_EDR: TDBEdit;
    DBEdit_DS_CPL: TDBEdit;
    Label15: TLabel;
    DBEdit_NO_FON: TDBEdit;
    Label22: TLabel;
    DBEdit_NO_FAX: TDBEdit;
    Label23: TLabel;
    DBEdit_NO_CEL: TDBEdit;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit_E_MAIL_CTT: TDBEdit;
    cxDBHomePage: TcxDBHyperLinkEdit;
    ACBrValidador1: TACBrValidador;
    DBEdit_NO_CNP_CPF: TDBEdit;
    DBEdit_NO_RG: TDBEdit;
    Label17: TLabel;
    Label24: TLabel;
    DBEdit_ID: TDBEdit;
    cxDBDateEdit_DT_CAD: TcxDBDateEdit;
    DS_Setor: TDataSource;
    DSCep: TDataSource;
    Dscobranca: TDataSource;
    GroupBox5: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Dbedit_NM_LOC_COB: TDBEdit;
    Dbedit_CD_AGC: TDBEdit;
    DBEdit_NO_CTA_COR: TDBEdit;
    EdCodbanco: TEdit;
    Label25: TLabel;
    FR_Funcionarios: TfrxReport;
    frxDBFuncionario: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    FR_Funcionario_matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DBLookupPaises_AV1: TDBLookupComboBox;
    DS_PAISES: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cxDBDateEdit_DT_ADSExit(Sender: TObject);
    procedure btn_cons_cepClick(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure EdCodbancoExit(Sender: TObject);
    procedure DBEdit_NO_CTA_COREnter(Sender: TObject);
    procedure DBEdit_NO_CTA_CORExit(Sender: TObject);
    procedure DBEdit_NO_CTA_CORKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure EdCodbancoKeyPress(Sender: TObject; var Key: Char);
    procedure AcGravarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure BtConsultarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure FR_FuncionariosGetValue(const VarName: string;
      var Value: Variant);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure FR_Funcionario_matricialGetValue(const VarName: string;
      var Value: Variant);
  private
    procedure codbanco;
    procedure contacorrente(sender: tobject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFuncionario: TFormFuncionario;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmCep, UFrmPrincipal;

procedure TFormFuncionario.codbanco;
begin
 if Dscobranca.DataSet.Locate('id', DSpadrao.DataSet.FieldByName('id_banco').AsInteger,[]) then
    begin
     EdCodbanco.Text := Dscobranca.DataSet.FieldByName('CD_LOC_COB').AsString
    end
     else begin
     EdCodbanco.Clear;
     DMcadastro.CDSFuncionario.FieldByName('NO_CTA_COR').EditMask := '';
     Dscobranca.Enabled := false;
     end;
end;

procedure TFormFuncionario.contacorrente(sender: tobject);
var quant ,I: integer;
begin
  inherited;
  quant :=  Length(DMcadastro.CDSFuncionario.FieldByName('NO_CTA_COR').asstring);
  DMcadastro.CDSFuncionario.FieldByName('NO_CTA_COR').EditMask := '';
   for I := 0 to quant do
     begin
     if I = quant-1 then
     DMcadastro.CDSFuncionario.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSFuncionario.FieldByName('NO_CTA_COR').EditMask + '-#;0'
     else
     DMcadastro.CDSFuncionario.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSFuncionario.FieldByName('NO_CTA_COR').EditMask + '#';
     end;
end;



procedure TFormFuncionario.AcEditarExecute(Sender: TObject);
begin
  inherited;
  Dscobranca.Enabled := true;
  codbanco;
  if DSpadrao.DataSet.FieldByName('NO_CTA_COR').AsString <> ''  then
     contacorrente(sender);
end;

procedure TFormFuncionario.AcGravarExecute(Sender: TObject);
begin
    if (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
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

procedure TFormFuncionario.AcIncluirExecute(Sender: TObject);
begin
  inherited;
// Dscobranca.Enabled := false;
 dmCadastro.CDSFuncionario.FieldByName('DT_CAD').AsDateTime := date;
 dmCadastro.CDSFuncionario.FieldByName('ST_FNC').AsString := 'ATIVO';
 dmCadastro.CDSFuncionario.FieldByName('DT_ADS').AsDateTime := date;
 codbanco;
end;

procedure TFormFuncionario.BtConsultarClick(Sender: TObject);
begin
  inherited;
if (cbConsulta.ItemIndex = 0) and (Edconsulta.text <> '')
   then { consulta por Código Funcionario %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
    begin
    DMcadastro.CDSFuncionario.Close;
    DMcadastro.SQLFuncionario.CommandText := '';
    DMcadastro.SQLFuncionario.CommandText :=    'select db_Funcionario.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_Funcionario inner join db_cep on db_cep.id = db_Funcionario.id_cep '
                                               +'where db_Funcionario.ID  =:PConsulta ';
    DMcadastro.SQLFuncionario.ParamByName('pconsulta').AsInteger := StrtoInt(Edconsulta.text);
    DMcadastro.CDSFuncionario.open;
    Edconsulta.Clear;
    end;

  if (cbConsulta.ItemIndex = 1) and (Edconsulta.text <> '')
  then { consulta por Nome Funcionario %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin
    DMcadastro.CDSFuncionario.Close;
    DMcadastro.SQLFuncionario.CommandText := '';
    DMcadastro.SQLFuncionario.CommandText :=    'select db_Funcionario.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_Funcionario inner join db_cep on db_cep.id = db_Funcionario.id_cep '
                                               +'where db_Funcionario.NM_FCN containing  :pConsulta';
    DMcadastro.SQLFuncionario.ParamByName('pconsulta').AsString := Edconsulta.text;
    DMcadastro.CDSFuncionario.open;
    Edconsulta.Clear;
  end;

end;

procedure TFormFuncionario.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);

end;

procedure TFormFuncionario.btn_cons_cepClick(Sender: TObject);
begin
  inherited;
  try
  Application.CreateForm(TFormCep,FormCep);
  FormCep.showmodal;
  finally
  FormCep.Free;
  end;
  // nao esquecer de criar a procedure la no formCep
  // e criar um evento no doubleclick do dbgrid no form cep
end;

procedure TFormFuncionario.cxDBDateEdit_DT_ADSExit(Sender: TObject);
begin
  inherited;
if DBEdit_UF_CID.Text  = '' then
     begin
     btn_cons_cep.Click;
     DBEdit_NO_EDR.SetFocus;
     end;
end;

procedure TFormFuncionario.DBEdit_NO_CTA_COREnter(Sender: TObject);
begin
  inherited;
   DMcadastro.CDSFuncionario.FieldByName('NO_CTA_COR').EditMask := '';
end;

procedure TFormFuncionario.DBEdit_NO_CTA_CORExit(Sender: TObject);
begin
  inherited;
  contacorrente(sender);
end;

procedure TFormFuncionario.DBEdit_NO_CTA_CORKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8,#13]) then
     key := #0;
end;

procedure TFormFuncionario.EdCodbancoExit(Sender: TObject);
begin
  inherited;

   EdCodbanco.Text :=  Format('%.3d', [strtoint(edcodbanco.Text)]);

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
        end
        else
        dspadrao.DataSet.FieldByName('id_banco').AsInteger := DMcadastro.CDSLocalCobrancaID.AsInteger;
  end else begin
     dspadrao.DataSet.FieldByName('id_banco').Clear;
     Dscobranca.Enabled := false;
  end;
end;

procedure TFormFuncionario.EdCodbancoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9',#8,#13]) then
     key := #0;
end;

procedure TFormFuncionario.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
    if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormFuncionario.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FR_Funcionarios.PrepareReport;
  frxXLSExport1.DefaultPath   := CAMINHOxls;
  frxXLSExport1.FileName     := 'rFuncionario'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FR_Funcionarios.Export(frxXLSExport1);

end;

procedure TFormFuncionario.ExportarPDF1Click(Sender: TObject);
var caminhoPDF : string;
begin
  inherited;
  CaminhoPDF := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FR_Funcionarios.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoPDF;
  frxPDFExport1.FileName := 'rFuncionario_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FR_Funcionarios.Export(frxPDFExport1);
end;

procedure TFormFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Dscobranca.DataSet.Close;
  DSPadrao.DataSet.Close;
  DS_Setor.DataSet.Close;
  DSCep.DataSet.Close;
end;

procedure TFormFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  DMcadastro.CDSFuncionario.Close;
  DMcadastro.SQLFuncionario.CommandText := '';
  DMcadastro.SQLFuncionario.CommandText := 'SELECT db_funcionario.*,db_cep.nm_bai,db_cep.nm_cid, '
                                          +'db_cep.nm_rua,db_cep.no_cep,db_cep.uf_cid FROM db_funcionario '
                                          +'INNER JOIN db_cep ON db_cep.id = db_funcionario.id_cep';
  DMcadastro.CDSFuncionario.open;
end;

procedure TFormFuncionario.FormShow(Sender: TObject);
begin
  inherited;
  Dscobranca.DataSet.Open;
  DSPadrao.DataSet.Open;
  DS_Setor.DataSet.Open;
  DSCep.DataSet.Open;
end;

procedure TFormFuncionario.FR_FuncionariosGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormFuncionario.FR_Funcionario_matricialGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormFuncionario.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
 FR_Funcionarios.ShowReport();
end;

procedure TFormFuncionario.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
 FR_Funcionario_matricial.ShowReport();
end;

procedure TFormFuncionario.TabCadastroShow(Sender: TObject);
begin
  inherited;
 DBComboBox_ST_FNC.SetFocus;
end;

end.
