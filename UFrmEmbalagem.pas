unit UFrmEmbalagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  Vcl.DBCtrls, cxLabel, cxDBLabel, frxClass, frxDBSet, Vcl.Menus, frxExportPDF,
  frxExportXLS, frxDMPExport;

type
  TFormEmbalagem = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    cxDBLabel_ID: TcxDBLabel;
    DBEdit_CD_EMB_PDT: TDBEdit;
    DBEdit_NM_EMB_PDT: TDBEdit;
    FR_Embalagem: TfrxReport;
    frxDS_Embalagem: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    FR_Embalagem_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure AcGravarExecute(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabCadastroShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FR_EmbalagemGetValue(const VarName: string; var Value: Variant);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure FR_Embalagem_MatricialGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmbalagem: TFormEmbalagem;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormEmbalagem.AcEditarExecute(Sender: TObject);
begin
  inherited;
DBEdit_CD_EMB_PDT.SetFocus;
end;

procedure TFormEmbalagem.AcGravarExecute(Sender: TObject);
begin
 panel2.SetFocus;
   inherited;

end;

procedure TFormEmbalagem.AcIncluirExecute(Sender: TObject);
begin
  inherited;
DBEdit_CD_EMB_PDT.SetFocus;
end;

procedure TFormEmbalagem.btnConsultarClick(Sender: TObject);
begin
  inherited;
if (cbConsulta.ItemIndex = 0) and (Edconsulta.text <> '')
  then { consulta por Código Genero Item %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSEmbalagem.Close;
    DMcadastro.SQLEmbalagem.CommandText := '';
    DMcadastro.SQLEmbalagem.CommandText := 'select * from DB_Embalagem where DB_Embalagem.ID  =:PConsulta ';
    DMcadastro.SQLEmbalagem.ParamByName('PConsulta').AsInteger := strtoint(Edconsulta.text);
    DMcadastro.CDSEmbalagem.open;
  end;

  if (cbConsulta.ItemIndex = 1) and (Edconsulta.text <> '')
  then { consulta por Descriçao Genero Item %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSEmbalagem.Close;
    DMcadastro.SQLEmbalagem.CommandText := '';
    DMcadastro.SQLEmbalagem.CommandText := 'select * from DB_Embalagem where DB_Embalagem.NM_EMB_PDT  containing :PConsulta ';
    DMcadastro.SQLEmbalagem.ParamByName('PConsulta').AsString := Edconsulta.text;
    DMcadastro.CDSEmbalagem.open;
  end;
end;

procedure TFormEmbalagem.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormEmbalagem.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormEmbalagem.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FR_Embalagem.PrepareReport;
  frxXLSExport1.DefaultPath  := CAMINHOxls;
  frxXLSExport1.FileName     := 'rEmbalagem_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FR_Embalagem.Export(frxXLSExport1);

end;

procedure TFormEmbalagem.ExportarPDF1Click(Sender: TObject);
var caminho : string;
begin
  inherited;
  CAMINHO := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FR_Embalagem.PrepareReport;
  frxPDFExport1.DefaultPath := CAMINHO;
  frxPDFExport1.FileName := 'rEmbalagem'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FR_Embalagem.Export(frxPDFExport1);

end;

procedure TFormEmbalagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
dmCadastro.CDSEmbalagem.Close;
end;

procedure TFormEmbalagem.FormCreate(Sender: TObject);
begin
  inherited;
dmCadastro.CDSEmbalagem.Open;
cbConsulta.ItemIndex := 0;
end;

procedure TFormEmbalagem.FR_EmbalagemGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormEmbalagem.FR_Embalagem_MatricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormEmbalagem.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
FR_Embalagem.ShowReport;
end;

procedure TFormEmbalagem.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_Embalagem_Matricial.ShowReport;
end;

procedure TFormEmbalagem.TabCadastroShow(Sender: TObject);
begin
  inherited;
 FormEmbalagem.Width := 730;
 FormEmbalagem.Height := 230;
 FormEmbalagem.Top := (Screen.DesktopHeight - FormEmbalagem.Height) DIV 2;
 FormEmbalagem.Left := (Screen.DesktopWidth - FormEmbalagem.Width)  DIV 2;
end;

procedure TFormEmbalagem.TabConsultaShow(Sender: TObject);
begin
  inherited;
 FormEmbalagem.Width := 1004;
 FormEmbalagem.Height := 758;
 FormEmbalagem.Top := (Screen.DesktopHeight - FormEmbalagem.Height) DIV 2;
 FormEmbalagem.Left := (Screen.DesktopWidth - FormEmbalagem.Width)  DIV 2;
end;

end.
