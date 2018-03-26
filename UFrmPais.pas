unit UFrmPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  Vcl.DBCtrls, cxLabel, cxDBLabel, Vcl.Menus, frxClass, frxDBSet, frxExportPDF,
  frxExportXLS, frxDMPExport, dxtree, dxdbtree;

type
  TFormPaises = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    DBEdit_CD_PAI: TDBEdit;
    DBEdit_NM_PAI: TDBEdit;
    DBEdit_CD_DDI: TDBEdit;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    FReport_Paises: TfrxReport;
    frxDBDataset_Paises: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    FR_Paises_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DBText1: TDBText;
    Label1: TLabel;
    procedure AcGravarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure DBEdit_CD_PAIKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_CD_DDIKeyPress(Sender: TObject; var Key: Char);
    procedure FReport_PaisesGetValue(const VarName: string; var Value: Variant);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure FR_Paises_MatricialGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPaises: TFormPaises;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormPaises.AcGravarExecute(Sender: TObject);
begin
panel2.SetFocus;
  inherited;

end;

procedure TFormPaises.BtConsultarClick(Sender: TObject);
begin
  inherited;

   if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Nome Setor %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSPaises.Close;
   DMcadastro.SQLPaises.CommandText := '';
   DMcadastro.SQLPaises.CommandText := 'select * from DB_PAISES where DB_PAISES.NM_PAI containing  :pConsulta  ';
   DMcadastro.SQLPaises.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSPaises.Open;
 end;
end;

procedure TFormPaises.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;

   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormPaises.DBEdit_CD_DDIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormPaises.DBEdit_CD_PAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormPaises.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FReport_Paises.PrepareReport;
  frxXLSExport1.DefaultPath  := CAMINHOxls;
  frxXLSExport1.FileName     := 'rPaises_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FReport_Paises.Export(frxXLSExport1);
end;

procedure TFormPaises.ExportarPDF1Click(Sender: TObject);
var caminhoPDF : string;
begin
  inherited;
  CaminhoPDF := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FReport_Paises.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoPdf;
  frxPDFExport1.FileName := 'rPaises_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FReport_Paises.Export(frxPDFExport1);
end;

procedure TFormPaises.FReport_PaisesGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormPaises.FR_Paises_MatricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormPaises.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
FReport_Paises.ShowReport();
end;

procedure TFormPaises.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_Paises_Matricial.ShowReport();
end;

procedure TFormPaises.TabCadastroShow(Sender: TObject);
begin
  inherited;
 DBEdit_CD_PAI.SetFocus;
 FormPaises.Width  := 550;
 FormPaises.Height := 270;
 FormPaises.Top    := (Screen.DesktopHeight - FormPaises.Height) DIV 2;
 FormPaises.Left   := (Screen.DesktopWidth  - FormPaises.Width)  DIV 2;

end;

procedure TFormPaises.TabConsultaShow(Sender: TObject);
begin
  inherited;
 FormPaises.Width  := 1024;
 FormPaises.Height := 754;
 FormPaises.Top    := (Screen.DesktopHeight - FormPaises.Height) DIV 2;
 FormPaises.Left   := (Screen.DesktopWidth  - FormPaises.Width)  DIV 2;
end;

end.
