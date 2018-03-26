unit UFrmCFOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, frxExportXLS, frxClass, frxExportPDF, frxDBSet,
  Vcl.Menus, frxDMPExport;

type
  TFormCFOP = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    DBText_ID: TDBText;
    GroupBox2: TGroupBox;
    DBEdit_CD_CFO: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBEdit_NM_CFO: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    FReport_CFOP: TfrxReport;
    frxDBDataset_CFOP: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    FR_CFOP_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    procedure DBEdit_CD_CFOKeyPress(Sender: TObject; var Key: Char);
    procedure TabCadastroShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure FReport_CFOPGetValue(const VarName: string; var Value: Variant);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure FR_CFOP_MatricialGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure DBEdit_NM_CFOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCFOP: TFormCFOP;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormCFOP.AcEditarExecute(Sender: TObject);
begin
  inherited;
DBEdit_NM_CFO.SetFocus;
DBEdit_CD_CFO.Enabled := False;
end;

procedure TFormCFOP.AcIncluirExecute(Sender: TObject);
begin
  inherited;
 DBEdit_CD_CFO.Enabled := True;
 DBEdit_CD_CFO.SetFocus;

end;

procedure TFormCFOP.BtConsultarClick(Sender: TObject);
begin
  inherited;

   if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Código CFOP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSCFOP.Close;
   DMcadastro.SQLCFOP.CommandText := '';
   DMcadastro.SQLCFOP.CommandText := 'select * from DB_CFOP where DB_CFOP.CD_CFO =:pConsulta ';
   DMcadastro.SQLCFOP.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCFOP.Open;
 end;

   if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then {consulta por Descricao CFOP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSCFOP.Close;
   DMcadastro.SQLCFOP.CommandText := '';
   DMcadastro.SQLCFOP.CommandText := 'select * from DB_CFOP where DB_CFOP.NM_CFO containing  :pConsulta  ';
   DMcadastro.SQLCFOP.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCFOP.Open;
 end;
end;

procedure TFormCFOP.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormCFOP.DBEdit_CD_CFOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormCFOP.DBEdit_NM_CFOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (cbConsulta.ItemIndex = 0 ) or (cbConsulta.ItemIndex = 2 )then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormCFOP.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FR_CFOP_Matricial.PrepareReport;
  frxXLSExport1.DefaultPath  := CAMINHOxls;
  frxXLSExport1.FileName     := 'rCFOP_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FR_CFOP_Matricial.Export(frxXLSExport1);
end;

procedure TFormCFOP.ExportarPDF1Click(Sender: TObject);
var caminhoPDF : string;
begin
  inherited;
  CaminhoPDF := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FReport_CFOP.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoPdf;
  frxPDFExport1.FileName := 'rCFOP_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FReport_CFOP.Export(frxPDFExport1);
end;

procedure TFormCFOP.FReport_CFOPGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCFOP.FR_CFOP_MatricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCFOP.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
 FReport_CFOP.ShowReport();
end;

procedure TFormCFOP.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_CFOP_Matricial.ShowReport();
end;

procedure TFormCFOP.TabCadastroShow(Sender: TObject);
begin
  inherited;

 FormCFOP.Width := 730;
 FormCFOP.Height := 430;
 FormCFOP.Top := (Screen.DesktopHeight - FormCFOP.Height) DIV 2;
 FormCFOP.Left := (Screen.DesktopWidth - FormCFOP.Width)  DIV 2;
end;

procedure TFormCFOP.TabConsultaShow(Sender: TObject);
begin
  inherited;
 FormCFOP.Width := 1014;
 FormCFOP.Height := 758;
 FormCFOP.Top := (Screen.DesktopHeight - FormCFOP.Height) DIV 2;
 FormCFOP.Left := (Screen.DesktopWidth - FormCFOP.Width)  DIV 2;
end;

end.
