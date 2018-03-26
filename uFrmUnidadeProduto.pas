unit uFrmUnidadeProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  Vcl.DBCtrls, cxLabel, cxDBLabel, frxClass, frxDBSet, frxExportPDF, Vcl.Menus,
  frxExportXLS, frxDMPExport;

type
  TFormUnidadeProduto = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cxDBLabel1: TcxDBLabel;
    Label4: TLabel;
    DBEdit_NM_UNI_RDZ: TDBEdit;
    Label2: TLabel;
    DBEdit_NM_UNI_PDT: TDBEdit;
    Label3: TLabel;
    DBCombo_sn_frc: TDBComboBox;
    FR_UnidadePDT: TfrxReport;
    frxDBDataGeneroItem: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    FR_UnidadeProduto_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    procedure BtConsultarClick(Sender: TObject);
    procedure AcGravarExecute(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure FR_UnidadePDTGetValue(const VarName: string; var Value: Variant);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure FR_UnidadeProduto_MatricialGetValue(const VarName: string;
      var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUnidadeProduto: TFormUnidadeProduto;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormUnidadeProduto.AcEditarExecute(Sender: TObject);
begin
  inherited;
DBEdit_NM_UNI_RDZ.SetFocus;
end;

procedure TFormUnidadeProduto.AcGravarExecute(Sender: TObject);
begin
 panel2.SetFocus;
 if Verifica_Campos_Em_Branco then begin
  inherited;
 end;
end;

procedure TFormUnidadeProduto.AcIncluirExecute(Sender: TObject);
begin
  inherited;
  DBEdit_NM_UNI_RDZ.SetFocus;
  dmCadastro.CDSUnidadePDT.FieldByName('SN_FRC').AsString := 'SIM';
end;

procedure TFormUnidadeProduto.BtConsultarClick(Sender: TObject);
begin
  inherited;
 if (cbConsulta.ItemIndex = 0) and (Edconsulta.text <> '')
  then { consulta por Código Genero Item %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSUnidadePDT.Close;
    DMcadastro.SQLUnidadePDT.CommandText := '';
    DMcadastro.SQLUnidadePDT.CommandText := 'select * from DB_UNIDADEPDT where DB_UNIDADEPDT.ID  =:PConsulta ';
    DMcadastro.SQLUnidadePDT.ParamByName('PConsulta').AsInteger := strtoint(Edconsulta.text);
    DMcadastro.CDSUnidadePDT.open;
  end;

  if (cbConsulta.ItemIndex = 1) and (Edconsulta.text <> '')
  then { consulta por Descriçao Genero Item %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSUnidadePDT.Close;
    DMcadastro.SQLUnidadePDT.CommandText := '';
    DMcadastro.SQLUnidadePDT.CommandText := 'select * from DB_UNIDADEPDT where DB_UNIDADEPDT.NM_UNI_PDT  containing :PConsulta ';
    DMcadastro.SQLUnidadePDT.ParamByName('PConsulta').AsString := Edconsulta.text;
    DMcadastro.CDSUnidadePDT.open;
  end;
end;

procedure TFormUnidadeProduto.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormUnidadeProduto.EdconsultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormUnidadeProduto.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FR_UnidadePDT.PrepareReport;
  frxXLSExport1.DefaultPath  := CAMINHOxls;
  frxXLSExport1.FileName     := 'rUnidadePDT_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FR_UnidadePDT.Export(frxXLSExport1);

end;

procedure TFormUnidadeProduto.ExportarPDF1Click(Sender: TObject);
var caminho : string;
begin
  inherited;
  CAMINHO := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FR_UnidadePDT.PrepareReport;
  frxPDFExport1.DefaultPath := CAMINHO;
  frxPDFExport1.FileName := 'rUnidadePDT'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FR_UnidadePDT.Export(frxPDFExport1);
end;

procedure TFormUnidadeProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
dmCadastro.CDSUnidadePDT.Close;
end;

procedure TFormUnidadeProduto.FormCreate(Sender: TObject);
begin
  inherited;
dmCadastro.CDSUnidadePDT.Open;
cbConsulta.ItemIndex := 0;
end;

procedure TFormUnidadeProduto.FR_UnidadePDTGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormUnidadeProduto.FR_UnidadeProduto_MatricialGetValue(
  const VarName: string; var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormUnidadeProduto.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
FR_UnidadePDT.ShowReport();
end;

procedure TFormUnidadeProduto.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_UnidadeProduto_Matricial.ShowReport;
end;

procedure TFormUnidadeProduto.TabCadastroShow(Sender: TObject);
begin
  inherited;
 FormUnidadeProduto.Width := 730;
 FormUnidadeProduto.Height := 260;
 FormUnidadeProduto.Top := (Screen.DesktopHeight - FormUnidadeProduto.Height) DIV 2;
 FormUnidadeProduto.Left := (Screen.DesktopWidth - FormUnidadeProduto.Width)  DIV 2;
end;

procedure TFormUnidadeProduto.TabConsultaShow(Sender: TObject);
begin
  inherited;
 FormUnidadeProduto.Width := 1024;
 FormUnidadeProduto.Height := 768;
 FormUnidadeProduto.Top := (Screen.DesktopHeight - FormUnidadeProduto.Height) DIV 2;
 FormUnidadeProduto.Left := (Screen.DesktopWidth - FormUnidadeProduto.Width)  DIV 2;

end;

end.
