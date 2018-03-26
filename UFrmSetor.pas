unit UFrmSetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.DBCtrls, frxClass, frxDBSet, Vcl.Menus, frxExportPDF,
  frxExportXLS, frxDMPExport;

type
  TFormCadSetor = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbe: TDBEdit;
    Label2: TLabel;
    DBEdit_NM_SET: TDBEdit;
    FReport_Setor: TfrxReport;
    frxDBDataset_Categoria: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    frxXLSExport1: TfrxXLSExport;
    FR_Setor_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    procedure AcGravarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FReport_SetorGetValue(const VarName: string; var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure FR_Setor_MatricialGetValue(const VarName: string;
      var Value: Variant);
    procedure BtConsultarClick(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadSetor: TFormCadSetor;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormCadSetor.AcGravarExecute(Sender: TObject);
begin
 panel2.SetFocus;

  inherited;

end;

procedure TFormCadSetor.BtConsultarClick(Sender: TObject);
begin
  inherited;
if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Código Setor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSSetor.Close;
   DMcadastro.SQLSetor.CommandText := '';
   DMcadastro.SQLSetor.CommandText := 'select * from DB_Setor where DB_Setor.ID  =:PConsulta';
   DMcadastro.SQLSetor.ParamByName('pconsulta').AsInteger := strtoint(EdConsulta.Text);
   DMcadastro.CDSSetor.Open;
 end;

   if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then {consulta por Nome Setor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSSetor.Close;
   DMcadastro.SQLSetor.CommandText := '';
   DMcadastro.SQLSetor.CommandText := 'select * from DB_SETOR where DB_SETOR.NM_SET containing  :pConsulta  ';
   DMcadastro.SQLSetor.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSSetor.Open;
 end;
end;

procedure TFormCadSetor.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormCadSetor.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormCadSetor.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FReport_Setor.PrepareReport;
  frxXLSExport1.DefaultPath  := CAMINHOxls;
  frxXLSExport1.FileName     := 'rSetorTrabalho_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FReport_Setor.Export(frxXLSExport1);

end;

procedure TFormCadSetor.ExportarPDF1Click(Sender: TObject);
var caminho : string;
begin
  inherited;
  CAMINHO := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FReport_Setor.PrepareReport;
  frxPDFExport1.DefaultPath := CAMINHO;
  frxPDFExport1.FileName := 'rSetorTrabalho_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FReport_Setor.Export(frxPDFExport1);

end;

procedure TFormCadSetor.FormShow(Sender: TObject);
begin
  inherited;
DMCadastro.CDSSetor.Close;
DMcadastro.SQLSetor.CommandText := '';
DMcadastro.SQLSetor.CommandText := 'select * from DB_SETOR';
DMCadastro.CDSSetor.Open;
end;

procedure TFormCadSetor.FReport_SetorGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCadSetor.FR_Setor_MatricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCadSetor.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
FReport_Setor.ShowReport;
end;

procedure TFormCadSetor.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_Setor_Matricial.ShowReport();
end;

end.
