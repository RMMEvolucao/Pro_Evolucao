unit uFrmCores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, frxExportXLS, frxClass, frxExportPDF, frxDBSet,
  Vcl.Menus, frxDMPExport;

type
  TFormCores = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    DBText_ID: TDBText;
    DBEdit_NM_COR: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    FReport_Cores: TfrxReport;
    frxDBDataset_Cores: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    FR_Cores_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    procedure FormShow(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure FReport_CoresGetValue(const VarName: string; var Value: Variant);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure FR_Cores_MatricialGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCores: TFormCores;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormCores.BtConsultarClick(Sender: TObject);
begin
  inherited;
 if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Código Cor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSCores.Close;
   DMcadastro.SQLCores.CommandText := '';
   DMcadastro.SQLCores.CommandText := 'select * from DB_COR where DB_COR.id =:pConsulta ';
   DMcadastro.SQLCores.ParamByName('pconsulta').AsInteger := strtoint(EdConsulta.Text);
   DMcadastro.CDSCores.Open;
 end;

   if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then {consulta por Nome da Cor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSCores.Close;
   DMcadastro.SQLCores.CommandText := '';
   DMcadastro.SQLCores.CommandText := 'select * from DB_COR where DB_COR.NM_COR containing  :pConsulta  ';
   DMcadastro.SQLCores.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCores.Open;
 end;
end;

procedure TFormCores.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormCores.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if (cbConsulta.ItemIndex = 0 )then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormCores.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FReport_Cores.PrepareReport;
  frxXLSExport1.DefaultPath  := CAMINHOxls;
  frxXLSExport1.FileName     := 'rCores_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FReport_Cores.Export(frxXLSExport1);
end;

procedure TFormCores.ExportarPDF1Click(Sender: TObject);
var caminho : string;
begin
  inherited;
  CAMINHO := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FReport_Cores.PrepareReport;
  frxPDFExport1.DefaultPath := CAMINHO;
  frxPDFExport1.FileName := 'rCores_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FReport_Cores.Export(frxPDFExport1);

end;

procedure TFormCores.FormShow(Sender: TObject);
begin
DMcadastro.SQLCores.CommandText := '';
DMcadastro.SQLCores.CommandText := 'select * from DB_COR';
  inherited;

end;

procedure TFormCores.FReport_CoresGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCores.FR_Cores_MatricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCores.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
FReport_Cores.ShowReport();
end;

procedure TFormCores.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_Cores_Matricial.ShowReport();
end;

procedure TFormCores.TabCadastroShow(Sender: TObject);
begin
  inherited;
 FormCores.DBEdit_NM_COR.SetFocus;
 FormCores.Width := 550;
 FormCores.Height := 270;
 FormCores.Top := (Screen.DesktopHeight - FormCores.Height) DIV 2;
 FormCores.Left := (Screen.DesktopWidth - FormCores.Width)  DIV 2;
end;

procedure TFormCores.TabConsultaShow(Sender: TObject);
begin
  inherited;
 FormCores.Width := 1014;
 FormCores.Height := 754;
 FormCores.Top := (Screen.DesktopHeight - FormCores.Height) DIV 2;
 FormCores.Left := (Screen.DesktopWidth - FormCores.Width)  DIV 2;
end;

end.
