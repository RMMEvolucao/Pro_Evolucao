unit UFrmGeneroItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  Vcl.DBCtrls, cxLabel, cxDBLabel, frxClass, frxDBSet, Vcl.Menus, frxExportText,
  frxExportXLS, frxExportPDF, frxDMPExport, frxHTTPClient, Vcl.ToolWin;

type
  TFormGeneroItem = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cxDB_NM_GEN_ITE: TcxDBLabel;
    Label2: TLabel;
    DBEdit_NM_GEN_ITE: TDBEdit;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    FR_GeneroItem: TfrxReport;
    frxDBDataGeneroItem: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frx_GeneroItemMatrix: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    procedure TabCadastroShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure AcCancelarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure FR_GeneroItemGetValue(const VarName: string; var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure frx_GeneroItemMatrixPreview(Sender: TObject);
    procedure AcFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormGeneroItem: TFormGeneroItem;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormGeneroItem.AcCancelarExecute(Sender: TObject);
begin
  inherited;
  DSPadrao.DataSet.Close;
  DMcadastro.sqlGeneroItem.CommandText := '';
  DMcadastro.sqlGeneroItem.CommandText := 'select * from DB_GEN_ITEM';
  DSPadrao.DataSet.Open;
end;

procedure TFormGeneroItem.AcFecharExecute(Sender: TObject);
begin
  inherited;
  DSPadrao.DataSet.Close;
  DMcadastro.sqlGeneroItem.CommandText := '';
  DMcadastro.sqlGeneroItem.CommandText := 'select * from DB_GEN_ITEM';
//  DSPadrao.DataSet.Open;
end;

procedure TFormGeneroItem.BtConsultarClick(Sender: TObject);
begin
  inherited;
if (cbConsulta.ItemIndex = 0) and (Edconsulta.text <> '')
  then { consulta por Código Genero Item %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSGeneroItem.Close;
    DMcadastro.SQLGeneroItem.CommandText := '';
    DMcadastro.SQLGeneroItem.CommandText := 'select * from DB_GEN_ITEM where DB_GEN_ITEM.ID  =:PConsulta ';
    DMcadastro.SQLGeneroItem.ParamByName('PConsulta').AsInteger := strtoint(Edconsulta.text);
    DMcadastro.CDSGeneroItem.open;
  end;

  if (cbConsulta.ItemIndex = 1) and (Edconsulta.text <> '')
  then { consulta por Descriçao Genero Item %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSGeneroItem.Close;
    DMcadastro.SQLGeneroItem.CommandText := '';
    DMcadastro.SQLGeneroItem.CommandText := 'select * from DB_GEN_ITEM where DB_GEN_ITEM.NM_GEN_ITE  containing :PConsulta ';
    DMcadastro.SQLGeneroItem.ParamByName('PConsulta').AsString := Edconsulta.text;
    DMcadastro.CDSGeneroItem.open;
  end;
end;

procedure TFormGeneroItem.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormGeneroItem.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormGeneroItem.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FR_GeneroItem.PrepareReport;
  frxXLSExport1.DefaultPath   := CAMINHOxls;
  frxXLSExport1.FileName     := 'rGeneroItem_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FR_GeneroItem.Export(frxXLSExport1);

end;

procedure TFormGeneroItem.ExportarPDF1Click(Sender: TObject);
var caminhoGenero : string;
begin
  inherited;
  CaminhoGenero := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FR_GeneroItem.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoGenero;
  frxPDFExport1.FileName := 'rGeneroItem_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FR_GeneroItem.Export(frxPDFExport1);

end;

procedure TFormGeneroItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dmCadastro.CDSGeneroItem.Open;
  dmCadastro.SQLGeneroItem.CommandText := '';
end;

procedure TFormGeneroItem.FormCreate(Sender: TObject);
begin
  inherited;
 dmCadastro.CDSGeneroItem.open;
 dmCadastro.SQLGeneroItem.CommandText := '';
 dmCadastro.SQLGeneroItem.CommandText := 'select * from DB_GEN_ITEM';
 cbConsulta.ItemIndex := 0;

end;

procedure TFormGeneroItem.frx_GeneroItemMatrixPreview(Sender: TObject);
begin
  inherited;
frxDotMatrixExport1.EscModel := 1;
// frxReport1.Variables['datapro']   := quotedstr(FormGeradorEtiquetaspro.EdDataPro.Text);
end;

procedure TFormGeneroItem.FR_GeneroItemGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormGeneroItem.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
FR_GeneroItem.ShowReport();
end;

procedure TFormGeneroItem.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
  frx_GeneroItemMatrix.ShowReport;

end;

procedure TFormGeneroItem.TabCadastroShow(Sender: TObject);
begin
  inherited;
// FormGeneroItem.DBEdit_NM_GEN_ITE.SetFocus;
// FormGeneroItem.Width := 730;
// FormGeneroItem.Height := 230;
// FormGeneroItem.Top := (Screen.DesktopHeight - FormGeneroItem.Height) DIV 2;
// FormGeneroItem.Left := (Screen.DesktopWidth - FormGeneroItem.Width)  DIV 2;
end;

procedure TFormGeneroItem.TabConsultaShow(Sender: TObject);
begin
  inherited;
// FormGeneroItem.Width := 1024;
// FormGeneroItem.Height := 768;
// FormGeneroItem.Top := (Screen.DesktopHeight - FormGeneroItem.Height) DIV 2;
// FormGeneroItem.Left := (Screen.DesktopWidth - FormGeneroItem.Width)  DIV 2;
end;

end.
