unit UFrmUniFederativa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky,
  dxSkinOffice2007Black, dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light,
  dxSkinWhiteprint, cxCurrencyEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, MoneyEdit, dbmnyed, AdvEdit, advlued, DBAdvLe,
  Vcl.Menus, frxExportXLS, frxClass, frxExportPDF, frxDBSet, frxDMPExport,
  Vcl.ToolWin;

type
  TFormUnidadeFederativa = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit_CD_UNF: TDBEdit;
    DBEdit_NM_UNF: TDBEdit;
    DBEdit_CD_UNF_IBG: TDBEdit;
    Label1: TLabel;
    DBCombo_SN_MVA: TDBComboBox;
    cxDBCalc_PC_RJT: TcxDBCalcEdit;
    Label5: TLabel;
    FReport_UFederativa: TfrxReport;
    frxDBDataset_UFederativa: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    FR_UFederativa_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    Label6: TLabel;
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure DBEdit_CD_UNF_IBGKeyPress(Sender: TObject; var Key: Char);
    procedure TabCadastroShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure FReport_UFederativaGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure FR_UFederativa_MatricialGetValue(const VarName: string;
      var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUnidadeFederativa: TFormUnidadeFederativa;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormUnidadeFederativa.AcEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit_CD_UNF.Enabled := False;
 DBEdit_NM_UNF.SetFocus;
end;

procedure TFormUnidadeFederativa.AcIncluirExecute(Sender: TObject);
begin
  inherited;
DBEdit_CD_UNF.Enabled := true;
DBEdit_CD_UNF.SetFocus;
dmCadastro.CDSUFederativa.FieldByName('SN_MVA').AsString := 'NAO';
end;

procedure TFormUnidadeFederativa.BtConsultarClick(Sender: TObject);
begin
  inherited;

   if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Nome Unidade Federativa %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSUFederativa.Close;
   DMcadastro.SQLUFederativa.CommandText := '';
   DMcadastro.SQLUFederativa.CommandText := 'select * from DB_UFEDERATIVA where DB_UFEDERATIVA.NM_UNF containing  :pConsulta  ';
   DMcadastro.SQLUFederativa.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSUFederativa.Open;
 end;
end;

procedure TFormUnidadeFederativa.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;

   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormUnidadeFederativa.DBEdit_CD_UNF_IBGKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormUnidadeFederativa.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FReport_UFederativa.PrepareReport;
  frxXLSExport1.DefaultPath  := CAMINHOxls;
  frxXLSExport1.FileName     := 'rUFederativa_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FReport_UFederativa.Export(frxXLSExport1);
end;

procedure TFormUnidadeFederativa.ExportarPDF1Click(Sender: TObject);
var caminhoPDF : string;
begin
  inherited;
  CaminhoPDF := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FReport_UFederativa.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoPdf;
  frxPDFExport1.FileName := 'rUFederativa_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FReport_UFederativa.Export(frxPDFExport1);
end;

procedure TFormUnidadeFederativa.FReport_UFederativaGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
  if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormUnidadeFederativa.FR_UFederativa_MatricialGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormUnidadeFederativa.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
FReport_UFederativa.ShowReport();
end;

procedure TFormUnidadeFederativa.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_UFederativa_Matricial.ShowReport();
end;

procedure TFormUnidadeFederativa.TabCadastroShow(Sender: TObject);
begin
  inherited;
// FormUnidadeFederativa.Width  := 550;
// FormUnidadeFederativa.Height := 300;
// FormUnidadeFederativa.Top    := (Screen.DesktopHeight - FormUnidadeFederativa.Height) DIV 2;
// FormUnidadeFederativa.Left   := (Screen.DesktopWidth  - FormUnidadeFederativa.Width)  DIV 2;
end;

procedure TFormUnidadeFederativa.TabConsultaShow(Sender: TObject);
begin
  inherited;
//// FormUnidadeFederativa.Width  := 1014;
//// FormUnidadeFederativa.Height := 754;
//// FormUnidadeFederativa.Top    := (Screen.DesktopHeight - FormUnidadeFederativa.Height) DIV 2;
// FormUnidadeFederativa.Left   := (Screen.DesktopWidth  - FormUnidadeFederativa.Width)  DIV 2;
end;

end.
