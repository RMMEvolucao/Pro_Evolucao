unit UFrmCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinGlassOceans, dxSkinOffice2013White,
  dxSkinVisualStudio2013Light, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  Vcl.Mask, Vcl.DBCtrls, dxSkinWhiteprint, dxSkinLiquidSky,
  dxSkinOffice2007Black, dxSkinOffice2013LightGray, Vcl.Menus, frxClass,
  frxDBSet, frxExportText, frxExportPDF, frxExportXLS, frxDMPExport;

type
  TFormCategoria = class(TFormCadPadrao)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboSN_IPI_ICM: TcxDBComboBox;
    DBEditNM_CTG_CLI: TDBEdit;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    FReport_Categoria: TfrxReport;
    frxDBDataset_Categoria: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    FR_Categoria_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DBEdit_CD_CTG: TDBEdit;
    DBText1: TDBText;
    Label4: TLabel;
    procedure TabConsultaShow(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AcGravarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure FReport_CategoriaGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure FR_Categoria_MatricialGetValue(const VarName: string;
      var Value: Variant);
    procedure cbConsultaSelect(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function Verifica_Campos_Em_Branco: Boolean;
  public
    { Public declarations }
  end;

var
  FormCategoria: TFormCategoria;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormCategoria.AcGravarExecute(Sender: TObject);
begin
 panel2.SetFocus;
 if Verifica_Campos_Em_Branco then begin
 inherited;

 end;
end;

procedure TFormCategoria.AcIncluirExecute(Sender: TObject);
begin
  inherited;
  FormCategoria.ComboSN_IPI_ICM.ItemIndex := 0;
end;

procedure TFormCategoria.BtConsultarClick(Sender: TObject);
begin
  inherited;

   if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Código Categoria %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.CDSCategoria.Close;
   DMcadastro.SQLCategoria.CommandText := '';
   DMcadastro.SQLCategoria.CommandText := 'select * from DB_CATEGORIA where DB_CATEGORIA.id =:pConsulta ';
   DMcadastro.SQLCategoria.ParamByName('pconsulta').AsInteger := strtoint(EdConsulta.Text);
   DMcadastro.CDSCategoria.Open;
 end;

   if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then {consulta por Código Categoria %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
   DMcadastro.CDSCategoria.Close;
   DMcadastro.SQLCategoria.CommandText := '';
   DMcadastro.SQLCategoria.CommandText := 'select * from DB_CATEGORIA where DB_CATEGORIA.NM_CTG_CLI containing  :pConsulta  ';
   DMcadastro.SQLCategoria.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCategoria.Open;
 end;
end;


procedure TFormCategoria.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormCategoria.cbConsultaSelect(Sender: TObject);
begin
  inherited;
  cbConsulta.Clear;
end;

procedure TFormCategoria.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
      if (cbConsulta.ItemIndex = 0 )then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormCategoria.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FReport_Categoria.PrepareReport;
  frxXLSExport1.DefaultPath  := CAMINHOxls;
  frxXLSExport1.FileName     := 'rCategoria_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FReport_Categoria.Export(frxXLSExport1);
end;

procedure TFormCategoria.ExportarPDF1Click(Sender: TObject);
var caminho : string;
begin
  inherited;
  CAMINHO := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FReport_Categoria.PrepareReport;
  frxPDFExport1.DefaultPath := CAMINHO;
  frxPDFExport1.FileName := 'rCategoria_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FReport_Categoria.Export(frxPDFExport1);
end;

procedure TFormCategoria.FormShow(Sender: TObject);
begin
  DMcadastro.SQLCategoria.CommandText := '';
  DMcadastro.SQLCategoria.CommandText := 'select * from DB_CATEGORIA';
  inherited;

end;

procedure TFormCategoria.FReport_CategoriaGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCategoria.FR_Categoria_MatricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCategoria.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
  FReport_Categoria.ShowReport();
end;

procedure TFormCategoria.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
  FR_Categoria_Matricial.ShowReport();
end;

procedure TFormCategoria.TabCadastroShow(Sender: TObject);
begin
  inherited;
  FormCategoria.DBEdit_CD_CTG.SetFocus;
  FormCategoria.Width := 490;
  FormCategoria.Height := 270;
  FormCategoria.Top := (Screen.DesktopHeight - FormCategoria.Height) DIV 2;
  FormCategoria.Left := (Screen.DesktopWidth - FormCategoria.Width)  DIV 2;
end;

procedure TFormCategoria.TabConsultaShow(Sender: TObject);
begin
  inherited;
  FormCategoria.Width := 1024;
  FormCategoria.Height := 754;
  FormCategoria.Top := (Screen.DesktopHeight - FormCategoria.Height) DIV 2;
  FormCategoria.Left := (Screen.DesktopWidth - FormCategoria.Width)  DIV 2;
end;



function TFormCategoria.Verifica_Campos_Em_Branco: Boolean;
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
