unit UFrmRepresentante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Vcl.StdCtrls, Vcl.DBCtrls, Data.SqlExpr, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinGlassOceans,
  dxSkinOffice2013White, dxSkinWhiteprint, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxHyperLinkEdit, cxCalendar, ACBrBase,
  ACBrValidador,
  Datasnap.DBClient, cxMemo, cxGroupBox, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, Vcl.Menus, frxClass,
  frxDBSet, frxExportPDF, frxExportXLSX, frxExportXLS, frxExportText,
  frxDMPExport;

type
  TFormRepresentante = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBEdit_ID: TDBEdit;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit_NM_REP: TDBEdit;
    DBEdit_NM_REP_RAZ: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    cxDBHomePage: TcxDBHyperLinkEdit;
    Label19: TLabel;
    DBEdit_E_MAIL: TDBEdit;
    DSCep: TDataSource;
    ACBrValidador1: TACBrValidador;
    DBEdit_NO_CNP_CPF: TcxDBTextEdit;
    DBDateEdit_DT_CAD: TcxDBDateEdit;
    DBComboST_REP: TDBComboBox;
    CDS_Cep: TClientDataSet;
    CDS_CepNO_CEP: TStringField;
    CDS_CepNM_RUA: TStringField;
    CDS_CepNM_BAI: TStringField;
    CDS_CepNM_CID: TStringField;
    CDS_CepUF_CID: TStringField;
    CDS_CepCEP_ID: TIntegerField;
    cxGroupBox1: TcxGroupBox;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit_NM_RUA: TDBEdit;
    DBEdit_NM_BAI: TDBEdit;
    DBEdit_NM_CID: TDBEdit;
    DBEdit_NO_FON: TDBEdit;
    DBEdit_NO_FAX: TDBEdit;
    DBEdit_NO_CEL: TDBEdit;
    DBEdit_NO_INS_EST: TDBEdit;
    DBEdit_NO_EDR: TDBEdit;
    DBEdit_DS_CPL: TDBEdit;
    DBEdit_UF_CID: TDBEdit;
    TabSheet2: TTabSheet;
    cxDBMemo_DS_OBS: TcxDBMemo;
    DBEdit1: TDBEdit;
    btn_cons_cep: TSpeedButton;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxDBRepresentante: TfrxDBDataset;
    FReport_Representante: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    FR_Rep_matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    procedure AcIncluirExecute(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure CepCadastro(Sender: TObject);
    procedure DBEdit_NO_EDRKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_NO_INS_ESTExit(Sender: TObject);
    procedure AcGravarExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure btn_cons_cepClick(Sender: TObject);
    procedure cxDBMemo_DS_OBSKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure FReport_RepresentanteGetValue(const VarName: string;
      var Value: Variant);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure limpaConsulta(sender : tobject);
    procedure AcCancelarExecute(Sender: TObject);
    procedure FR_Rep_matricialGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure DBEdit_NO_FONExit(Sender: TObject);
    function Verifica_Campos_Em_Branco: Boolean;
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRepresentante: TFormRepresentante;

implementation

{$R *.dfm}

uses UDmCadastro, UFuncoes, UFrmCep, UFrmPrincipal;

procedure TFormRepresentante.CepCadastro(Sender: TObject);
var
  query: TSQLQuery;
begin

end;

procedure TFormRepresentante.AcCancelarExecute(Sender: TObject);
begin
  inherited;
limpaConsulta(sender);
end;

procedure TFormRepresentante.AcEditarExecute(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 0;
  DBComboST_REP.SetFocus;

end;

procedure TFormRepresentante.AcGravarExecute(Sender: TObject);
begin
//panel2.SetFocus;
//BEdit_NO_CNP_CPF.OnExit(Sender);
//if Verifica_Campos_Em_Branco then begin

  inherited;
limpaConsulta(sender);
//end;
end;

procedure TFormRepresentante.AcIncluirExecute(Sender: TObject);
begin
  inherited;
  CDS_Cep.Close;
  PageControl2.ActivePageIndex := 0;
  FormRepresentante.DBComboST_REP.SetFocus;
  DMcadastro.CDSRepresentanteDT_CAD.AsDateTime := now;
  DMcadastro.CDSRepresentanteST_REP.AsString := 'ATIVO';

end;

procedure TFormRepresentante.BtConsultarClick(Sender: TObject);
begin
  inherited;

  if (cbConsulta.ItemIndex = 0) and (Edconsulta.text <> '')
  then { consulta por Código Categoria %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin


    DMcadastro.CDSRepresentante.Close;
    DMcadastro.SQLRepresentante.CommandText := '';
    DMcadastro.SQLRepresentante.CommandText := 'select first 50  db_representante.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_representante inner join db_cep on db_cep.id = db_representante.id_cep '
                                               +'where DB_REPRESENTANTE.ID  >=:PConsulta ';
    DMcadastro.SQLRepresentante.ParamByName('pconsulta').AsInteger := strtoint(Edconsulta.text);
    DMcadastro.CDSRepresentante.open;
  end;

  if (cbConsulta.ItemIndex = 1) and (Edconsulta.text <> '')
  then { consulta por Código Categoria %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

   DMcadastro.CDSRepresentante.Close;
    DMcadastro.SQLRepresentante.CommandText := '';
    DMcadastro.SQLRepresentante.CommandText := 'select db_representante.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_representante inner join db_cep on db_cep.id = db_representante.id_cep '
                                               +'where DB_REPRESENTANTE.NM_REP  containing :PConsulta';
    DMcadastro.SQLRepresentante.ParamByName('pconsulta').AsString := Edconsulta.text;
    DMcadastro.CDSRepresentante.open;
  end;
end;

procedure TFormRepresentante.cxDBMemo_DS_OBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
Key := AnsiUpperCase( Key )[1];
end;

procedure TFormRepresentante.cxDBTextEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormRepresentante.DBEdit_NO_EDRKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormRepresentante.DBEdit_NO_FONExit(Sender: TObject);
begin
//if Length(DSpadrao.DataSet.FieldByName('NO_FON').AsString) <> 10 then
//  BEGIN
//    ShowMessage('Número de Telefone Inválido, favor informar um número válido!');
//    DSpadrao.DataSet.FieldByName('NO_FON').Clear;
//  END;

  inherited;
end;

procedure TFormRepresentante.DBEdit_NO_INS_ESTExit(Sender: TObject);
begin
  inherited;
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
    end;
  end
  else
  begin
    showmessage
      ('Favor adcionar o CEP antes de adcionar a Inscrição Estadual');
  end;

end;

procedure TFormRepresentante.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormRepresentante.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FReport_Representante.PrepareReport;
  frxXLSExport1.DefaultPath   := CAMINHOxls;
  frxXLSExport1.FileName     := 'rRepresentante_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FReport_Representante.Export(frxXLSExport1);

end;

procedure TFormRepresentante.ExportarPDF1Click(Sender: TObject);
var caminhoRep : string;
begin
  inherited;
  CaminhoRep := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FReport_Representante.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoRep;
  frxPDFExport1.FileName := 'rRepresentante_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FReport_Representante.Export(frxPDFExport1);
end;

procedure TFormRepresentante.FormCreate(Sender: TObject);
begin
  inherited;
    DMcadastro.CDSRepresentante.Close;
    DMcadastro.SQLRepresentante.CommandText :=  '';
    DMcadastro.SQLRepresentante.CommandText :=  'select db_representante.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_representante inner join db_cep on db_cep.id = db_representante.id_cep ';
end;

procedure TFormRepresentante.FReport_RepresentanteGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormRepresentante.FR_Rep_matricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormRepresentante.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
FReport_Representante.ShowReport();
end;

procedure TFormRepresentante.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_Rep_matricial.ShowReport();
end;

procedure TFormRepresentante.limpaConsulta(sender: tobject);
begin
   DSpadrao.DataSet.Close;
   DMcadastro.sqlRepresentante.CommandText := '';
   DMcadastro.sqlRepresentante.CommandText := 'select db_representante.*,db_cep.nm_bai,db_cep.nm_cid, '+
                                              'db_cep.nm_rua,db_cep.no_cep,db_cep.uf_cid from db_representante '+
                                              'inner join db_cep on db_cep.id = db_representante.id_cep';

   //DMcadastro.CDSRepresentante.Params.Clear;
   DSpadrao.DataSet.open;
end;

procedure TFormRepresentante.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
  vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormRepresentante.btn_cons_cepClick(Sender: TObject);
begin
  inherited;
  try
  Application.CreateForm(TFormCep,FormCep);
  formCep.showmodal;
  finally
   formCep.Free;

  end;

end;

function TFormRepresentante.Verifica_Campos_Em_Branco: Boolean;
var
  I: Integer;

begin
  Result := True;
  for I := 0 to DSpadrao.DataSet.FieldCount - 1 do
    if DSpadrao.DataSet.Fields[I].Required then
      if (DSpadrao.DataSet.Fields[I].IsNull) or
        (DSpadrao.DataSet.Fields[I].AsString = '') then
      begin
        beep;
        MessageDlg('Preencha o campo "' + DSpadrao.DataSet.Fields[I]
          .DisplayLabel + '"', mtInformation, [mbOk], 0);
        Result := False;
        DSpadrao.DataSet.Fields[I].FocusControl;
        Break;
      end;
end;

end.
